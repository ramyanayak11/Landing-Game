// Team Members: Ramya Nayak, Sanjana Nagwekar
// CS 134 - Final Project
// May 16, 2025

#include "ParticleEmitter.h"

ParticleEmitter::ParticleEmitter(int maxParticles, float rate)
: maxCount(maxParticles)
, emitRate(rate)
, emitResidue(0)
, emitterPos(0,0,0)
{
    particles.resize(maxCount);
    for(auto &p : particles) p.alive = false;

    mesh.setMode(OF_PRIMITIVE_POINTS);
    mesh.getVertices().resize(maxCount);
    mesh.getColors().resize(maxCount);

    shader.load("shaders/particle.vert", "shaders/particle.frag");
}

ParticleEmitter::~ParticleEmitter(){}

void ParticleEmitter::setEmitterPosition(const glm::vec3 &pos){
    emitterPos = pos;
}

void ParticleEmitter::setEmitRate(float rate){
    emitRate = rate;
}

void ParticleEmitter::update(float dt, bool emitting){
    
    // spawn
    if(emitting){
        float toEmit = emitRate * dt + emitResidue;
        int   count  = (int)toEmit;
        emitResidue  = toEmit - count;
        for(int i=0; i<count; ++i) emitParticle();
    }
    
    for(int i = 0; i < maxCount; ++i){
        auto &p = particles[i];
        if(!p.alive) continue;
        
        p.life -= dt;
        if(p.life <= 0){
            p.alive = false;
            continue;
        }
        
        p.velocity += glm::vec3(0, 0.4f, 0) * dt;
        
        // integrate
        p.position += p.velocity * dt;
        mesh.setVertex(i, p.position);
        

        float t = p.life / p.initialLife;  // from 1 → 0
        mesh.setColor(i, ofFloatColor(1.0f, 0.5f, 0.0f, t));
    }
}

void ParticleEmitter::emitParticle(){
    for(auto &p : particles){
        if(!p.alive){
            p.alive       = true;
            p.initialLife = ofRandom(0.8f, 1.5f);
            p.life        = p.initialLife;
            p.position    = emitterPos;

            glm::vec3 rawDir = glm::vec3(
                ofRandom(-0.2f, 0.2f),   // slight x
                1.0f + ofRandom(0.2f, 0.5f), // strong y
                ofRandom(-0.2f, 0.2f)    // slight z
            );
            glm::vec3 dir = glm::normalize(rawDir);

            // speed
            p.velocity = dir * ofRandom(10.0f, 20.0f);
            break;
        }
    }
}


void ParticleEmitter::draw(const ofMatrix4x4 &cameraMVP){
    ofEnableBlendMode(OF_BLENDMODE_ADD);
    shader.begin();
      shader.setUniformMatrix4f("modelViewProjectionMatrix", cameraMVP);
      shader.setUniform1f("pointSize", 48.0f);
      mesh.draw();
    shader.end();
    ofEnableBlendMode(OF_BLENDMODE_ALPHA);
}