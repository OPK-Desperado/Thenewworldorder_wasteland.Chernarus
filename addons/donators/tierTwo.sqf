//  @file Name: tierTwo.sqf
// 	@file Version: 2.0
//	@file Author: [BMRF] Madhatter
// 	@file Site: www.BMRF.me
// 	@file Date: 11-June-2013
//  @file Note: Out of respect, please request permission from the author prior to use. Thank you.

if (((getPlayerUID player) in TierTwo)) then {

removeAllWeapons player;

player addMagazine "15Rnd_9x19_M9";
player addMagazine "15Rnd_9x19_M9";
player addMagazine "15Rnd_9x19_M9";
player addMagazine "30Rnd_9x19_MP5";
player addMagazine "30Rnd_9x19_MP5";
player addMagazine "30Rnd_9x19_MP5";
player addWeapon "M9";
player addWeapon "MP5A5";
player selectWeapon "MP5A5";
player addWeapon "Binocular";
player addWeapon "NVgoggles";
player setVariable["cmoney",300,true];
player setVariable["canfood",2,true];
player setVariable["water",2,true];
player setVariable["medkits",1,true];
player setVariable["fuel",0,true];
player setVariable["fuelFull",1,true];
player setVariable["fuelEmpty",0,true];
player setVariable["repairkits",0,true];
player setVariable["spawnBeacon",0,true];
player setVariable["camonet",0,true];
};
