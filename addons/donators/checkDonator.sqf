//  @file Name: checkDonator.sqf
//  @file Version: 2.0
//  @file Author: [BMRF] Madhatter
//  @file Site: www.BMRF.me
//  @file Date: 11-June-2013
//  @file Note: Out of respect, please request permission from the author prior to use. Thank you.

_uid = "";
_uid = getPlayerUID player;

if (_uid in TierOne) then {
    player execVM "addons\donators\tierOne.sqf";
    sleep 0.1;
    hint "Welcome MBS VIP!";
}
else {

if (_uid in TierTwo) then {
    player execVM "addons\donators\tierTwo.sqf";
    sleep 0.1;
    hint "Welcome MBS VIP!";
}
else {

if (_uid in TierThree) then {
    player execVM "addons\donators\tierThree.sqf";
    sleep 0.1;
    hint "Welcome MBS VIP!";
}
else {

if (_uid in TierFour) then {
    player execVM "addons\donators\tierFour.sqf";
    sleep 0.1;
    hint "Welcome MBS VIP!";
}
else {

    sleep 1;
    waitUntil {scriptDone _Handle};
};
};
};
};
