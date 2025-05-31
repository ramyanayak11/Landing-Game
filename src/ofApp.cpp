// Team Members: Ramya Nayak, Sanjana Nagwekar
// CS 134 - Final Project
// May 16, 2025

#include "ofApp.h"
#include "Util.h"
#include <string>

//--------------------------------------------------------------
// setup scene, lighting, state and load geometry
//
void ofApp::setup(){
	bWireframe = false;
	bDisplayPoints = false;
	bAltKeyDown = false;
	bCtrlKeyDown = false;
	bLanderLoaded = false;
	bTerrainSelected = true;

	initLightingAndMaterials();
	ofSetVerticalSync(true);
	ofEnableSmoothing();
	ofEnableDepthTest();
	ofEnableLighting();

	// main light
    mainLight.setDiffuseColor(ofFloatColor(1.0, 1.0, 1.0));
    mainLight.setSpecularColor(ofFloatColor(0.5, 0.5, 0.5));
    mainLight.setPosition(0, 500, 0);
    mainLight.setDirectional();
    mainLight.lookAt(glm::vec3(0, 0, 0));
    mainLight.enable();

    // left light
    leftLight.setDiffuseColor(ofFloatColor(1.0, 1.0, 1.0));
    leftLight.setSpecularColor(ofFloatColor(0.8, 0.8, 0.8));
    leftLight.setPosition(-300, 300, 300);
    leftLight.setPointLight();
    leftLight.enable();

    // right light
    rightLight.setDiffuseColor(ofFloatColor(1.0, 1.0, 1.0));
    rightLight.setSpecularColor(ofFloatColor(0.8, 0.8, 0.8));
    rightLight.setPosition(300, 300, 300);
    rightLight.setPointLight();
    rightLight.enable();

    // back light
    backLight.setDiffuseColor(ofFloatColor(1.0, 1.0, 1.0));
    backLight.setSpecularColor(ofFloatColor(0.8, 0.8, 0.8));
    backLight.setPosition(0, 600, -600);
    backLight.lookAt(glm::vec3(0, 0, 0));
    backLight.enable();

    // 1st camera (looks at the origin)
    mainCam.setDistance(80);
    mainCam.setNearClip(.1);
    mainCam.setFov(65.5);
    mainCam.setPosition(glm::vec3(-200, 300, -300));
    mainCam.lookAt(glm::vec3(0, 0, 0));

	// 2nd camera (has a fixed position, always looks at the lander)
	trackingCam.setNearClip(0.1);
	trackingCam.setFov(65.5);

	// 3rd camera ("attached" to the lander, looks downward)
	onboardCam.setNearClip(0.1);
	onboardCam.setFov(65.5);

	// temporarily set all cameras to mainCam's position (since lander is not loaded in)
	trackingCam.setPosition(mainCam.getPosition());
	onboardCam.setPosition(mainCam.getPosition());

	currCam = &mainCam;

	// load terrain
	terrain.load("geo/islands_scaled2.obj");
	terrain.setScaleNormalization(false);
	terrain.setPosition(0, 0, 0);            // origin

	// create octree
	terrainOctree.create(terrain.getMesh(1), 20);

	// parts of the terrain
	landingEasy = terrain.getMesh("IslandField Landing_EASY");
	landingMedium = terrain.getMesh("IslandField Landing_MEDIUM");
	landingHard = terrain.getMesh("IslandField Landing_HARD");
	waterMesh = terrain.getMesh("IslandField WaterMesh");

	easyOct.create(landingEasy, 20);
	mediumOct.create(landingMedium, 20);
	hardOct.create(landingHard, 20);
	waterOct.create(waterMesh, 20);

	// forces
	thrustForce = new ThrustForce(glm::vec3(0, 0, 0));
	gravityForce = new GravityForce(glm::vec3(0, 0, 0));

	// exhaust emitter
	if(exhaustEmitter) 
        delete exhaustEmitter;
    exhaustEmitter = new ParticleEmitter(3000, 800.0f);

	// set up gui
	gui.setup();
	bHide = false;

	resetGameParams(); 

	// load background image, fonts (for larger size), and sounds
    background.load("images/sky.jpg");
	boldFont.load("fonts/futura_book.otf", 14);
	largeFont.load("fonts/futura_book.otf", 20);
	thrustingSound.load("sounds/thrust.wav");
	gameOverWon.load("sounds/gameOverWon.mp3");
	gameOverNeutral.load("sounds/gameOverNeutral.mp3");
    gameOverLost.load("sounds/gameOverLost.mp3");
	loadLanderModel();
}

