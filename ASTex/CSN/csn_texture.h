#ifndef CSN_TEXTURE_H_
#define CSN_TEXTURE_H_

#include <Eigen/Eigen>
#include "Algo/ProceduralNoiseFiltering/gaussian_transfer.h"
#include "ASTex/utils.h"
#include "ASTex/pca.h"
#include <cmath>

namespace ASTex
{

namespace CSN
{

template<typename I>
class CSN_Texture
{
public:

	using ImageType				= I;
	using PixelType				= typename ImageType::PixelType;
	using DataType				= typename ImageType::DataType;
	using PixelPosType			= itk::Index<2>;
	using PcaImageType			= ImageRGB<DataType>;
	using PcaPixelType			= typename PcaImageType::PixelType;
	using PcaType				= PCA<DataType>;
	using GaussianTransferType	= Gaussian_transfer<PcaImageType>;
	using LutType				= typename GaussianTransferType::LutType;

	void setTexture(const ImageType &texture);
	void setCycles(const Eigen::Vector2f &firstCycle, const Eigen::Vector2f &secondCycle);

	ImageType synthesize(unsigned width, unsigned height) const;

private:

	PcaPixelType proceduralTilingAndBlending(const PcaImageType &image, Eigen::Vector2d uv) const;
	void TriangleGrid(Eigen::Vector2d uv, float &w1, float &w2, float &w3,
						Eigen::Vector2i &vertex1, Eigen::Vector2i &vertex2, Eigen::Vector2i &vertex3) const;
	Eigen::Vector2d hash(const Eigen::Vector2d &p) const;
	Eigen::Vector2d floor(const Eigen::Vector2d &v) const;
	Eigen::Vector2d fract(const Eigen::Vector2d &v) const;

