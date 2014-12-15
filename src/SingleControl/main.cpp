/*******************************************************************************
*                                                                              *
*   PrimeSense NITE 1.3 - Single Control Sample                                *
*   Copyright (C) 2010 PrimeSense Ltd.                                         *
*                                                                              *
*******************************************************************************/

//-----------------------------------------------------------------------------
// Headers
//-----------------------------------------------------------------------------
// General headers
#include <stdio.h>
// OpenNI headers
#include <XnOpenNI.h>
// NITE headers
#include <XnVSessionManager.h>
#include "XnVMultiProcessFlowClient.h"
#include <XnVWaveDetector.h>

//ROS headers
#include <ros/ros.h>
#include <ros/package.h> //we use this to get file paths

#include <stdlib.h>
#include "std_msgs/String.h"
#include "std_msgs/Bool.h"
#include <walle/pointerpos.h>
#include <walle/gestures.h>

#include <sstream>


#include <XnOpenNI.h>
#include <XnCodecIDs.h>
#include <XnCppWrapper.h>



// xml to initialize OpenNI
#define SAMPLE_XML_FILE "Data/Sample-Tracking.xml"
#define SAMPLE_XML_FILE_LOCAL "Sample-Tracking.xml"

using std::string;

xn::Context        g_Context;
xn::DepthGenerator g_DepthGenerator;
xn::UserGenerator  g_UserGenerator;

int xpos;
int ypos;
int zpos;
bool wave;
bool sess_start;
bool sess_end;

//-----------------------------------------------------------------------------
// Callbacks
//-----------------------------------------------------------------------------

// Callback for when the focus is in progress
void XN_CALLBACK_TYPE SessionProgress(const XnChar* strFocus, const XnPoint3D& ptFocusPoint, XnFloat fProgress, void* UserCxt)
{
	printf("Session progress (%6.2f,%6.2f,%6.2f) - %6.2f [%s]\n", ptFocusPoint.X, ptFocusPoint.Y, ptFocusPoint.Z, fProgress,  strFocus);
}
// callback for session start
void XN_CALLBACK_TYPE SessionStart(const XnPoint3D& ptFocusPoint, void* UserCxt)
{
	printf("Session started. Please wave (%6.2f,%6.2f,%6.2f)...\n", ptFocusPoint.X, ptFocusPoint.Y, ptFocusPoint.Z);
	sess_start = true;
}
// Callback for session end
void XN_CALLBACK_TYPE SessionEnd(void* UserCxt)
{
	printf("Session ended. Please perform focus gesture to start session\n");
	sess_end = true;
}
// Callback for wave detection
void XN_CALLBACK_TYPE OnWaveCB(void* cxt)
{
	printf("Wave!\n");
	wave = true;
}
// callback for a new position of any hand
void XN_CALLBACK_TYPE OnPointUpdate(const XnVHandPointContext* pContext, void* cxt)
{
	//std::stringstream ss;
	//ss <<  pContext->nID << ": (" << pContext->ptPosition.X << ", " << pContext->ptPosition.Y << ", " << pContext->ptPosition.Z;
	//msg.data = ss.str();
//	rospub(pContext);
	printf("%d: (%f,%f,%f) [%f]\n", pContext->nID, pContext->ptPosition.X, pContext->ptPosition.Y, pContext->ptPosition.Z, pContext->fTime);
	xpos = pContext->ptPosition.X;
	ypos = pContext->ptPosition.Y;
	zpos = pContext->ptPosition.Z;
}



//-----------------------------------------------------------------------------
// Main
//-----------------------------------------------------------------------------

XnBool fileExists(const char *fn)
{
	XnBool exists;
	xnOSDoesFileExist(fn, &exists);
	return exists;
}