//--------------------------------------------------------------
void ofApp::loadLanderModel() {
    string balloonPath = "geo/balloon_model2.obj";
    if (lander.model.load(balloonPath)) {
        lander.model.setScaleNormalization(false);
        lander.model.setScale(3, 3, 3);

        // position above the terrain
        glm::vec3 startPos(0, 100, 0);
        lander.model.setPosition(startPos.x, startPos.y, startPos.z);
        lander.position = startPos;
        bLanderLoaded = true;

        // rebuild collision bounds
        bboxList.clear();
        for (int i = 0; i < lander.model.getMeshCount(); ++i) {
            bboxList.push_back(Octree::meshBounds(lander.model.getMesh(i)));
        }
        // reset cameras
        extraCamsInitialized = false;

        cout << "Balloon auto-loaded from " << balloonPath << endl;
    } else {
        cout << "Failed to load balloon model: " << balloonPath << endl;
    }
}
 
//--------------------------------------------------------------
void ofApp::update() { 

	// gameplay
	//
	if (!gameInSession && !showEndScreen) {						// show game end screen 3.0 seconds after landing
		float currTime = ofGetElapsedTimef();
		if (currTime - landingTime > 3.0) {
			showEndScreen = true;
		}
	}

	// initialize lander-dependent cameras once the lander has been loaded
	//
	if (bLanderLoaded && !extraCamsInitialized) {
		trackingCam.setPosition(glm::vec3(-150, 100, -150));
		trackingCam.lookAt(lander.position);

		onboardCam.setPosition(lander.position);
		onboardCam.lookAt(lander.position + glm::vec3(0, -1, 0));	// looking down from lander

		extraCamsInitialized = true;
	}

	float thrustAmt = 0.1;
	bool moved = false;

	thrustForce->thrust = glm::vec3(0, 0, 0);					// reset each frame (to avoid moving forever)
	gravityForce->gravity = glm::vec3(0, 0, 0);

	glm::vec3 up(0, 1, 0);
	glm::vec3 left = glm::normalize(glm::cross(lander.heading, up));

	// updating thrust
	//
	if (moveUp) {
		thrustForce->thrust += up * thrustAmt;
		moved = true;
	}
	if (moveDown) {
		thrustForce->thrust -= up * thrustAmt;
		moved = true;
	}
	if (moveLeft) {
		thrustForce->thrust += left * thrustAmt;
		moved = true;
	}
	if (moveRight) {
		thrustForce->thrust -= left * thrustAmt; 
		moved = true;
	}
	if (moveForward) {
		thrustForce->thrust += lander.heading * thrustAmt;
		moved = true;
	}
	if (moveBackward) {
		thrustForce->thrust -= lander.heading * thrustAmt;
		moved = true; 
	}


	if (bLanderLoaded) {
		float dt = ofGetLastFrameTime();
        // emit from the back of the lander
        glm::vec3 emitPos = lander.position + lander.heading * -1.0f;
        exhaustEmitter->setEmitterPosition(emitPos);
        exhaustEmitter->update(dt, thrustForce->thrustOn);

		// moving the lander
		//
		if (moved && !intersectedTerrain) {						// don't move anymore if lander has landed

			gravityForce->gravity.y += -gravity;				// if gravity applied in only -y, lander goes diagonal when moved left/right
																// and lander drops somewhat rapidly
			lander.forceList.push_back(thrustForce);
			lander.forceList.push_back(gravityForce);
		}


		// getting the lander's altitude
		//
		float terrainHeight;
		if (getTerrainHeight(lander.position, terrainHeight)) {
			// Get the lowest point of the lander's bounding box
			float landerBottom = lander.model.getSceneMin().y + lander.position.y;
			altitude = landerBottom - terrainHeight;
			aboveTerrain = true;
		} 
		else {
			aboveTerrain = false;
			altitude = -1.0f; // Indicate no ground below
		}


		// collision detection
		//
		ofVec3f min = lander.model.getSceneMin() + lander.model.getPosition();
		ofVec3f max = lander.model.getSceneMax() + lander.model.getPosition();
		Box bounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));

		hitEasy = hitMedium = hitHard = hitOther = false;

		// check each landing area
        colBoxList.clear();
        easyOct.intersect(bounds, easyOct.root, colBoxList, collidingLeafBoxes);
        hitEasy = colBoxList.size() >= 1;
		if (hitEasy) { landingLocation = "Easy Landing Pad"; }

        colBoxList.clear();
        mediumOct.intersect(bounds, mediumOct.root, colBoxList, collidingLeafBoxes);
        hitMedium = colBoxList.size() >= 1;
		if (hitMedium) { landingLocation = "Medium Landing Pad"; }

        colBoxList.clear();
        hardOct.intersect(bounds, hardOct.root, colBoxList, collidingLeafBoxes);
        hitHard = colBoxList.size() >= 1;
		if (hitHard) { landingLocation = "Hard Landing Pad"; }

		// check water + other parts of the terrain (if not already landed on a landing pad)
		if (!hitEasy && !hitMedium && !hitHard && altitude <= 0.0) {
			colBoxList.clear();
			waterOct.intersect(bounds, waterOct.root, colBoxList, collidingLeafBoxes);
			hitOther = colBoxList.size() >= 1;
			if (hitOther) { landingLocation = "other"; }
			else {
				colBoxList.clear();
				terrainOctree.intersect(bounds, terrainOctree.root, colBoxList, collidingLeafBoxes);
				hitOther = colBoxList.size() >= 20;
				if (hitOther) { landingLocation = "other"; }

			}
		}
        

		if ((hitEasy || hitMedium || hitHard || hitOther) && !intersectedTerrain) {
			intersectedTerrain = true;

			keepOnSurface();									// to prevent lander going through the terrain

			// apply impulse force (bounce effect) after landing
    		lander.velocity.y *= -0.2;  // dampen vertical velocity

			glm::vec3 landingPos = lander.model.getPosition();
            glm::vec3 reverseDir = landingPos + glm::vec3(0, 1, 0) * 1.0;
            lander.position = reverseDir;
            lander.updateModelPosition();

			float speed = abs(lander.velocity.y);
			if (hitEasy || hitMedium || hitHard) {
				if (speed < 8.0) {
					landingStatus = "correct";
					playerPoints = 50;
				}
				else {
					landingStatus = "hard";
					playerPoints = 20;
				}
			}
			else if (hitOther) {
				landingStatus = "crash";
				playerPoints = 0;
			}
			
			cout << "balloon intersected terrain at speed: " << speed << endl;
			cout << "balloon landed on: " << landingLocation << endl;

			landingTime = ofGetElapsedTimef();
            gameInSession = false;

			lander.forceList.clear();												// clear all forces (lander shouldn't move after landing)
			lander.velocity = glm::vec3(0);
		}
		

		if (fuelRemaining == 0 && landingStatus.empty()) {
			landingStatus = "timeup";
			gameInSession = false;
		}

		// update lander
		lander.update();

		// update cameras dependent on the lander
		//
		// trackingCam continues looking at the lander
		trackingCam.lookAt(lander.position);
		//
		// onboardCam depends on lander position
		onboardCam.setPosition(lander.position);
    	onboardCam.lookAt(lander.position + glm::vec3(0, -1, 0));
	}


	// calculating the fuel remaining
	if (isThrusting && fuelRemaining > 0) {
		float currTime = ofGetElapsedTimef();
		fuelRemaining -= (currTime - lastThrustTime);
		lastThrustTime = currTime;

		if (fuelRemaining < 0) {
			fuelRemaining = 0;
			isThrusting = false;
		}
	} 


	// play winning/losing sound once game is over
	if (showEndScreen) {
		if (landingStatus == "correct" && !gameWonPlayed) {
			gameOverWon.play();
			gameWonPlayed = true;
		}
		else if ((landingStatus == "hard" || landingStatus == "quit" || landingStatus == "timeup") && !gameNeutralPlayed) {
			gameOverNeutral.play();				// play neutral sound when player quits, time is up, or has hard landing
			gameNeutralPlayed = true;
		}
		else if (landingStatus == "crash" && !gameLostPlayed) {
			gameOverLost.play();
			gameLostPlayed = true;
		}
	}
	
}

