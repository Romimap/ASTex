#ifndef __GLRENDERER__
#define __GLRENDERER__

void glRendererInit(int *argc, char **argv);
void glRendererInit(int *argc, char **argv, int x, int y, int w, int h, char *title);
void renderLoop ();

#endif