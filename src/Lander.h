// Team Members: Ramya Nayak, Sanjana Nagwekar
// CS 134 - Final Project
// May 16, 2025

#pragma once
#include "ofxAssimpModelLoader.h"
#include <glm/gtx/intersect.hpp>
#include "Force.h"
#include "ofMain.h"


class Lander {
    public:
    ofxAssimpModelLoader model;
    glm::vec3 position, velocity, acceleration, forces;
    glm::vec3 heading;
    float damping, mass;

    vector<Force*> forceList;

    Lander();
    void integrate();
    void update();
    void draw();
    void updateModelPosition();
};