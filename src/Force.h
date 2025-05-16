// Team Members: Ramya Nayak, Sanjana Nagwekar
// CS 134 - Final Project
// May 16, 2025

#pragma once
#include "ofMain.h"

class Lander;       // forward declaration to avoid circular dependencies

// virtual class - must be subclassed to create forces
class Force {
    public:
    bool applyOnce = false;
    bool applied = false;
    virtual void updateForce(Lander *lander) = 0;

};

class GravityForce: public Force {
    public:
	glm::vec3 gravity;

	GravityForce(const glm::vec3 & grav);
	void updateForce(Lander* lander) override;
};

class ThrustForce : public Force {
    public:
    glm::vec3 thrust;
    bool thrustOn;

    ThrustForce(const glm::vec3 & dir);
    void updateForce(Lander* lander) override;

};

class TurbulenceForce : public Force {
    public:
	glm::vec3 tmin, tmax;

	TurbulenceForce(const glm::vec3 & min, const glm::vec3 &max);
	void updateForce(Lander* lander) override;
};

class ImpulseRadialForce : public Force {
    public:
	float magnitude;

	ImpulseRadialForce(float mag); 
	void updateForce(Lander* lander) override;
};
