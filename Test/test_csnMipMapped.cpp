#include <stdlib.h>
#include "ASTex/easy_io.h"
#include "ASTex/CSN/csn_texture.h"
#include "ASTex/image_rgb.h"
#include "ASTex/Stamping/stamper.h"
#include <map>
#include "ASTex/histogram.h"

using namespace ASTex;

int main(int argc, char **argv)
{
	setlocale(LC_NUMERIC, "fr_FR");
	if(argc < 3)
	{
		std::cerr << "Usage: " << std::endl;
		std::cerr << argv[0] << " <in_texture> <out_texture>" << std::endl;
		return EXIT_FAILURE;
	}

	using ImageType = ImageRGBd;
    using PixelType	= typename ImageType::PixelType;
	using PcaImageType = CSN::CSN_Texture<ImageType>::PcaImageType;

	ImageType im_in;
	std::string filename_in = std::string(argv[1]);
	std::string out_filename = std::string(argv[2]);
    
    IO::loadu8_in_01(im_in, filename_in);
	CSN::CSN_Texture<ImageType> csn;
	csn.setEstimationType(ASTex::CSN::EstimationType::LEAN_VARIANCE);
	csn.setTexture(im_in);

//	//The following is how I produced the figure showing the distance map
//	ImageRGBd cycleEvaluationMap = csn.debug_cycleEvaluationMap(129, 129, Eigen::Vector2d(cyclePair.vectors[0][0], cyclePair.vectors[1][1]), 0.1);
//	IO::save01_in_u8(cycleEvaluationMap, std::string("/home/nlutz/cycleEvaluationMap129_") + textureName + ".png");

	csn.setUseCycles(false);
	csn.setGamma(2);
	csn.setUsePca(false);
	csn.setUseGaussianTransfer(false);
	csn.setUseYCbCr(false);
	csn.setUseCyclicTransfer(false);
	csn.setUVScale(0.8);
	csn.setCyclicTransferPolicy();

	std::vector<ImageType> estimations;
    for (int i = 0; i < 10; i++) {
        ImageType output = csn.synthesize(512, 512, i);
        output.for_all_pixels([&] (ImageType::PixelType &pix)
        {
            for(int i=0; i<3; ++i)
            {
                pix[i] = pix[i] > 1.0 ? 1.0 : (pix[i] < 0.0 ? 0.0 : pix[i]);
            }
        });

		estimations.push_back(output);
        IO::save01_in_u8(output, out_filename + std::to_string(i) + "estimated.png");
    }

    std::vector<ImageType> groundTruth;
    ImageType texture;
    IO::loadu8_in_01(texture,out_filename + "0estimated.png");

    //MIP MAPING
    groundTruth.push_back(texture);
	int width = texture.width() / 2;
	int height = texture.height() / 2;
	int i = 1;
	while (width > 0 && height > 0) {
		ImageType map;
		map.initItk(width, height, true);
		for (int x = 0; x < width; x++) {
			for (int y = 0; y < height; y++) {
				PixelType mean;
				mean += groundTruth[i - 1].pixelAbsolute(2 * x    , 2 * y    );
				mean += groundTruth[i - 1].pixelAbsolute(2 * x + 1, 2 * y    );
				mean += groundTruth[i - 1].pixelAbsolute(2 * x    , 2 * y + 1);
				mean += groundTruth[i - 1].pixelAbsolute(2 * x + 1, 2 * y + 1);
				mean /= 4;
				map.pixelAbsolute(x, y) = mean;
			}
		}
		groundTruth.push_back(map);

		IO::save01_in_u8(map, out_filename + std::to_string(i) + "groundtruth.png");

		width /= 2;
		height /= 2;
		i++;
	}


    std::vector<ASTex::ImageGrayd> results;
	for (int i = 0; i < 10; i++) {
		ImageType e = estimations[i];
		ImageType g = groundTruth[i];

		ASTex::ImageGrayd result(e.width(), e.height(), false);
		for (int x = 0; x < e.width(); x++){
			for (int y = 0; y < e.height(); y++) {
				double d = sqrt(pow(e.pixelAbsolute(x, y)[0] - g.pixelAbsolute(x, y)[0], 2) + pow(e.pixelAbsolute(x, y)[1] - g.pixelAbsolute(x, y)[1], 2) + pow(e.pixelAbsolute(x, y)[2] - g.pixelAbsolute(x, y)[2], 2));
				d /= sqrt(3); //Max distance
				result.pixelAbsolute(x, y) = d;
			}
		}

		results.push_back(result);
		IO::save01_in_u8(result, out_filename + std::to_string(i) + "result.png");
	}
	return 0;
}