//--------------------------------------------------------------
void ofApp::draw() {

	if (showStartScreen) {
		ofDisableDepthTest();
		ofSetBackgroundColor(164, 195, 210);	// pastel blue
		ofSetColor(ofColor::black);

		float width = ofGetWindowWidth();
		float height = ofGetWindowHeight();

		string gameTitle = "Balloon Landing Game";
		string instructions = "Instructions";
		string instr1 = "EASY CHALLENGE: Land on the yellow landing pad";
		string instr2 = "MEDIUM CHALLENGE: Land on the orange landing pad";
		string instr3 = "HARD CHALLENGE: Land on the red landing pad";
		string playLine = "press 'spacebar' to play";
		string quitLine = "press 'q' to quit the game";

		largeFont.drawString(gameTitle, width/2 - largeFont.stringWidth(gameTitle)/2, height/2 - 100);
		boldFont.drawString(instructions, width/2 - boldFont.stringWidth(instructions)/2, height/2 - 40);
		boldFont.drawString(instr1, width/2 - boldFont.stringWidth(instr1)/2, height/2 - 0);
		boldFont.drawString(instr2, width/2 - boldFont.stringWidth(instr2)/2, height/2 + 40);
		boldFont.drawString(instr3, width/2 - boldFont.stringWidth(instr3)/2, height/2 + 80);
		boldFont.drawString(playLine, width/2 - boldFont.stringWidth(playLine)/2, height/2 + 160);
		boldFont.drawString(quitLine, width/2 - boldFont.stringWidth(quitLine)/2, height/2 + 200);

	}
	else if (!gameInSession && showEndScreen) {		// shows game ending screen

		if (!landingStatus.empty()) {
			ofDisableDepthTest();
			ofSetColor(ofColor::black);

			float width = ofGetWindowWidth();
			float height = ofGetWindowHeight();

			if (landingStatus == "correct") {					// correct landing
				ofSetBackgroundColor(190, 240, 180);	// pastel green

				string line1 = "--- Congratulations! ---";
				string line2 = "You landed correctly at the " +  landingLocation + "!";

				largeFont.drawString(line1, width/2 - largeFont.stringWidth(line1)/2, height/2 - 60);
				largeFont.drawString(line2, width/2 - largeFont.stringWidth(line2)/2, height/2);
			}
			else if (landingStatus == "hard") {					// hard landing
				ofSetBackgroundColor(255, 238, 140);	// pastel yellow

				string line1 = "-------- Game Over --------";
				string line2 = "You had a hard landing!";
				string line3 = "Would you like to try again?";

				largeFont.drawString(line1, width/2 - largeFont.stringWidth(line1)/2, height/2 - 100);
				largeFont.drawString(line2, width/2 - largeFont.stringWidth(line2)/2, height/2 - 40);
				largeFont.drawString(line3, width/2 - largeFont.stringWidth(line3)/2, height/2);
			}
			else if (landingStatus == "crash") {				// crash landing
				ofSetBackgroundColor(250, 160, 160);	// pastel red

				string line1 = "-------- Game Over --------";
				string line2 = "Oh, no! You had a crash landing!";
				string line3 = "Better luck next time :((";

				largeFont.drawString(line1, width/2 - largeFont.stringWidth(line1)/2, height/2 - 100);
				largeFont.drawString(line2, width/2 - largeFont.stringWidth(line2)/2, height/2 - 40);
				largeFont.drawString(line3, width/2 - largeFont.stringWidth(line3)/2, height/2);
			}
			else if (landingStatus == "timeup") {				// out of fuel
				ofSetBackgroundColor(255, 238, 140);	// pastel yellow

				string line1 = "-------- Game Over --------";
				string line2 = "Oh, no! You're out of fuel!'";
				string line3 = "Better luck next time :((";

				largeFont.drawString(line1, width/2 - largeFont.stringWidth(line1)/2, height/2 - 100);
				largeFont.drawString(line2, width/2 - largeFont.stringWidth(line2)/2, height/2 - 40);
				largeFont.drawString(line3, width/2 - largeFont.stringWidth(line3)/2, height/2);
			}
			else {												// player quit game
				ofSetBackgroundColor(255, 238, 140);	// pastel yellow

				string line1 = "-------- Game Over --------";
				string line2 = "You quit the game";
				string line3 = "Would you like to try again?";

				largeFont.drawString(line1, width/2 - largeFont.stringWidth(line1)/2, height/2 - 100);
				largeFont.drawString(line2, width/2 - largeFont.stringWidth(line2)/2, height/2 - 40);
				largeFont.drawString(line3, width/2 - largeFont.stringWidth(line3)/2, height/2);
			}

			if (landingStatus != "quit") {
				string showPoints = "Points earned: " + to_string(playerPoints);
				largeFont.drawString(showPoints, width/2 - largeFont.stringWidth(showPoints)/2, height/2 + 40);
			}

			string playAgain = "press 'spacebar' to play again";
			string quit = "press 'q' to quit the game";

			boldFont.drawString(playAgain, width/2 - boldFont.stringWidth(playAgain)/2, height/2 + 140);
			boldFont.drawString(quit, width/2 - boldFont.stringWidth(quit)/2, height/2 + 170);
		}
	}
	else {

		ofSetColor(ofColor::white);
		ofDisableDepthTest();		// disable 3d for background
		background.draw(0, 0, ofGetWidth(), ofGetHeight());
		ofEnableDepthTest();

		ofNoFill();

		glDepthMask(false);
		glDepthMask(true);

		currCam->begin();

		ofEnableLighting();
		ofPushMatrix();

		if (bWireframe) {                    // wireframe mode  (include axis)
			ofDisableLighting();
			ofSetColor(ofColor::slateGray);
			terrain.drawWireframe();
			if (bLanderLoaded) {
				lander.model.drawWireframe();
				if (!bTerrainSelected) drawAxis(lander.model.getPosition());
			}
			if (bTerrainSelected) drawAxis(ofVec3f(0, 0, 0));
		}
		else {
			ofEnableLighting();              // shaded mode
			terrain.drawFaces();
			ofMesh mesh;
			if (bLanderLoaded) {
				lander.model.drawFaces();
				exhaustEmitter->draw(currCam->getModelViewProjectionMatrix());
				ofSetColor(ofColor::white);

				if (!bTerrainSelected) drawAxis(lander.model.getPosition());
			}
		}
		if (bTerrainSelected) drawAxis(ofVec3f(0, 0, 0));

		// recursively draw octree
		//
		ofDisableLighting();
		int level = 0;

		if (bDisplayOctree) {
			ofNoFill();
			ofSetColor(ofColor::white);

			//terrainOctree.drawLeafNodes(terrainOctree.root);
			easyOct.draw(3, 0);
			mediumOct.draw(3, 0);
			hardOct.draw(3, 0);
		}

		ofPopMatrix(); 
		ofDisableLighting();

		currCam->end();

		// instructions + altitude
		ofSetColor(ofColor::black);
		boldFont.drawString("Fuel Remaining: " + ofToString(fuelRemaining, 1) + "s", 10, 30);
		boldFont.drawString("Maneuver Guide:", 10, ofGetWindowHeight() - 120);
		boldFont.drawString("| arrow keys to move up, down, left, right", 10, ofGetWindowHeight() - 80);
		boldFont.drawString("| 'f' to move forward, 'b' to move backward", 10, ofGetWindowHeight() - 50);
		boldFont.drawString("| change direction -- 'n' for clockwise , 'm' for counterclockwise", 10, ofGetWindowHeight() - 20);

		if (showAltitude) {
			if (bLanderLoaded && aboveTerrain) {
				boldFont.drawString("Altitude above ground: " + ofToString(altitude, 1), ofGetWindowWidth() - 245, 30);
			} 
			else if (bLanderLoaded && !aboveTerrain) {
				boldFont.drawString("Altitude above ground: [lander not above terrain]", ofGetWindowWidth() - 405, 30);
			}
			else {
				boldFont.drawString("Altitude above ground: [lander not in scene]", ofGetWindowWidth() - 370, 30);
			}
		}
	}

}

