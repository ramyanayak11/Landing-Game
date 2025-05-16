
#pragma once

#include "ofMain.h"
#include "ofxGui.h"
#include  "ofxAssimpModelLoader.h"
#include "Octree.h"
#include "Force.h"
#include "Lander.h"
#include <glm/gtx/intersect.hpp>
using namespace std;

class ofApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();

		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void mouseEntered(int x, int y);
		void mouseExited(int x, int y);
		void windowResized(int w, int h);
		void dragEvent2(ofDragInfo dragInfo);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
		void drawAxis(ofVec3f);
		void initLightingAndMaterials();
		void savePicture();
		void toggleWireframeMode();
		void togglePointsDisplay();
		void toggleSelectTerrain();
		void setCameraTarget();
		bool mouseIntersectPlane(ofVec3f planePoint, ofVec3f planeNorm, ofVec3f &point);
		bool raySelectWithOctree(ofVec3f &pointRet);
		glm::vec3 getMousePointOnPlane(glm::vec3 p , glm::vec3 n);
        void loadLanderModel(); 


		void startThrust();
		void stopThrust();
		void rotateHeading(float degrees);
		void resetGameParams();


		// flags
		bool bAltKeyDown;
		bool bCtrlKeyDown;
		bool bWireframe;
		bool bDisplayPoints;
		bool bPointSelected;
		bool bHide;
		bool bLanderLoaded;
		bool bTerrainSelected;
		bool bInDrag = false;
		bool bLanderSelected = false;
		bool pointSelected = false;
		bool bDisplayOctree = false;

		// lights
		ofLight mainLight;     	// 1 - main light
		ofLight leftLight;    	// 2 - light on left
		ofLight rightLight;		// 3 - light on right
		ofLight backLight;    	// 3 - back light

		// cameras
		ofEasyCam mainCam;		// 1 - main camera
		ofCamera trackingCam;	// 2 - focused on lander
		ofCamera onboardCam;	// 3- "attached" to lander
		ofCamera *currCam = NULL;
		bool extraCamsInitialized = false;

		// lander, terrain, octree
		ofxAssimpModelLoader terrain;
		Lander lander;
		Box boundingBox, landerBounds;
		vector<Box> colBoxList;
		vector<Box> collidingLeafBoxes;
		Octree terrainOctree;
		TreeNode selectedNode;
		glm::vec3 mouseDownPos, mouseLastPos;
		vector<Box> bboxList;
	
		// dragging
		ofVec3f intersectPoint;

		// gui
		ofxPanel gui;

		// fuel
		float fuelRemaining = 120.0;		// 120 seconds of fuel
		float lastThrustTime = 0.0;
		bool isThrusting = false;

		// altitude
		float altitude;
		bool aboveTerrain = false;
		bool showAltitude = true;

		// gameplay
		bool intersectedTerrain = false;
		bool gameInSession = true;
		bool showEndScreen = false;
		string landingStatus = "";
		float landingTime = 0.0;

		// forces
		ThrustForce *thrustForce;
		GravityForce *gravityForce;
		float gravity = 0.05;

		// lander movement + rotation
		bool moveUp = false;
		bool moveDown = false;
		bool moveLeft = false;
		bool moveRight = false;
		bool moveForward = false;			// along heading
		bool moveBackward = false;
		bool rotLeft = false;
		bool rotRight = false;

		// background image
		ofImage background;

		// fonts
		ofTrueTypeFont boldFont;			// for bigger lettering
		ofTrueTypeFont largeFont;

		// sounds (play once)
		ofSoundPlayer gameOverWon;
		ofSoundPlayer gameOverNeutral;
		ofSoundPlayer gameOverLost;
		bool gameWonPlayed = false;
		bool gameNeutralPlayed = false;
		bool gameLostPlayed = false;





		// landing
		ofMesh landingEasy, landingMedium, landingHard;
		Octree easyOct, mediumOct, hardOct;
		string landingLocation;
		bool hitEasy, hitMedium, hitHard, hitTerrain;
};
