#ifndef __MAXPRIORITYBLENDING_UTILS__
#define __MAXPRIORITYBLENDING_UTILS__

#include "ASTex/image_rgb.h"

using namespace ASTex;

ImageRGBd load (char* path, bool centered = false) {
    printf("loading %s\n", path);
    ImageRGBu8 data;
    if (!data.load(path)) {
        printf("error loading %s\n", path);
    }

    ImageRGBd *i = new ImageRGBd(data.width(), data.height(), false);
    ImageRGBd &image = *i;

    data.parallel_for_all_pixels([&image, centered](itk::RGBPixel<unsigned char> &p, int x, int y){
        if (centered) {
            image.pixelAbsolute(x, y)[0] = (((double)p[0] / 255.0) - 0.5) * 2.0;
            image.pixelAbsolute(x, y)[1] = (((double)p[1] / 255.0) - 0.5) * 2.0;
            image.pixelAbsolute(x, y)[2] = (((double)p[2] / 255.0) - 0.5) * 2.0;
        } else {
            image.pixelAbsolute(x, y)[0] = (double)p[0] / 255.0;
            image.pixelAbsolute(x, y)[1] = (double)p[1] / 255.0;
            image.pixelAbsolute(x, y)[2] = (double)p[2] / 255.0;
        }
    });

    return image;
}
void save (ImageRGBd &data, char* path) {
    printf("saving to %s\n", path);

    ImageRGBu8 out(data.width(), data.height());

    data.parallel_for_all_pixels([&out](itk::RGBPixel<double> &p, int x, int y){
        out.pixelAbsolute(x, y)[0] = (unsigned char)std::min(255, std::max(0, (int)(p[0] * 255.0)));
        out.pixelAbsolute(x, y)[1] = (unsigned char)std::min(255, std::max(0, (int)(p[1] * 255.0)));
        out.pixelAbsolute(x, y)[2] = (unsigned char)std::min(255, std::max(0, (int)(p[2] * 255.0)));
    });

    out.save(path);
}


#endif