// Draw an XYZ axis in RGB at world (0,0,0) for reference.
//
void ofApp::drawAxis(ofVec3f location) {

	ofPushMatrix();
	ofTranslate(location);

	ofSetLineWidth(1.0);

	// X Axis
	ofSetColor(ofColor(255, 0, 0));
	ofDrawLine(ofPoint(0, 0, 0), ofPoint(1, 0, 0));
	

	// Y Axis
	ofSetColor(ofColor(0, 255, 0));
	ofDrawLine(ofPoint(0, 0, 0), ofPoint(0, 1, 0));

	// Z Axis
	ofSetColor(ofColor(0, 0, 255));
	ofDrawLine(ofPoint(0, 0, 0), ofPoint(0, 0, 1));

	ofPopMatrix();
}

void ofApp::keyPressed(int key) {

	switch (key) {
	case 'a':
		showAltitude = !showAltitude;
		break;
	case 'B':
	case 'b':								// backward along heading
		if (!intersectedTerrain && gameInSession) {
			moveBackward = true;
			startThrust();
		}
		break;
	case 'C':
	case 'c':
		if (mainCam.getMouseInputEnabled()) mainCam.disableMouseInput();
		else mainCam.enableMouseInput();
		break;
	case 'd':
	case 'F':
		ofToggleFullscreen();
		break;
	case 'f':								// forward along heading
		if (!intersectedTerrain && gameInSession) {
			moveForward = true;
			startThrust();
		}
		break;
	case 'H':
	case 'h':
		break;
	case 'L':
	case 'l':
		break;
	case 'm':								// rotate heading clockwise
		rotLeft = true;
		rotateHeading(10.0);
		break;
	case 'n':								// rotate heading counterclockwise
		rotRight = true;
		rotateHeading(-10.0);
		break;
	case 'O':
	case 'o':
		bDisplayOctree = !bDisplayOctree;
		break;
	case 'q':								// press q to exit
		if (gameInSession || showStartScreen) {
			showStartScreen = false;
			gameInSession = false;
			landingStatus = "quit";
		}
		else {
			ofExit();
		}
	case 'r':
		mainCam.reset();
		break;
	case 's':
		savePicture();
		break;
	case 't':
		setCameraTarget();
		break;
	case 'u':
		break;
	case 'v':
		togglePointsDisplay();
		break;
	case 'V':
		break;
	case 'w':
		toggleWireframeMode();
		break;
	case ' ':
		if (!gameInSession && showStartScreen) {
			showStartScreen = false;
			gameInSession = true;
		}
		else if (!gameInSession && showEndScreen) {	// if player wants to play again,
			resetGameParams();					// reset all game variables
			gameInSession = true;
		}
		break;
	case OF_KEY_F1:
		currCam = &mainCam;
		cout << "current camera: mainCam" << endl;
		break;
	case OF_KEY_F2:
		currCam = &trackingCam;
		cout << "current camera: trackingCam" << endl;
		break;
	case OF_KEY_F3:
		currCam = &onboardCam;
		cout << "current camera: onboardCam" << endl;
		break;
	case OF_KEY_ALT:
		mainCam.enableMouseInput();
		bAltKeyDown = true;
		break;
	case OF_KEY_CONTROL:
		bCtrlKeyDown = true;
		break;
	case OF_KEY_DOWN:						// down
		if (!intersectedTerrain && gameInSession) {
			moveDown = true;
			startThrust();
		}
		break;
	case OF_KEY_UP:							// up
		if (!intersectedTerrain && gameInSession) {
			moveUp = true;
			startThrust();
		}
		break;
	case OF_KEY_LEFT:						// left
		if (!intersectedTerrain && gameInSession) {
			moveLeft = true;
			startThrust();
		}
		break;
	case OF_KEY_RIGHT:						// right
		if (!intersectedTerrain && gameInSession) {
			moveRight = true;
			startThrust();
		}
		break;
	default:
		break;
	}
}

