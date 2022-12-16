#include <iostream>
#include <ASTex/image_rgb.h>
#include <ASTex/image_rgba.h>


#include <ASTex/special_io.h>
#include <ASTex/easy_io.h>


using namespace ASTex;


int main (int argc, char** argv) {
    ImageRGBu8 color_a;
    ImageRGBu8 color_b;
    ImageRGBu8 priority_a;
    ImageRGBu8 priority_b;
    ImageRGBu8 out(512, 512);

    if (argc != 6) {
        printf("Usage : test_write_rgb_image ca cb pa pb out");
        return 1;
    }

    color_a.load(argv[1]);
    color_b.load(argv[2]);
    priority_a.load(argv[3]);
    priority_b.load(argv[4]);


    for (int x = 0; x < 512; x++) {
        for (int y = 0; y < 512; y++) {
            if (priority_a.pixelAbsolute(x, y)[0] > priority_b.pixelAbsolute(x, y)[0])
                out.pixelAbsolute(x, y) = color_a.pixelAbsolute(x, y)
            else
                out.pixelAbsolute(x, y) = color_b.pixelAbsolute(x, y)
        }
    }

    image.pixelAbsolute(0,0) = itkRGBPixel(0,0,0);

    image.save(argv[2]);

    return 0;
}