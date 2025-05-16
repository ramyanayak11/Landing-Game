
#include "Force.h"
#include "Lander.h"

// gravity force
GravityForce::GravityForce(const glm::vec3 &grav) {
	gravity = grav;
}

void GravityForce::updateForce(Lander* lander) {
	lander->forces += gravity * lander->mass;                   // f = mg
}


// thrust force
ThrustForce::ThrustForce(const glm::vec3 &dir) {
    thrust = dir;
}

void ThrustForce::updateForce(Lander* lander) {
    if (thrustOn) {
        lander->forces += thrust;
    }
}


// turbulence force
TurbulenceForce::TurbulenceForce(const glm::vec3 &min, const glm::vec3 &max) {
	tmin = min;
	tmax = max;
}

void TurbulenceForce::updateForce(Lander* lander) {
	// we are going to add a little "noise" to a particles
	// forces to achieve a more natual look to the motion
	//
	lander->forces.x += ofRandom(tmin.x, tmax.x);
	lander->forces.y += ofRandom(tmin.y, tmax.y);
	lander->forces.z += ofRandom(tmin.z, tmax.z);
}


// impulse radial force - a "one shot" force that
// eminates radially outward in random directions.
ImpulseRadialForce::ImpulseRadialForce(float mag) {
	magnitude = mag;
	applyOnce = true;
}

void ImpulseRadialForce::updateForce(Lander* lander) {
	// we basically create a random direction for each particle
	// the force is only added once after it is triggered.
	//
	glm::vec3 dir = glm::vec3(ofRandom(-1, 1), ofRandom(-1, 1), ofRandom(-1, 1));
	lander->forces += glm::normalize(dir) * magnitude;
}