void ofApp::toggleWireframeMode() {
	bWireframe = !bWireframe;
}

void ofApp::toggleSelectTerrain() {
	bTerrainSelected = !bTerrainSelected;
}

void ofApp::togglePointsDisplay() {
	bDisplayPoints = !bDisplayPoints;
}

void ofApp::keyReleased(int key) {

	switch (key) {
	case 'b':
		moveBackward = false;
		stopThrust();
		break;
	case 'f':
		moveForward = false;
		stopThrust();
		break;
	case OF_KEY_ALT:
		mainCam.disableMouseInput();
		bAltKeyDown = false;
		break;
	case OF_KEY_CONTROL:
		bCtrlKeyDown = false;
		break;
	case OF_KEY_DOWN:
		moveDown = false;
		stopThrust();
		break;
	case OF_KEY_UP:
		moveUp = false;
		stopThrust();
		break;
	case OF_KEY_LEFT:
		moveLeft = false;
		stopThrust();
		break;
	case OF_KEY_RIGHT:
		moveRight = false;
		stopThrust();
		break;
	default:
		break;
	}
}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

	
}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button) {

	// if moving camera, don't allow mouse interaction
	if (mainCam.getMouseInputEnabled()) return;

	// if rover is loaded, test for selection
	if (bLanderLoaded) {
		glm::vec3 origin = mainCam.getPosition();
		glm::vec3 mouseWorld = mainCam.screenToWorld(glm::vec3(mouseX, mouseY, 0));
		glm::vec3 mouseDir = glm::normalize(mouseWorld - origin);

		ofVec3f min = lander.model.getSceneMin() + lander.model.getPosition();
		ofVec3f max = lander.model.getSceneMax() + lander.model.getPosition();

		Box bounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));
		bool hit = bounds.intersect(Ray(Vector3(origin.x, origin.y, origin.z), Vector3(mouseDir.x, mouseDir.y, mouseDir.z)), 0, 10000);
		if (hit) {
			bLanderSelected = true;
			mouseDownPos = getMousePointOnPlane(lander.model.getPosition(), mainCam.getZAxis());
			mouseLastPos = mouseDownPos;
			bInDrag = true;
		}
		else {
			bLanderSelected = false;
		}
	}
	else {
		ofVec3f p;
		raySelectWithOctree(p);
	}
}

