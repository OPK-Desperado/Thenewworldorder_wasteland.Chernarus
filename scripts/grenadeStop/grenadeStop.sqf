/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    INSTALLATION:
    Move grenadeStop.sqf to your mission's folder. Then add the
    following line to your init.sqf file (create one if necessary):
    execVM "grenadeStop.sqf";
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [
["gunstore1", 20],
["gunstore2",20],
["gunstore3",20],
["gunstore4",20],
["gunstore5",20],
["generalStore1",20],
["generalStore2",20],
["generalStore3",20],
["generalStore4",20],
["generalStore5",20],
["vs1",20],
["vs2",20],
["vs3",20],
["vs4",20],
["vs5",20],
["bs1",20],
["bs2",20],
["bs3",20],
["bs4",20],
["hc2",20],
["hc3",20]

] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]

#define MESSAGE 		"Do not throw grenades or Fire inside the NO FIRE ZONE!\nPress m to see the server rules" +\
						"\nIf you not obey or server rules u will be bant for 24 hours."

if (isDedicated) exitWith {};
waitUntil {!isNull player};

player addEventHandler ["Fired", {
    if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
    {
        deleteVehicle (_this select 6);
        titleText [MESSAGE, "PLAIN", 3];
    };
}];  