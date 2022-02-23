#include "ASTex/glrenderer.h"
#include "GL/freeglut.h"


void glRendererInit(int *argc, char **argv, int x, int y, int w, int h, char *title) {
    glutInit(argc, argv);
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA);
    glutInitWindowSize(w, h);
    glutInitWindowPosition(x, y);
    glutCreateWindow(title);
    glutDisplayFunc(renderLoop);
    glClearColor(0, 0, 0, 0);
    glutMainLoop();
}


void renderLoop() {
    glClear(GL_COLOR_BUFFER_BIT);
    glutSwapBuffers();
}