bool ofApp::raySelectWithOctree(ofVec3f &pointRet) {
	ofVec3f mouse(mouseX, mouseY);
	ofVec3f rayPoint = mainCam.screenToWorld(mouse);
	ofVec3f rayDir = rayPoint - mainCam.getPosition();
	rayDir.normalize();
	Ray ray = Ray(Vector3(rayPoint.x, rayPoint.y, rayPoint.z),
		Vector3(rayDir.x, rayDir.y, rayDir.z));

	pointSelected = terrainOctree.intersect(ray, terrainOctree.root, selectedNode);

	if (pointSelected) {
		pointRet = terrainOctree.mesh.getVertex(selectedNode.points[0]);
	}
	return pointSelected;
}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button) {

	// if moving camera, don't allow mouse interaction
	//
	if (mainCam.getMouseInputEnabled()) return;

	if (bInDrag) {

		glm::vec3 landerPos = lander.model.getPosition();

		glm::vec3 mousePos = getMousePointOnPlane(landerPos, mainCam.getZAxis());
		glm::vec3 delta = mousePos - mouseLastPos;
	
		landerPos += delta;
		lander.model.setPosition(landerPos.x, landerPos.y, landerPos.z);
		lander.position = lander.model.getPosition();
		mouseLastPos = mousePos;

		ofVec3f min = lander.model.getSceneMin() + lander.model.getPosition();
		ofVec3f max = lander.model.getSceneMax() + lander.model.getPosition();

		Box bounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));

		colBoxList.clear();
		collidingLeafBoxes.clear();
		terrainOctree.intersect(bounds, terrainOctree.root, colBoxList, collidingLeafBoxes);
	}
	else {
		ofVec3f p;
		raySelectWithOctree(p);
	}
}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button) {
	bInDrag = false;
}

// Set the camera to use the selected point as it's new target
// 
void ofApp::setCameraTarget() {

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
// setup basic ambient lighting in GL
//
void ofApp::initLightingAndMaterials() {

	static float ambient[] =
	{ .5f, .5f, .5, 1.0f };
	static float diffuse[] =
	{ 1.0f, 1.0f, 1.0f, 1.0f };

	static float position[] =
	{5.0, 5.0, 5.0, 0.0 };

	static float lmodel_ambient[] =
	{ 1.0f, 1.0f, 1.0f, 1.0f };

	static float lmodel_twoside[] =
	{ GL_TRUE };


	glLightfv(GL_LIGHT0, GL_AMBIENT, ambient);
	glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse);
	glLightfv(GL_LIGHT0, GL_POSITION, position);

	glLightfv(GL_LIGHT1, GL_AMBIENT, ambient);
	glLightfv(GL_LIGHT1, GL_DIFFUSE, diffuse);
	glLightfv(GL_LIGHT1, GL_POSITION, position);


	glLightModelfv(GL_LIGHT_MODEL_AMBIENT, lmodel_ambient);
	glLightModelfv(GL_LIGHT_MODEL_TWO_SIDE, lmodel_twoside);

	glEnable(GL_LIGHTING);
	glEnable(GL_LIGHT0);
	glShadeModel(GL_SMOOTH);
} 

