#include "ASTex/image_rgb.h"
#include "maxpriorityblending_utils.h"

namespace ASTex
{

namespace MPB
{

class MPB_Texture
{
    using ImageType	= ImageRGBd;
    using PixelType = itk::RGBPixel<double>;

    private:
    ImageType color1;
    ImageType color2;
    ImageType priority1;
    ImageType priority2;
    ImageType bias;
    int filterSize;


    public:
    MPB_Texture();
    ~MPB_Texture();


    void setTextures(ImageType c1, ImageType c2, ImageType p1, ImageType p2, ImageRGBd b);
    void setColor1(ImageType c1);
    void setColor2(ImageType c2);
    void setPriority1(ImageType p1);
    void setPriority2(ImageType p2);
    void setBias(ImageType b);
    void setFilterSize(int s);


    ImageType synthesize();

};

MPB_Texture::MPB_Texture()
{
}

MPB_Texture::~MPB_Texture()
{
}

void MPB_Texture::setTextures(ImageType c1, ImageType c2, ImageType p1, ImageType p2, ImageType b) {
    setColor1(c1);
    setColor2(c2);
    setPriority1(p1);
    setPriority2(p2);
    setBias(b);
}

void MPB_Texture::setColor1(ImageType c1){
    color1 = c1;
}

void MPB_Texture::setColor2(ImageType c2){
    color2 = c2;
}

void MPB_Texture::setPriority1(ImageType p1){
    priority1 = p1;
}

void MPB_Texture::setPriority2(ImageType p2){
    priority2 = p2;
}

void MPB_Texture::setBias(ImageType b){
    bias = b;
}

void MPB_Texture::setFilterSize(int s) {
    filterSize = s;
}

typename MPB_Texture::ImageType MPB_Texture::synthesize() {
    ImageType out(color1.width(), color1.height(), false);

    if (color1.size() != color2.size()
    ||  color1.size() != priority1.size()
    ||  color1.size() != priority2.size()
    ||  color1.size() != bias.size()) {
        std::cerr << "textures must have the same dimensions" << std::endl;
        return out;
    }


    out.parallel_for_all_pixels([this](PixelType &p, int x, int y){
        if (priority1.pixelAbsolute(x, y)[0] + bias.pixelAbsolute(x, y)[0] >= priority2.pixelAbsolute(x, y)[0] - bias.pixelAbsolute(x, y)[0]) {
            p = color1.pixelAbsolute(x, y);
        } else {
            p = color2.pixelAbsolute(x, y);
        }
    });

    return out;
}
  

}
}