// this sample can run either as a regular sample, or as a client for multi-process (remote mode)
int main(int argc, char** argv)
{  	
	xn::Context context;
	xn::ScriptNode scriptNode;
	XnVSessionGenerator* pSessionGenerator;
	XnBool bRemoting = FALSE;



	if (argc > 1)
	{
		// remote mode
		context.Init();
		printf("Running in 'Remoting' mode (Section name: %s)\n", argv[1]);
		bRemoting = TRUE;

		// Create multi-process client
		pSessionGenerator = new XnVMultiProcessFlowClient(argv[1]);

		XnStatus rc = ((XnVMultiProcessFlowClient*)pSessionGenerator)->Initialize();
		if (rc != XN_STATUS_OK)
		{
			printf("Initialize failed: %s\n", xnGetStatusString(rc));
			delete pSessionGenerator;
			return 1;
		}
	}
	else
	{
		// Local mode
		// Create context

		//string configFilename = ros::package::getPath("walle") + "src/Data/Sample-Tracking.xml";
    	//XnStatus nRetVal = g_Context.InitFromXmlFile(configFilename.c_str());
    	//CHECK_RC(nRetVal, "InitFromXml");


		const char *fn = NULL;
		if      (fileExists(SAMPLE_XML_FILE)) fn = SAMPLE_XML_FILE;
		else if (fileExists(SAMPLE_XML_FILE_LOCAL)) fn = SAMPLE_XML_FILE_LOCAL;
		else {
			printf("Could not find '%s' nor '%s'. Aborting.\n" , SAMPLE_XML_FILE, SAMPLE_XML_FILE_LOCAL);
			return XN_STATUS_ERROR;
		}
		XnStatus rc = context.InitFromXmlFile(fn, scriptNode);
		if (rc != XN_STATUS_OK)
		{
			printf("Couldn't initialize: %s\n", xnGetStatusString(rc));
			return 1;
		}

		// Create the Session Manager
		pSessionGenerator = new XnVSessionManager();
		rc = ((XnVSessionManager*)pSessionGenerator)->Initialize(&context, "Click", "RaiseHand");
		if (rc != XN_STATUS_OK)
		{
			printf("Session Manager couldn't initialize: %s\n", xnGetStatusString(rc));
			delete pSessionGenerator;
			return 1;
		}

		// Initialization done. Start generating
		context.StartGeneratingAll();
	}

	// Register session callbacks
	pSessionGenerator->RegisterSession(NULL, &SessionStart, &SessionEnd, &SessionProgress);

	// init & register wave control
	XnVWaveDetector wc;
	wc.RegisterWave(NULL, OnWaveCB);
	wc.RegisterPointUpdate(NULL, OnPointUpdate);
	pSessionGenerator->AddListener(&wc);

	printf("Please perform focus gesture to start session\n");
	printf("Hit any key to exit\n");


	//INITIALIZING ROSNODE
	ros::init(argc, argv, "pointcontrol", ros::init_options::NoSigintHandler);
  	ros::NodeHandle rosnode = ros::NodeHandle();

  	ros::Publisher pub = rosnode.advertise<walle::pointerpos>("point_location", 10);
  	walle::pointerpos msg;

  	ros::Publisher pub_gestures = rosnode.advertise<walle::gestures>("detected_gestures", 10);
  	walle::gestures msg_gestures;


	// Main loop
	while (!xnOSWasKeyboardHit())
	{
		if (bRemoting)
		{
			((XnVMultiProcessFlowClient*)pSessionGenerator)->ReadState();
		}
		else
		{
			context.WaitAnyUpdateAll();
			((XnVSessionManager*)pSessionGenerator)->Update(&context);
			//std::cout << xpos << std::endl;

			//string String = static_cast<ostringstream*>( &(ostringstream() << xpos) )->str();
			//msg = String;
			
			//msg.positions = xpos;
			msg.positionx = xpos;
			msg.positiony = ypos;
			msg.positionz = zpos;
			pub.publish(msg);
			
			msg_gestures.wave = wave;
			msg_gestures.hello = sess_start;
			msg_gestures.goodbye = sess_end;
			pub_gestures.publish(msg_gestures);
			
			wave = false;
			sess_start = false;
			sess_end = false;

			ros::spinOnce();
			//std::cout << pContext->ptPosition.Y << std::endl;
		}
	}

	delete pSessionGenerator;

	return 0;
}
