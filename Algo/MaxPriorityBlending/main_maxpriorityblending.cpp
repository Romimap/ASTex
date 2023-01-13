#include "maxpriorityblending.h"
#include "maxpriorityblending_utils.h"
#include "ASTex/image_rgb.h"
#include "ASTex/CSN/csn_texture.h"

int main (int argc, char* argv[]) {
    MPB::MPB_Texture mpb;
    mpb.setFilterSize(1);

    CSN::CSN_Texture<ImageRGBd> csn;
    csn.setUseCycles(false);
    csn.setUseGaussianTransfer(true);
    csn.setUsePca(true);


    {
        ImageRGBd c1 = load(argv[1]);
        ImageRGBd c2 = load(argv[2]);
        ImageRGBd p1 = load(argv[3]);
        ImageRGBd p2 = load(argv[4]);
        ImageRGBd b = load(argv[5], true);

        mpb.setTextures(c1, c2, p1, p2, b);

        ImageRGBd synthesized = mpb.synthesize();
        save(synthesized, "example.png");
    }

    {
        ImageRGBd c1 = load(argv[1]);
        ImageRGBd c2 = load(argv[2]);
        ImageRGBd p1 = load(argv[3]);
        ImageRGBd p2 = load(argv[4]);
        ImageRGBd b = load(argv[5], true);

        mpb.setTextures(c1, c2, p1, p2, b);
        ImageRGBd e = mpb.synthesize();

        csn.setTexture(e);
        csn.setGamma(1.0);

        ImageRGBd synthesized = csn.synthesize(2048, 4096);
        save(synthesized, "synthesized_tbhn.png");
    }

    {
        ImageRGBd c1 = load(argv[1]);
        ImageRGBd c2 = load(argv[2]);
        ImageRGBd p1 = load(argv[3]);
        ImageRGBd p2 = load(argv[4]);
        ImageRGBd b = load(argv[5], true);

        mpb.setTextures(c1, c2, p1, p2, b);
        ImageRGBd e = mpb.synthesize();

        csn.setTexture(e);
        csn.setGamma(5.0);

        ImageRGBd synthesized = csn.synthesize(2048, 4096);
        save(synthesized, "synthesized_tbb.png");
    }

    {
        csn.setTexture(load(argv[1]));
        ImageRGBd c1 = csn.synthesize(2048, 4096);
        csn.setTexture(load(argv[2]));
        ImageRGBd c2 = csn.synthesize(2048, 4096);
        csn.setTexture(load(argv[3]));
        ImageRGBd p1 = csn.synthesize(2048, 4096);
        csn.setTexture(load(argv[4]));
        ImageRGBd p2 = csn.synthesize(2048, 4096);
        csn.setTexture(load(argv[5], true));
        ImageRGBd b  = csn.synthesize(2048, 4096);

        mpb.setTextures(c1, c2, p1, p2, b);

        ImageRGBd synthesized = mpb.synthesize();
        save(synthesized, "synthesized_mpb.png");
    }

    return 0;
}