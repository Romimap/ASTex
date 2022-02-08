#include <ASTex/image_gray.h>
#include <ASTex/fourier.h>
#include <ASTex/histogram.h>
#include <math.h>

using namespace ASTex;

void computePSD (const ImageSpectrald modulus, const ImageSpectrald phase, ImageSpectrald& psd) {
    for (int x = 0; x < modulus.width(); x++) {
        for (int y = 0; y < modulus.width(); y++) {
            double m = modulus.pixelAbsolute(x, y);
            double p = phase.pixelAbsolute(x, y);
            long double j = m*m + p*p;
            psd.pixelAbsolute(x, y) = std::min((long double)std::numeric_limits<double>::max(), std::max((long double)0.0, j));
        }
    }
}

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

    ImageSpectrald psd(modulus.width());
    computePSD(modulus, phase, psd);

    ImageGrayu8 outputM(psd.width(), psd.height());
    {   
        double max = 0;
        for (int x = 0; x < psd.width(); x++) {
            for (int y = 0; y < psd.height(); y++) {
                max = std::max(max, psd.pixelAbsolute(x, y));
                outputM.pixelAbsolute(x, y) = tanh(psd.pixelAbsolute(x, y) * 0.000000001) * 255.0;
            }
        }
        std::cout << max << std::endl;
    }
    outputM.save(argv[2]);

    HistogramSpectrald h;
    h.compute(psd);

    std::cout << h.mean() << "  " << h.variance() << std::endl;

    HistogramGrayBase<int> quantized = h.quantize(0.0, 10000000000.0, 1000);
    quantized.saveHistogram("histo");

    return EXIT_SUCCESS;
}