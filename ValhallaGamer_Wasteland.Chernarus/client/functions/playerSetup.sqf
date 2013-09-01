
//	@file Name: playerSetup.sqf
//	@file Author: [404] Deadbeat, simwah
//	@file Created: 20/11/2012 05:19
//	@file Args:

_player = _this;
//Player initialization
_player setskill 0;
{_player disableAI _x} foreach ["move","anim","target","autotarget"];
_player setVariable ["BIS_noCoreConversations", true];

enableSentences false;
_player removeWeapon "ItemRadio";
removeAllWeapons _player;
removeBackpack _player;

//Default case means something fucked up.
_player addMagazine "30Rnd_9x19_MP5";
_player addMagazine "30Rnd_9x19_MP5";
_player addMagazine "30Rnd_9x19_MP5";
_player addWeapon "MP5A5";
_player selectWeapon "MP5A5";

if(str(playerSide) in ["WEST"]) then
{
    removeAllWeapons _player;
    _player addMagazine "30Rnd_9x19_MP5";
    _player addMagazine "30Rnd_9x19_MP5";
    _player addMagazine "30Rnd_9x19_MP5";
	_player addWeapon "MP5A5";
	_player selectWeapon "MP5A5";
};

if(str(playerSide) in ["EAST"]) then
{
    removeAllWeapons _player;
    _player addMagazine "30Rnd_9x19_MP5";
    _player addMagazine "30Rnd_9x19_MP5";
    _player addMagazine "30Rnd_9x19_MP5";
	_player addWeapon "MP5A5";
	_player selectWeapon "MP5A5";
};

if(str(playerSide) in ["GUER"]) then
{
    removeAllWeapons _player;
    _player addMagazine "30Rnd_9x19_MP5";
    _player addMagazine "30Rnd_9x19_MP5";
    _player addMagazine "30Rnd_9x19_MP5";
	_player addWeapon "MP5A5";
	_player selectWeapon "MP5A5";
};

_player addrating 1000000;
_player switchMove "amovpknlmstpsraswpstdnon_gear";

thirstLevel = 100;
hungerLevel = 100;

_player setVariable["cmoney",200,false];
_player setVariable["canfood",1,false];
_player setVariable["medkits",0,false];
_player setVariable["water",1,false];
_player setVariable["fuel",0,false];
_player setVariable["repairkits",0,false];
_player setVariable["fuelFull", 0, false];
_player setVariable["fuelEmpty", 1, false];
_player setVariable["bombs",false,false];
_player setVariable["spawnBeacon",0,false];
_player setVariable["camonet",0,false];
player setVariable["canDrop",false,false];

[] execVM "client\functions\playerActions.sqf";

_player groupChat format["Player Initialization Complete"];
playerSetupComplete = true;