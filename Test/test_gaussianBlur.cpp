#include <ASTex/image_gray.h>
#include <math.h>

using namespace ASTex;

float gaussian(float x, float o) {
    return 1 / (o * sqrt(2 * M_PI)) * exp(-((x*x) / (2*(o*o))));
}

float** getGaussianKernel(int r) {
    float** kernel = (float**)calloc(r, sizeof(float*));
    for (int i = 0; i < r; i++) {
        kernel[i] = (float*)calloc(r, sizeof(float));
    }

    //Fill
    for (int x = 0; x < r; x++) {
        for (int y = 0; y < r; y++) {
            float distance = sqrt(pow((float)x - ((float)(r - 1)/2.), 2) + pow((float)y - ((float)(r - 1)/2), 2)); //Euclidian distance to center
            distance /= (float)r / 2.; //Normalization
            kernel[x][y] = gaussian(distance, 0.4);
        }
    }

    //Normalize
    double sum = 0;
    for (int x = 0; x < r; x++) {
        for (int y = 0; y < r; y++) {
            sum += kernel[x][y];
        }
    }
    for (int x = 0; x < r; x++) {
        for (int y = 0; y < r; y++) {
            kernel[x][y] /= sum;
        }
    }


    return kernel;
}

int main (int argc, char* argv[]) {
    if (argc != 4) {
        printf("usage : <image in> <image out> <kernel_radius>");
        return -1;
    }

    char* in = argv[1];
    char* out = argv[2];
    int k = atoi(argv[3]);

    float** kernel = getGaussianKernel(k);

    ImageGrayu8 imageIn;
    imageIn.load(in);
    ImageGrayu8 imageOut(imageIn.width(), imageIn.height(), true);
    for (int x = 0; x < imageIn.width(); x++) {
        for (int y = 0; y < imageIn.height(); y++) {
            float pixelValue = 0;
            for (int xx = 0; xx < k; xx++) {
                for (int yy = 0; yy < k; yy++) {
                    int px = std::min(imageIn.width() - 1, std::max(0, x + xx - k / 2));
                    int py = std::min(imageIn.width() - 1, std::max(0, y + yy - k / 2));
                    pixelValue += (float)imageIn.pixelAbsolute(px, py) * kernel[xx][yy];
                }
            }
            imageOut.pixelAbsolute(x, y) = pixelValue;
        }
    }

    

    imageOut.save(out);
}