#include <iostream>
#include <ASTex/image_rgb.h>
#include <ASTex/image_rgba.h>

#include <ASTex/special_io.h>
#include <ASTex/easy_io.h>

using namespace ASTex;

double getMean(ImageRGBd t, int x1, int x2, int y1, int y2, int c = 0) {
    double sum = 0.0;
    double N = 0.0;
    for (int x = x1; x < x2; x++) {
        for (int y = y1; y < y2; y++) {
            sum += t.pixelAbsolute(x, y)[c];
            N++;
        }
    }
    return sum / N;
}

double getVariance(ImageRGBd t, int x1, int x2, int y1, int y2, int c = 0) {
    double mean = getMean(t, x1, x2, y1, y2, c);
    double sum = 0.0;
    double N = 0.0;
    for (int x = x1; x < x2; x++) {
        for (int y = y1; y < y2; y++) {
            float v = t.pixelAbsolute(x, y)[c] - mean;
            sum += (v * v);
            N++;
        }
    }
    return sum / N;
}


double getTopMean(ImageRGBd t1, ImageRGBd t2, int x1, int x2, int y1, int y2, int c = 0) {
    double sum = 0.0;
    double N = 0.0;
    for (int x = x1; x < x2; x++) {
        for (int y = y1; y < y2; y++) {
            if (t1.pixelAbsolute(x, y)[c] > t2.pixelAbsolute(x, y)[c]) {
                sum += t1.pixelAbsolute(x, y)[c];
                N++;
            }
        }
    }
    if (N == 0.0) return 0;
    return sum / N;
}

double getTopVariance(ImageRGBd t1, ImageRGBd t2, int x1, int x2, int y1, int y2, int c = 0) {
    double mean = getTopMean(t1, t2, x1, x2, y1, y2, c);
    double sum = 0.0;
    double N = 0.0;
    for (int x = x1; x < x2; x++) {
        for (int y = y1; y < y2; y++) {
            float v = 0.0;
            if (t1.pixelAbsolute(x, y)[c] > t2.pixelAbsolute(x, y)[c]) {
                v = t1.pixelAbsolute(x, y)[c] - mean;
                sum += (v * v);
                N++;
            }
        }
    }
    if (N == 0.0) return 0;
    return sum / N;
}


