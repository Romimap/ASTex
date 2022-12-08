

#include <iostream>
#include <ASTex/image_rgb.h>
#include <ASTex/image_rgba.h>


#include <ASTex/special_io.h>
#include <ASTex/easy_io.h>

//#include <ASTex/image_merging.h>

using namespace ASTex;

ImageRGBu8 t1;
ImageRGBu8 t2;
ImageRGBu8 p1;
ImageRGBu8 p2;

ImageRGBu8 filter(int size) {
    ImageRGBu8 out(256 / size, 256 / size);
    for (int x = 0; x < 256 / size; x++) {
        for (int y = 0; y < 256 / size; y++) {
            int r = 0;
            int g = 0;
            int b = 0;
            for (int i = 0; i < size; i++) {
                for (int j = 0; j < size; j++) {
                    if (p1.pixelAbsolute(x*size+i, y*size+j)[0] > p2.pixelAbsolute(x*size+i, y*size+j)[0]) {
                        r += t1.pixelAbsolute(x*size+i, y*size+j)[0];
                        g += t1.pixelAbsolute(x*size+i, y*size+j)[1];
                        b += t1.pixelAbsolute(x*size+i, y*size+j)[2];
                    } else {
                        r += t2.pixelAbsolute(x*size+i, y*size+j)[0];
                        g += t2.pixelAbsolute(x*size+i, y*size+j)[1];
                        b += t2.pixelAbsolute(x*size+i, y*size+j)[2];
                    }
                }
            }
            r /= size * size;
            g /= size * size;
            b /= size * size;
            out.pixelAbsolute(x, y) = itkRGBPixel((char)std::min(255, r), (char)std::min(255, g), (char)std::min(255, b));
        }
    }
    return out;
}

int main(int argc, char** argv) {
	t1.load(argv[1]);
	t2.load(argv[2]);
	p1.load(argv[3]);
	p2.load(argv[4]);

	ImageRGBu8 out = filter(1);
    out.save("out1.png");

    out = filter(2);
    out.save("out2.png");

	out = filter(4);
    out.save("out4.png");

    out = filter(8);
    out.save("out8.png");

	out = filter(16);
    out.save("out16.png");


	out = filter(32);
    out.save("out32.png");

	out = filter(64);
    out.save("out64.png");

	return 0;


}

