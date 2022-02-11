#ifndef __EL99__
#define __EL99__

#include <iostream>
#include <vector>
#include <ASTex/image_gray.h>
#include <itkExtractImageFilter.h>

using namespace ASTex;

/**
 * \brief EL99 implements the algorithm described in the "Texture Synthesis by Non-parametric Sampling" paper.
 */
class EL99 {
public:
    double _threshold = 0.5;
    int _regionSize = 5;
    ImageGrayd* _sampleImage = nullptr;

    //with o = 0.4, g(0) = 1, g(+-1.5) ~= 0
    double gaussian (double x, double o) {
        return 1.0 / (o * sqrt(2.0 * M_PI)) * exp(-((x * x) / (2.0 * o * o)));
    }

    /** WIP: to test
     * @brief calculate the weighted by a gaussian SSD of two regions. This functions assumes that w1 and w2 have the same size.
     * 
     * @param i1 image 1
     * @param w1 region in image 1
     * @param i2 image 2
     * @param w2 region in image 2
     * @return wSSD, -1 if something went wrong
     */
    double wSSD(const ImageGrayd &i1, const Region &w1, const ImageGrayd &i2, const Region &w2) {
        //Checks if regions have the same size
        if (w1.GetSize(0) != w2.GetSize(0) || w1.GetSize(1) != w2.GetSize(1)) {
            return -1;
        }

        //Relative center of the regions
        int cx = w1.GetSize(0) / 2 + 1;
        int cy = w1.GetSize(1) / 2 + 1;

        //Absolute center of the regions
        int acx1 = w1.GetIndex(0) + cx;
        int acy1 = w1.GetIndex(1) + cy;
        int acx2 = w2.GetIndex(0) + cx;
        int acy2 = w2.GetIndex(1) + cy;

        //Checks that at least the center of each region is located inside its image.
        if (acx1 < 0 || acy1 < 0 || acx2 < 0 || acy2 < 0
         || acx1 >= i1.width() || acy1 >= i1.height() || acx2 >= i2.width() || acy2 >= i2.height()) {
            return -1;
        }

        double N = 0;
        double sum;
        
        for (int x = 0; x < w1.GetSize(0); x++) {
            for (int y = 0; y < w1.GetSize(1); y++) {
                //Indexes
                int i1x = w1.GetIndex(0) + x;
                int i1y = w1.GetIndex(1) + y;
                int i2x = w2.GetIndex(0) + x;
                int i2y = w2.GetIndex(1) + y;

                if (i1x >= 0 && i1y >= 0 && i2x >= 0 && i2y >= 0
                 && i1x < i1.width() && i1y < i1.height() && i2x < i2.width() && i2y < i2.height()) {
                    //Pixel values
                    double p1 = i1.pixelAbsolute(i1x, i1y);
                    double p2 = i2.pixelAbsolute(i2x, i2y);

                    //Unsets pixels == -1, here we make sure that we are testing set pixels against set pixels
                    if (p1 >= 0 && p2 >= 0) {
                        //SSD * G
                        double distance = sqrt(pow(i1x - i2x, 2) - pow(i1y - i2y, 2));
                        distance /= (double)_regionSize; //[0; 1] (max 1.4 in diagonal)
                        double g = gaussian(distance, 0.8); //TODO: g should be the return value of a gaussian for the distance from the center
                        N += g;
                        sum += (p1 - p2) * (p1 - p2) * g;
                    }
                }
            }
        }

        if (N == 0) { //No pixels were processed (should be dead code)
            return -1;
        }

        return (1.0 / N) * sum;
    }

    Region findBestW (Region &genRegion, ImageGrayd &genImage) {
        Region w = gen_region(0, 0, _regionSize, _regionSize);
        double minW = std::numeric_limits<double>::max();

        for (int x = 0; x < _sampleImage->width(); x++) {
            for (int y = 0; y < _sampleImage->height(); y++) {
                //Sets the center of the region @ [x, y]
                Region newW = gen_region(x - (_regionSize / 2), y - (_regionSize / 2), _regionSize, _regionSize);

                //Get the wssd between that region and the current genRegion
                double wssd = wSSD(genImage, genRegion, *_sampleImage, newW);

                if (wssd >= 0 && wssd < minW) {
                    minW = wssd;
                    w = newW;
                }
            }
        }

        return w;
    }

