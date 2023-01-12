

#include <iostream>
#include <ASTex/image_rgb.h>
#include "tiling_and_blending.h"

using namespace ASTex;





void save (ImageRGBd &data, char* path) {
    int w = data.width();
    int h = data.height();
    ImageRGBu8 out(w, h, false);

    out.for_all_pixels([&data](itk::RGBPixel<unsigned char> &p, int x, int y){
        p[0] = (unsigned char)(data.pixelAbsolute(x, y)[0]);
        p[1] = (unsigned char)(data.pixelAbsolute(x, y)[1]);
        p[2] = (unsigned char)(data.pixelAbsolute(x, y)[2]);
    });

    out.save(path);
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("bad arguments\n");
        return 1;
    }

    ImageRGBd image(256, 256, false);
    //bool ok = image.load(argv[1]);
	//if (!ok)
	//	return 1;

    int w = image.width();
    int h = image.height();

    image.parallel_for_all_pixels([w, h](itk::RGBPixel<double> &p, int x, int y){
        double uv[2] = {0.0, 0.0};
        uv[0] = (double)x / (double)w;
        uv[1] = (double)y / (double)h;
        
        
    });

    save(image, argv[1]);

    return 0;
}
