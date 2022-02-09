#include <ASTex/image_gray.h>
#include <ASTex/fourier.h>
#include <ASTex/histogram.h>
#include <math.h>

using namespace ASTex;

int main (int argc, char* argv[]) {
    if (argc != 3) {
        printf("usage: <input file> <output file>");
        return EXIT_FAILURE;
    }


    ImageGrayd input;
    input.load(argv[1]);

    ImageSpectrald modulus;
    ImageSpectrald phase;
    Fourier::fftForwardModulusAndPhase(input, modulus, phase, true);

    ImageGrayu8 outputM(modulus.width(), modulus.height());
    {   
        double max = 0;
        for (int x = 0; x < modulus.width(); x++) {
            for (int y = 0; y < modulus.height(); y++) {
                max = std::max(max, modulus.pixelAbsolute(x, y));
                outputM.pixelAbsolute(x, y) = tanh(modulus.pixelAbsolute(x, y) * 0.000000001) * 255.0;
            }
        }
        std::cout << max << std::endl;
    }
    outputM.save(argv[2]);

    HistogramSpectrald h;
    h.compute(modulus);

    std::cout << h.mean() << "  " << h.variance() << std::endl;

    HistogramGrayBase<int> quantized = h.quantize(0.0, 10000000000.0, 1000);
    quantized.saveHistogram("histo");

    return EXIT_SUCCESS;
}