    void GetCandidates (Region &genRegion, ImageGrayd &genImage, std::vector<Region> &outVector) {
        //printf("--> GetCandidates\n");
        Region bestW = findBestW(genRegion, genImage);
        //printf("    *bestW(%d, %d, %d, %d)\n", bestW.GetSize(0), bestW.GetSize(1), bestW.GetIndex(0), bestW.GetIndex(1));

        //double Test = wSSD(*_sampleImage, bestW, *_sampleImage, bestW);
        //printf("Test: %.5f\n", Test);

        for (int x = 0; x < _sampleImage->width(); x++) {
            for (int y = 0; y < _sampleImage->height(); y++) {
                //Sets the center of the region @ [x, y]
                Region newW = gen_region(x - (_regionSize / 2), y - (_regionSize / 2), _regionSize, _regionSize);

                //Get the wssd between that region and the best region
                double wssd = wSSD(*_sampleImage, bestW, *_sampleImage, newW);

                if (wssd >= 0 && wssd <= _threshold + 0.00001) {
                    outVector.push_back(newW);
                }
            }
        }
        //printf("<-- GetCandidates\n");
    }

    double GetP (Region &genRegion, ImageGrayd &genImage) {
        //printf("--> GetP\n");
        std::vector<Region> candidates;
        GetCandidates(genRegion, genImage, candidates);
        //printf("    * %d\n", candidates.size()); //CANDIDATES.SIZE = 0 ?
        //for (int i = 0; i < candidates.size(); i++) {
        //    printf("    *c[%d](%d, %d, %d, %d)\n", i, candidates.at(i).GetSize(0), candidates.at(i).GetSize(1), candidates.at(i).GetIndex(0), candidates.at(i).GetIndex(1));    
        //}

        int pIndex = rand() % candidates.size();
        //printf("    *\n");
        int acx = candidates.at(pIndex).GetIndex(0) + (candidates.at(pIndex).GetSize(0) / 2 + 1);
        //printf("    *\n");
        int acy = candidates.at(pIndex).GetIndex(1) + (candidates.at(pIndex).GetSize(1) / 2 + 1);
        //printf("    *\n");
        
        double ans = _sampleImage->pixelAbsolute(acx, acy);
        //printf("    *\n");

        //printf("<-- GetP\n");
        return ans;
    }

public:
    EL99() {}
    ~EL99() {}
    
    void SetTextureSample (ImageGrayu8 &sample) {
        _sampleImage = new ImageGrayd(sample.width(), sample.height());

        //Normalized [0; 1]
        for (int x = 0; x < sample.width(); x++) {
            for (int y = 0; y < sample.height(); y++) {
                _sampleImage->pixelAbsolute(x, y) = (double)sample.pixelAbsolute(x, y) / 255.0;
            }     
        }
    }

    void SetThreshold (double threshold) {
        _threshold = threshold;
    }

    void SetRegionSize (int regionSize) {
        _regionSize = regionSize;
    }

    void Generate (ImageGrayd &genImage, long seed = 0) {
        //Initialization
        for (int x = 0; x < genImage.width(); x++) {
            for (int y = 0; y < genImage.height(); y++) {
                genImage.pixelAbsolute(x, y) = -1;
            }
        }

        //Seeding the image
        srand(seed);
        int cx = genImage.width() / 2 + 1;
        int cy = genImage.height() / 2 + 1;

        for (int x = -1; x <= 1; x++) {
            for (int y = -1; y <= 1; y++) {
                genImage.pixelAbsolute(cx + x, cy + y) = (double)rand() / (double)RAND_MAX;
            }
        }

        //Spiraling from the center
        //0 = down, 1 = left, 2 = up, 3 = right

        int dir = 0;
        int steps = 1;
        int px = cx;
        int py = cy;
        bool breakOut = false;
        while (!breakOut) {
            for (int i = 0; i < steps && !breakOut; i++) {
                printf("%d, %d (%d; %d)\n", px, py, dir, steps);

                if (px < 0 || px >= genImage.width() || py < 0 || py >= genImage.height()) {
                    breakOut = true;
                    break;
                }  

                Region region = gen_region(px - (_regionSize / 2 + 1), py - (_regionSize / 2 + 1), _regionSize, _regionSize);
                genImage.pixelAbsolute(px, py) = GetP(region, genImage);
                if (dir == 0) py++;
                if (dir == 1) px--;
                if (dir == 2) py--;
                if (dir == 3) px++;
            }
            if (dir == 1 || dir == 3) steps++;
     
            dir++;
            dir = dir % 4;
        }
    }
};



#endif