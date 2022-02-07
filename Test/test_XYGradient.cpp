#include <ASTex/image_gray.h>
#include <ASTex/image_rgb.h>

using namespace ASTex;

int main (int argc, char* argv[]) {
    if (argc != 3) {
        printf("usage : <image in> <image out>");
        return -1;
    }

    char* in = argv[1];
    char* out = argv[2];

    ImageGrayu8 imageIn;
    imageIn.load(in);
    ImageRGBu8 imageOut(imageIn.width(), imageIn.height(), true);

    for (int x = 1; x < imageIn.width(); x++) {
        for (int y = 1; y < imageIn.height(); y++) {
            imageOut.pixelAbsolute(x, y)[0] = std::min(255, std::max(0, imageIn.pixelAbsolute(x - 1, y) - imageIn.pixelAbsolute(x, y) + 128));
            imageOut.pixelAbsolute(x, y)[1] = std::min(255, std::max(0, imageIn.pixelAbsolute(x, y - 1) - imageIn.pixelAbsolute(x, y) + 128));
        }
    }

    imageOut.save(out);
}