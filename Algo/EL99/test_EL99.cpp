#include <iostream>
#include "EL99.hxx"

int main () {
    std::cout << "Hello world !" << std::endl;
    EL99 el99;

    ImageGrayu8 i1u8;
    i1u8.load("texture_bw_tiny.png");

    el99.SetRegionSize(16);
    el99.SetThreshold(0.001);
    el99.SetTextureSample(i1u8);

    ImageGrayd out(64, 64);
    el99.Generate(out, 11);
    
    ImageGrayu8 write(out.width(), out.height());
    for (int x = 0; x < out.width(); x++) {
        for (int y = 0; y < out.height(); y++) {
            write.pixelAbsolute(x, y) = (double)out.pixelAbsolute(x, y) * 255.0;
        }     
    }

    write.save("gen.png");
}