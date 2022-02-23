#include "GL/glew.h"
#include "ASTex/glrenderer.h"
#include "GL/freeglut.h"
#include "glm/glm.hpp"
#include "stdio.h"

glm::vec3 vertices[3];
GLuint VBO;


void glRendererInit(int *argc, char **argv) {
    glRendererInit(argc, argv, 250, 100, 1280, 720, "GL Renderer");
}

void glRendererInit(int *argc, char **argv, int x, int y, int w, int h, char *title) {
    glutInit(argc, argv);
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA);
    glutInitWindowSize(w, h);
    glutInitWindowPosition(x, y);
    glutCreateWindow(title);
    glutDisplayFunc(renderLoop);
    glClearColor(0, 0, 0, 0);

    GLenum res = glewInit();
    if (res != GLEW_OK) {
        fprintf(stderr, "Error: '%s'\n", glewGetErrorString(res));
        exit(1);
    }

    vertices[0] = glm::vec3(-.5, -.5, 0);
    vertices[1] = glm::vec3(0, .5, 0);
    vertices[2] = glm::vec3(.5, -.5, 0);

    glGenBuffers(1, &VBO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glutMainLoop();
}


void renderLoop() {
    glClear(GL_COLOR_BUFFER_BIT);

    glEnableVertexAttribArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, 0);
    glColor3d(0.5, 0.5, 1);
    glDrawArrays(GL_TRIANGLES, 0, 3);

    glDisableVertexAttribArray(0);
    glutSwapBuffers();
}