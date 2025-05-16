// Team Members: Ramya Nayak, Sanjana Nagwekar
// CS 134 - Final Project
// May 16, 2025

#include "Lander.h"

Lander::Lander() {
    velocity = glm::vec3(0, 0, 0);
	acceleration = glm::vec3(0, 0, 0);
	position = glm::vec3(0, 100, 0);
	forces = glm::vec3(0, 0, 0);
    heading = glm::vec3(0, 0, -1);
	damping = 0.97;
	mass = 1;
}

void Lander::integrate() { 
    float dt = ofGetLastFrameTime();      // interval for this step
    dt = ofClamp(dt, 0.0f, 0.1f); 

    position += (velocity * dt);            // update position based on velocity

    // update acceleration with accumulated lander forces
    glm::vec3 currAcc = acceleration;
    currAcc += (forces * (1.0/mass));       // (f = ma) OR (a = 1/m * f)
    velocity += currAcc * dt;

    velocity *= damping;                    // add damping

    // clear forces on particle (they get re-added each step)
	forces = glm::vec3(0, 0, 0);

}

void Lander::update() {
    for (int i = 0; i < forceList.size(); ++i) {
        if (!forceList[i]->applied) {
            forceList[i]->updateForce(this);
        }
    }

    for (int i = 0; i < forceList.size(); ++i) {
        if (forceList[i]->applyOnce) {
            forceList[i]->applied = true;
        }
    }

    integrate();
    updateModelPosition();
}

void Lander::updateModelPosition() {
    model.setPosition(position.x, position.y, position.z);
}