ImageRGBd filter(ImageRGBd t1, ImageRGBd p1, ImageRGBd t2, ImageRGBd p2, int size, double bias = 0.0) {
    ImageRGBd out(256 / size, 256 / size);
    for (int x = 0; x < 256 / size; x++) {
        for (int y = 0; y < 256 / size; y++) {
            double r = 0;
            double g = 0;
            double b = 0;
            for (int i = 0; i < size; i++) {
                for (int j = 0; j < size; j++) {
                    if (p1.pixelAbsolute(x*size+i, y*size+j)[0] + bias > p2.pixelAbsolute(x*size+i, y*size+j)[0] - bias) {
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
            r /= (double)(size * size);
            g /= (double)(size * size);
            b /= (double)(size * size);
            out.pixelAbsolute(x, y) = itkRGBPixel(r, g, b);
        }
    }
    return out;
}

double filterGaussian(ImageRGBd c, double mean, double variance, int ch = 0) {
    double n = 0.0;
    double ans = 0.0;
    for (int x = 0; x < c.width(); x++) {
        double xi = (double)x / (double)(c.width() - 1);
        double div = 1.0 / sqrt(variance * 2 * M_PI);
        double exp = -(pow(xi - mean, 2) / (2 * variance));
        double gauss = div * pow(M_E, exp);
        n += gauss;
        ans += c.pixelAbsolute(x, 0)[ch];
    }
    return ans / n;
}

ImageRGBd mhfiltering(ImageRGBd p1, ImageRGBd c1, ImageRGBd d1, ImageRGBd p2, ImageRGBd c2, ImageRGBd d2, int size, double bias = 0.0) {
    printf("\n\n");
    ImageRGBd out(256 / size, 256 / size);
    for (int x = 0; x < 256 / size; x++) {
        for (int y = 0; y < 256 / size; y++) {

            int x1 = x * size;
            int x2 = (x + 1) * size;
            int y1 = y * size;
            int y2 = (y + 1) * size;

            std::clock_t c_start_A = std::clock();
            double meanTopP1 = getTopMean(p1, p2, x1, x2, y1, y2);
            double varianceTopP1 = getTopVariance(p1, p2, x1, x2, y1, y2);
            std::clock_t c_end_A = std::clock();

            std::clock_t c_start_B = std::clock();
            double r1 = filterGaussian(c1, meanTopP1, varianceTopP1, 0) + getMean(d1, x1, x2, y1, y2, 0);
            double g1 = filterGaussian(c1, meanTopP1, varianceTopP1, 1) + getMean(d1, x1, x2, y1, y2, 1);
            double b1 = filterGaussian(c1, meanTopP1, varianceTopP1, 2) + getMean(d1, x1, x2, y1, y2, 2);
            std::clock_t c_end_B = std::clock();
            
            double meanTopP2 = getTopMean(p2, p1, x1, x2, y1, y2);
            double varianceTopP2 = getTopVariance(p2, p1, x1, x2, y1, y2);
            
            double r2 = filterGaussian(c1, meanTopP2, varianceTopP2, 0) + getMean(d2, x1, x2, y1, y2, 0);
            double g2 = filterGaussian(c1, meanTopP2, varianceTopP2, 1) + getMean(d2, x1, x2, y1, y2, 1);
            double b2 = filterGaussian(c1, meanTopP2, varianceTopP2, 2) + getMean(d2, x1, x2, y1, y2, 2);

            double meanP1 = getMean(p1, x1, x2, y1, y2);
            double meanP2 = getMean(p1, x1, x2, y1, y2);
            double varianceP1 = getVariance(p1, x1, x2, y1, y2);
            double varianceP2 = getVariance(p2, x1, x2, y1, y2);

            double v = ((meanP2 - bias) - (meanP1 + bias)) / sqrt(varianceP1 + varianceP2);
            double w = 0.5 + 0.5 * tanh(0.85 * v); // APPROX

            double r = w * r2 + (1.0 - w) * r1;
            double g = w * g2 + (1.0 - w) * g1;
            double b = w * b2 + (1.0 - w) * b1;
            
            out.pixelAbsolute(x, y)[0] = w; //TODO rgb
            out.pixelAbsolute(x, y)[1] = w; //TODO rgb
            out.pixelAbsolute(x, y)[2] = w; //TODO rgb




            double timeA = 1000.0 * (c_end_A-c_start_A) / CLOCKS_PER_SEC;
            double timeB = 1000.0 * (c_end_B-c_start_B) / CLOCKS_PER_SEC;
            printf("\033[F\033[Asize: %d, x: %d, y: %d                      \nMV~%2.2fms    G~%2.2fms   bs:%dx%d                     \n", size, x, y, timeA, timeB, (x2 - x1), (y2 - y1));
        }
    }
    return out;
}

void computeCD(ImageRGBd t, ImageRGBd p, ImageRGBd &c, ImageRGBd &d) {
    double n[256];
    double r[256];
    double g[256];
    double b[256];
    for (int i = 0; i < 256; i++) {
        n[i] = 0.0;
        r[i] = 0.0;
        g[i] = 0.0;
        b[i] = 0.0;
    }
    for (int x = 0; x < t.width(); x++) {
        for (int y = 0; y < t.height(); y++) {
            unsigned char i = p.pixelAbsolute(x, y)[0] * 255.0;
            r[i] += t.pixelAbsolute(x, y)[0];
            g[i] += t.pixelAbsolute(x, y)[1];
            b[i] += t.pixelAbsolute(x, y)[2];
            n[i] += 1.0;
        }
    }
    for (int i = 0; i < 256; i++) {
        if (n[i] > 0.0) {
            r[i] = r[i] / n[i];
            g[i] = g[i] / n[i];
            b[i] = b[i] / n[i];
        }
        c.pixelAbsolute(i, 0)[0] = r[i];
        c.pixelAbsolute(i, 0)[1] = g[i];
        c.pixelAbsolute(i, 0)[2] = b[i];    
    }
    for (int x = 0; x < t.width(); x++) {
        for (int y = 0; y < t.height(); y++) {
            double r = 0.0;
            double g = 0.0;
            double b = 0.0;
            unsigned char i = p.pixelAbsolute(x, y)[0] * 255.0;

            r = t.pixelAbsolute(x, y)[0] - c.pixelAbsolute(i, 0)[0];
            g = t.pixelAbsolute(x, y)[1] - c.pixelAbsolute(i, 0)[1];
            b = t.pixelAbsolute(x, y)[2] - c.pixelAbsolute(i, 0)[2];

            d.pixelAbsolute(x, y)[0] = r;
            d.pixelAbsolute(x, y)[1] = g;
            d.pixelAbsolute(x, y)[2] = b;
        }
    }
}

ImageRGBd load(char* path, bool centered = false) {
    ImageRGBu8 data;
    data.load(path);

    ImageRGBd datad(data.width(), data.height());

    for (int x = 0; x < data.width(); x++) {
        for (int y = 0; y < data.height(); y++) { 
            double r = (double)data.pixelAbsolute(x, y)[0] / 255.0;
            double g = (double)data.pixelAbsolute(x, y)[1] / 255.0;
            double b = (double)data.pixelAbsolute(x, y)[2] / 255.0;

            if (centered) {
                r = r * 2.0 - 1.0;
                g = g * 2.0 - 1.0;
                b = b * 2.0 - 1.0;
            }

            datad.pixelAbsolute(x, y)[0] = r;
            datad.pixelAbsolute(x, y)[1] = g;
            datad.pixelAbsolute(x, y)[2] = b;
        }
    }

    return datad;
}

double clamp (double v) {
    if (v < 0.0) return 0.0;
    if (v > 1.0) return 1.0;
    return v;
}

void save(ImageRGBd data, char* path, bool centered = false) {
    ImageRGBu8 datau8(data.width(), data.height());

    for (int x = 0; x < data.width(); x++) {
        for (int y = 0; y < data.height(); y++) {
            double r = data.pixelAbsolute(x, y)[0];
            double g = data.pixelAbsolute(x, y)[1];
            double b = data.pixelAbsolute(x, y)[2];
            if (centered) {
                r = (r + 1.0) / 2.0;
                g = (g + 1.0) / 2.0;
                b = (b + 1.0) / 2.0;
            }
            
            r = clamp(r);
            g = clamp(g);
            b = clamp(b);

            datau8.pixelAbsolute(x, y)[0] = (char)(r * 255.0);
            datau8.pixelAbsolute(x, y)[1] = (char)(g * 255.0);
            datau8.pixelAbsolute(x, y)[2] = (char)(b * 255.0);
        }
    }

    datau8.save(path);
}

int main(int argc, char** argv) {
	ImageRGBd t1 = load(argv[1]);
	ImageRGBd t2 = load(argv[2]);
	ImageRGBd p1 = load(argv[3]);
	ImageRGBd p2 = load(argv[4]);

	ImageRGBd out;
     
    out = filter(t1, p1, t2, p2, 1);
    save(out, "out1.png");
    out = filter(t1, p1, t2, p2, 2);
    save(out, "out2.png");
	out = filter(t1, p1, t2, p2, 4);
    save(out, "out4.png");
    out = filter(t1, p1, t2, p2, 8);
    save(out, "out8.png");
	out = filter(t1, p1, t2, p2, 16);
    save(out, "out16.png");
	out = filter(t1, p1, t2, p2, 32);
    save(out, "out32.png");
	out = filter(t1, p1, t2, p2, 64);
    save(out, "out64.png");
	out = filter(t1, p1, t2, p2, 128);
    save(out, "out128.png");
    out = filter(t1, p1, t2, p2, 256);
    save(out, "out256.png");

    ImageRGBd c1(256, 1);
    ImageRGBd d1(t1.width(), t1.height());
    computeCD(t1, p1, c1, d1);
    save(c1, "c1.png");
    save(d1, "d1.png", true);

    ImageRGBd c2(256, 1);
    ImageRGBd d2(t2.width(), t2.height());
    computeCD(t2, p2, c2, d2);
    save(c2, "c2.png");
    save(d2, "d2.png", true);

    out = mhfiltering(p1, c1, d1, p2, c2, d2, 1);
    save(out, "mh_out1.png");
    out = mhfiltering(p1, c1, d1, p2, c2, d2, 2);
    save(out, "mh_out2.png");
    out = mhfiltering(p1, c1, d1, p2, c2, d2, 4);
    save(out, "mh_out4.png");
    out = mhfiltering(p1, c1, d1, p2, c2, d2, 8);
    save(out, "mh_out8.png");
    out = mhfiltering(p1, c1, d1, p2, c2, d2, 16);
    save(out, "mh_out16.png");
    out = mhfiltering(p1, c1, d1, p2, c2, d2, 32);
    save(out, "mh_out32.png");
    out = mhfiltering(p1, c1, d1, p2, c2, d2, 64);
    save(out, "mh_out64.png");
    out = mhfiltering(p1, c1, d1, p2, c2, d2, 128);
    save(out, "mh_out128.png");
    out = mhfiltering(p1, c1, d1, p2, c2, d2, 256);
    save(out, "mh_out256.png");

	return 0;
}