void ofApp::savePicture() {
	ofImage picture;
	picture.grabScreen(0, 0, ofGetWidth(), ofGetHeight());
	picture.save("screenshot.png");
	cout << "picture saved" << endl;
}

//--------------------------------------------------------------
// support drag-and-drop of model (.obj) file loading.  when
// model is dropped in viewport, place origin under cursor
//
void ofApp::dragEvent2(ofDragInfo dragInfo) {

	ofVec3f point;
	mouseIntersectPlane(ofVec3f(0, 0, 0), mainCam.getZAxis(), point);
	if (lander.model.load(dragInfo.files[0])) {
		lander.model.setScaleNormalization(false);
		lander.model.setScale(1, 1, 1);
		lander.model.setPosition(1, 1, 0);
		lander.position = lander.model.getPosition();

		bLanderLoaded = true;
		for (int i = 0; i < lander.model.getMeshCount(); i++) {
			bboxList.push_back(Octree::meshBounds(lander.model.getMesh(i)));
		}

	}
	else cout << "Error: Can't load model" << dragInfo.files[0] << endl;
}

bool ofApp::mouseIntersectPlane(ofVec3f planePoint, ofVec3f planeNorm, ofVec3f &point) {
	ofVec2f mouse(mouseX, mouseY);
	ofVec3f rayPoint = mainCam.screenToWorld(glm::vec3(mouseX, mouseY, 0));
	ofVec3f rayDir = rayPoint - mainCam.getPosition();
	rayDir.normalize();
	return (rayIntersectPlane(rayPoint, rayDir, planePoint, planeNorm, point));
}

//--------------------------------------------------------------
// support drag-and-drop of model (.obj) file loading.  when
// model is dropped in viewport, place origin under cursor
//
void ofApp::dragEvent(ofDragInfo dragInfo) {
	if (lander.model.load(dragInfo.files[0])) {
		bLanderLoaded = true;
		lander.model.setScaleNormalization(false);
		lander.model.setPosition(0, 0, 0);
		lander.position = lander.model.getPosition();
		cout << endl << "number of meshes: " << lander.model.getNumMeshes() << endl << endl;
		bboxList.clear();
		for (int i = 0; i < lander.model.getMeshCount(); i++) {
			bboxList.push_back(Octree::meshBounds(lander.model.getMesh(i)));
		}

		glm::vec3 origin = mainCam.getPosition();
		glm::vec3 camAxis = mainCam.getZAxis();
		glm::vec3 mouseWorld = mainCam.screenToWorld(glm::vec3(mouseX, mouseY, 0));
		glm::vec3 mouseDir = glm::normalize(mouseWorld - origin);
		float distance;

		bool hit = glm::intersectRayPlane(origin, mouseDir, glm::vec3(0, 0, 0), camAxis, distance);
		if (hit) {
			glm::vec3 intersectPoint = origin + distance * mouseDir;		// p' = p + s * dir;

			glm::vec3 min = lander.model.getSceneMin();						// Now position the lander's origin at that intersection point
			glm::vec3 max = lander.model.getSceneMax();
			float offset = (max.y - min.y)/2.0;
			lander.model.setPosition(intersectPoint.x, intersectPoint.y - offset, intersectPoint.z);
			lander.position = lander.model.getPosition();

			landerBounds = Box(Vector3(min.x, min.y, min.z), Vector3(max.x, max.y, max.z));	// set up bounding box for lander
		}
	}
}

// intersect the mouse ray with the plane normal to the camera 
// return intersection point.   (package code above into function)
//
glm::vec3 ofApp::getMousePointOnPlane(glm::vec3 planePt, glm::vec3 planeNorm) {
	glm::vec3 origin = mainCam.getPosition();
	glm::vec3 camAxis = mainCam.getZAxis();
	glm::vec3 mouseWorld = mainCam.screenToWorld(glm::vec3(mouseX, mouseY, 0));
	glm::vec3 mouseDir = glm::normalize(mouseWorld - origin);
	float distance;

	bool hit = glm::intersectRayPlane(origin, mouseDir, planePt, planeNorm, distance);

	if (hit) {
		glm::vec3 intersectPoint = origin + distance * mouseDir;		// p' = p + s * dir;
		return intersectPoint;
	}
	else return glm::vec3(0, 0, 0);
}

//--------------------------------------------------------------
//--------------------------------------------------------------

// start thrusting
//
void ofApp::startThrust() {
	if (fuelRemaining > 0.0) {
		isThrusting = true;
		thrustForce->thrustOn = true;
		thrustingSound.play();
		lastThrustTime = ofGetElapsedTimef();
	}
}

