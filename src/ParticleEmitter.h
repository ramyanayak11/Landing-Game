// Team Members: Ramya Nayak, Sanjana Nagwekar
// CS 134 - Final Project
// May 16, 2025

#pragma once
#include "ofMain.h"

struct Particle {
    glm::vec3    position;
    glm::vec3    velocity;
    float        life;
    float        initialLife;
    bool         alive;
};

class ParticleEmitter {
public:
    ParticleEmitter(int maxParticles = 3000, float emitRate = 800);
    ~ParticleEmitter();

    void setEmitterPosition(const glm::vec3 &pos);
    void setEmitRate(float rate);

    // dt = ofGetLastFrameTime()
    void update(float dt, bool emitting);
    void draw(const ofMatrix4x4 &cameraMVP);

private:
    void emitParticle();

    vector<Particle> particles;
    int              maxCount;
    float            emitRate;
    float            emitResidue;
    glm::vec3        emitterPos;

    ofVboMesh        mesh;
    ofShader         shader;
};