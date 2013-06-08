//	@file Version: 1.0
//	@file Name: optionSelect.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args:

#define serverAdminMenu_option 50007
#define modMenu_option 50005
#define debugMenu_option 50003
#define adminMenu_option 50001
disableSerialization;

private ["_panelType","_displayAdmin","_displayMod","_displayServerAdmin","_displayDebug","_modSelect","_adminSelect","_serverAdminSelect","_debugSelect"];
_uid = getPlayerUID player;
if ((_uid in moderators) OR (_uid in administrators) OR (_uid in serverAdministrators)) then {
	_panelType = _this select 0;
	
	_displayAdmin = uiNamespace getVariable "AdminMenu";
	_displayMod = uiNamespace getVariable "ModMenu";
	_displayServerAdmin = uiNamespace getVariable "ServerAdminMenu";
	_displayDebug = uiNamespace getVariable "DebugMenu";
	
	_modSelect = _displayMod displayCtrl modMenu_option;
	_adminSelect = _displayAdmin displayCtrl adminMenu_option;
	_serverAdminSelect = _displayServerAdmin displayCtrl serverAdminMenu_option;
	_debugSelect = _displayDebug displayCtrl debugMenu_option;
	
	switch (_panelType) do
	{
	    case 0: //Moderator panel
		{
			switch (lbCurSel _modSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\playerMenu.sqf";
				};
				case 1: //Basic Vehicle Menu
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\vehicleManagement.sqf";
				};
			};
		};
		case 1: //Administrator panel
		{
			switch (lbCurSel _adminSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\playerMenu.sqf";
				};
				case 1: //Full Vehicle Management
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\vehicleManagement.sqf";
				};
			    case 2: //Tags
			    {
					execVM "client\systems\adminPanel\playerTags.sqf";
			    };
			};
		};
	    case 2: //Server Administrator panel
	    {
			switch (lbCurSel _serverAdminSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\playerMenu.sqf";
				};
				case 1: //Full Vehicle Management
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\vehicleManagement.sqf";
				};
			    case 2: //Tags
			    {
					execVM "client\systems\adminPanel\playerTags.sqf";
			    };
			    case 3: //Teleport
			    {
	                closeDialog 0;    
	                hint "Click on map to teleport";
	                onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";
                    openMap true;
			    };
	            case 4: //Money
			    {      
					player setVariable["cmoney", (player getVariable "cmoney")+1000,true];
			    };
	            case 5: //Debug Menu
			    {   
	            	closeDialog 0;   
	                execVM "client\systems\adminPanel\loadDebugMenu.sqf";
			    };
				case 6: //Removing all dead vehicles.
			    {
					closeDialog 0;
					hint "Removing all destroyed vehicles.";
					execVM "scripts\admin\deletevehicles.sqf";
			    };
				case 7: //Removing all dead players.
			    {
					closeDialog 0;
					hint "Removing all dead bodies.";
					execVM "scripts\admin\deletebodies.sqf";
					
			    };
			};
	    };
	    case 3: //Debug panel
	    {      
			switch (lbCurSel _debugSelect) do
			{
			    case 0: //Access Gun Store
				{
	                closeDialog 0;
					execVM "client\systems\gunStore\loadGunStore.sqf";
				};
				case 1: //Access General Store
				{
	                closeDialog 0;
					execVM "client\systems\generalStore\loadGenStore.sqf";
				};
			    case 2: //Access Respawn Dialog
			    {
	                closeDialog 0;
					true spawn client_respawnDialog;
			    };
			    case 3: //Access Proving Grounds
			    {
	                closeDialog 0;      
					createDialog "balca_debug_main";
			    };
	            case 4: //Restart Function
			    {      
					hint format["Server FPS: %1",serverFPS];
			    };
	            case 5: //Test Function
			    {
					_nerfBoxes = ["basicUS","basicUS2","basicRU","basicRU2","basicGER","basicPMC","basicSpecial","basicSpecial2","basicSpecial3"];
                    _playerLoc = getPos player;
                    
                    {	
                        _safePos = [_playerLoc, 1, 5, 1, 0, 60 * (pi / 180), 0] call BIS_fnc_findSafePos;
                        [_x, _safePos] execVM "server\spawning\boxCreation.sqf"; 
                        
                    } forEach _nerfBoxes;
			    };
			};		
	    };
	};
} else {
  exit;  
};