// stop thrusting and update fuel remaining
//
void ofApp::stopThrust() {
	if (isThrusting) {
		float currTime = ofGetElapsedTimef();
		fuelRemaining -= (currTime - lastThrustTime);
		if (fuelRemaining < 0) {
			fuelRemaining = 0;
		}
		isThrusting = false;
		thrustForce->thrustOn = false;
	}
}

// rotate the lander's heading by given degree
//
void ofApp::rotateHeading(float degrees) {
    float radians = glm::radians(degrees);
    glm::mat4 rot = glm::rotate(glm::mat4(1.0), radians, glm::vec3(0, 1, 0));
    lander.heading = glm::normalize(glm::vec3(rot * glm::vec4(lander.heading, 0)));
}

// getting altitude using ray-based collision
//
bool ofApp::getTerrainHeight(const glm::vec3& position, float& height) {

	// cast multiple rays in a small pattern for better detection
    vector<Ray> rays;
    float raySpread = 0.5f;
    
    // create rays in a cross pattern
    rays.push_back(Ray(Vector3(position.x, position.y + 100.0f, position.z), Vector3(0, -1, 0)));
    rays.push_back(Ray(Vector3(position.x + raySpread, position.y + 100.0f, position.z), Vector3(0, -1, 0)));
    rays.push_back(Ray(Vector3(position.x - raySpread, position.y + 100.0f, position.z), Vector3(0, -1, 0)));
    rays.push_back(Ray(Vector3(position.x, position.y + 100.0f, position.z + raySpread), Vector3(0, -1, 0)));
    rays.push_back(Ray(Vector3(position.x, position.y + 100.0f, position.z - raySpread), Vector3(0, -1, 0)));

    vector<float> heights;
    
    for (auto& ray : rays) {
        TreeNode nodeHit;
        
        // check all possible surfaces
        if (easyOct.intersect(ray, easyOct.root, nodeHit)) {
            const ofMesh& mesh = terrain.getMesh("IslandField Landing_EASY");
            heights.push_back(getHighestPoint(mesh, nodeHit.points));
        }
        else if (mediumOct.intersect(ray, mediumOct.root, nodeHit)) {
            const ofMesh& mesh = terrain.getMesh("IslandField Landing_MEDIUM");
            heights.push_back(getHighestPoint(mesh, nodeHit.points));
        }
        else if (hardOct.intersect(ray, hardOct.root, nodeHit)) {
            const ofMesh& mesh = terrain.getMesh("IslandField Landing_HARD");
            heights.push_back(getHighestPoint(mesh, nodeHit.points));
        }
        else if (waterOct.intersect(ray, waterOct.root, nodeHit)) {
            const ofMesh& mesh = terrain.getMesh("IslandField WaterMesh");
            heights.push_back(getHighestPoint(mesh, nodeHit.points));
        }
        else if (terrainOctree.intersect(ray, terrainOctree.root, nodeHit)) {
            const ofMesh& mesh = terrain.getMesh(1);
            heights.push_back(getHighestPoint(mesh, nodeHit.points));
        }
    }
    
    if (!heights.empty()) {
        height = *max_element(heights.begin(), heights.end());
        return true;
    }

    return false;
}

// get highest point on the terrain
//
float ofApp::getHighestPoint(const ofMesh& mesh, const vector<int>& indices) {
    float maxY = -FLT_MAX;  									// start with very small number
    for (int i = 0; i < indices.size(); ++i) {
        glm::vec3 vert = mesh.getVertex(indices[i]);
        if (vert.y > maxY) {
            maxY = vert.y;  									// update if we find a higher point
        }
    }
    return maxY;
}

// prevent lander from passing through the terrain
//
void ofApp::keepOnSurface() {
    float terrainHeight;
    if (getTerrainHeight(lander.position, terrainHeight)) {
        float landerBottom = lander.model.getSceneMin().y + lander.position.y;
        float penetration = terrainHeight - landerBottom;
        
        if (penetration > 0) { 									// only adjust if penetrating
            lander.position.y += penetration + 0.01f; 			// small offset
            lander.updateModelPosition();
        }
    }
}

// reset game parameters
//
void ofApp::resetGameParams() {
	lander.model.clear();
	bLanderLoaded = false;
	intersectedTerrain = false;
	landingStatus = "";

	fuelRemaining = 120.0; 
	lastThrustTime = 0.0;

	mainCam.setPosition(glm::vec3(-200, 300, -300));
	mainCam.lookAt(glm::vec3(0, 0, 0));
	extraCamsInitialized = false;

	lander.position = glm::vec3(0, 100, 0);

	hitEasy = false;
	hitMedium = false;
	hitHard = false;
	hitOther = false;
	landingLocation = "";

	playerPoints = 0;

	gameWonPlayed = false;
	gameNeutralPlayed = false;
	gameLostPlayed = false;
	showEndScreen = false;

	loadLanderModel();
}

void ofApp::exit(){
    delete exhaustEmitter;
}