	ImageType m_texture;
	Eigen::Vector2f m_cycles[2];
};

template<typename I>
void CSN_Texture<I>::setTexture(const ImageType &texture)
{
	m_texture = texture;
}

template<typename I>
void CSN_Texture<I>::setCycles(const Eigen::Vector2f &firstCycle, const Eigen::Vector2f &secondCycle)
{
	m_cycles[0] = firstCycle;
	m_cycles[1] = secondCycle;
}

template<typename I>
typename CSN_Texture<I>::ImageType CSN_Texture<I>::synthesize(unsigned width, unsigned height) const
{

	unsigned pixelSize = sizeof(PixelType)/sizeof(DataType);
	assert(pixelSize <= 3 && "CSN_Texture::synthesize: Cannot use PCA with images of dimensions higher than 3!");
	ImageType output;
	output.initItk(width, height, true);
	LutType lut;
	lut.initItk(m_texture.width(), m_texture.height());
	DataType *dataPix;
	const DataType *dataPixConst;

	auto toPcaImageType = [&] (const ImageType &texture) -> PcaImageType
	{
		PcaImageType pcaTexture;
		pcaTexture.initItk(texture.width(), texture.height());
		pcaTexture.for_all_pixels([&] (PcaPixelType &pcaPix, int x, int y)
		{
			const PixelType &pix = texture.pixelAbsolute(x, y);
			dataPixConst = reinterpret_cast<const DataType *>(&pix);
			if(pixelSize == 3)
			{ //image is rgb
				for(unsigned i=0; i<3; ++i)
				{
					pcaPix[i] = dataPixConst[i];
				}
			}
			else
			{ //image is most likely gray
				for(unsigned i=0; i<3; ++i)
				{
					unsigned j=i%pixelSize;
					pcaPix[i] = dataPixConst[j];
				}
			}
		});
		return pcaTexture;
	};

	auto fromPcaImageType = [&] (const PcaImageType &pcaTexture) -> ImageType
	{
		ImageType texture;
		texture.initItk(pcaTexture.width(), pcaTexture.height());
		pcaTexture.for_all_pixels([&] (const PcaPixelType &pcaPix, int x, int y)
		{
			PixelType &pix = texture.pixelAbsolute(x, y);
			dataPix = reinterpret_cast<DataType *>(&pix);
			for(unsigned i=0; i<pixelSize; ++i)
				dataPix[i] = pcaPix[i];
		});
		return texture;
	};

	PcaImageType pcaTexture = toPcaImageType(m_texture);
	PcaType pca(pcaTexture);
	MaskBool mb_alwaysTrue(pcaTexture.width(), pcaTexture.height());
	mb_alwaysTrue |= [] (int, int) {return true;};
	pca.computePCA(mb_alwaysTrue);
	pca.project(pcaTexture);
	GaussianTransferType::ComputeTinput(pcaTexture, lut);
	PcaImageType pcaOutput;
	pcaOutput.initItk(output.width(), output.height());
	pcaOutput.for_all_pixels([&] (PcaPixelType &pix, int x, int y)
	{
		Eigen::Vector2d uv;
		uv[0] = double(x)/m_texture.width();
		uv[1] = double(y)/m_texture.height();
		pix = proceduralTilingAndBlending(pcaTexture, uv);
	});
	GaussianTransferType::ComputeinvT(pcaOutput, lut); //replace with pcaOutput
	pca.back_project(pcaOutput, pcaTexture);
	output = fromPcaImageType(pcaTexture);
	return output;
}

template<typename I>
typename CSN_Texture<I>::PcaPixelType CSN_Texture<I>::proceduralTilingAndBlending (const PcaImageType &image,
																				   Eigen::Vector2d uv) const
{
	// Get triangle info
	float w1, w2, w3;
	Eigen::Vector2i vertex1, vertex2, vertex3;
	TriangleGrid(uv, w1, w2, w3, vertex1, vertex2, vertex3);
	// Assign random offset to each triangle vertex
	Eigen::Vector2d uv1 = fract(uv + hash(vertex1.cast<double>()));
	Eigen::Vector2d uv2 = fract(uv + hash(vertex2.cast<double>()));
	Eigen::Vector2d uv3 = fract(uv + hash(vertex3.cast<double>()));
	// Fetch input
	auto lmbd_Vector2PixelPos = [&] (Eigen::Vector2d v) -> PixelPosType
	{
		PixelPosType pos;
		pos[0] = v[0]*(image.width()); //or width-1? Just make sure v can't be 1
		pos[1] = v[1]*(image.height());
		return pos;
	};
	PcaPixelType I1 = image.pixelAbsolute(lmbd_Vector2PixelPos(uv1));
	PcaPixelType I2 = image.pixelAbsolute(lmbd_Vector2PixelPos(uv2));
	PcaPixelType I3 = image.pixelAbsolute(lmbd_Vector2PixelPos(uv3));
	// Linear blending
	PcaPixelType color = I1 * w1 + I2 * w2 + I3 * w3;
	return color;
}

template<typename I>
void CSN_Texture<I>::TriangleGrid (	Eigen::Vector2d uv, float &w1, float &w2, float &w3,
									Eigen::Vector2i &vertex1, Eigen::Vector2i &vertex2, Eigen::Vector2i &vertex3) const
{
	// Scaling of the input
	uv *= 3.464; // 2 * sqrt (3)
	// Skew input space into simplex triangle grid
	Eigen::Matrix2d gridToSkewedGrid;
	gridToSkewedGrid << 1.0, 0.0, -0.57735027, 1.15470054;
	Eigen::Vector2d skewedCoord = gridToSkewedGrid * uv;
	Eigen::Vector2d temp2d = floor(skewedCoord);
	Eigen::Vector2i baseId = temp2d.cast<int>();
	temp2d = fract(skewedCoord);
	Eigen::Vector3d temp;
	temp[0] = temp2d[0];
	temp[1] = temp2d[1];
	temp[2] = 1.0 - temp[0] - temp[1] ;
	if (temp[2] > 0.0)
	{
		w1 = float(temp[2]);
		w2 = float(temp[1]);
		w3 = float(temp[0]);
		vertex1 = baseId ;
		vertex2 = baseId + Eigen::Vector2i(0 , 1);
		vertex3 = baseId + Eigen::Vector2i(1 , 0);
	}
	else
	{
		w1 = float(-temp[2]);
		w2 = float(1.0 - temp[1]);
		w3 = float(1.0 - temp[0]);
		vertex1 = baseId + Eigen::Vector2i(1, 1);
		vertex2 = baseId + Eigen::Vector2i(1, 0);
		vertex3 = baseId + Eigen::Vector2i(0, 1);
	}
}

template<typename I>
Eigen::Vector2d CSN_Texture<I>::hash(const Eigen::Vector2d &p) const
{
	Eigen::Matrix2d hashMat;
	hashMat << 127.1, 269.5, 311.7, 183.3;
	Eigen::Vector2d q = hashMat * p;
	q[0] = sin(q[0]);
	q[1] = sin(q[1]);
	return fract ( q * 43758.5453 );
}

template<typename I>
Eigen::Vector2d CSN_Texture<I>::floor(const Eigen::Vector2d &v) const
{
	Eigen::Vector2d w;
	w[0] = std::floor(v[0]);
	w[1] = std::floor(v[1]);
	return w;
}

template<typename I>
Eigen::Vector2d CSN_Texture<I>::fract(const Eigen::Vector2d &v) const
{
	Eigen::Vector2d w;
	w[0] = v[0]-std::floor(v[0]);
	w[1] = v[1]-std::floor(v[1]);
	return w;
}

}

}

#endif
