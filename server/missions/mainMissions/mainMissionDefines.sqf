//	@file Version: 1.0
//	@file Name: missionDefines.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 15:19

//Main Mission Colour = #52bf90 - Light blue
//Fail Mission Colour = #FF1717 - Light red
//Fail Mission Colour = #17FF41 - Light green
//Sub Colour = #FFF - White
#include "setup.sqf"
#ifdef __DEBUG__

#define mainMissionTimeout 500
#define mainMissionDelayTime 50

#else

#define mainMissionTimeout 21600
#define mainMissionDelayTime 300

#endif

#define missionRadiusTrigger 50

#define mainMissionColor "#86d600"
#define destroyMissionColor "#FF0000"
#define failMissionColor "#FF1717"
#define successMissionColor "#17FF41"
#define subTextColor "#FFFFFF"