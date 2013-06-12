//  @file Name: tierThree.sqf
// 	@file Version: 2.0
// 	@file Author: [BMRF] Madhatter
// 	@file Site: www.BMRF.me
// 	@file Date: 11-June-2013
//  @file Note: Out of respect, please request permission from the author prior to use. Thank you.

if (((getPlayerUID player) in TierThree)) then {

removeAllWeapons player;

player addMagazine "15Rnd_9x19_M9";
player addMagazine "15Rnd_9x19_M9";
player addMagazine "15Rnd_9x19_M9";
player addMagazine "30Rnd_545x39_AK";
player addMagazine "30Rnd_545x39_AK";
player addMagazine "30Rnd_545x39_AK";
player addWeapon "M9";
player addWeapon "AKS_74_U";
player selectWeapon "AKS_74_U";
player addWeapon "Binocular";
player addWeapon "NVgoggles";
player setVariable["cmoney",350,true];
player setVariable["canfood",3,true];
player setVariable["water",3,true];
player setVariable["medkits",2,true];
player setVariable["fuel",0,true];
player setVariable["fuelFull",1,true];
player setVariable["fuelEmpty",0,true];
player setVariable["repairkits",0,true];
player setVariable["spawnBeacon",0,true];
player setVariable["camonet",0,true];
};
