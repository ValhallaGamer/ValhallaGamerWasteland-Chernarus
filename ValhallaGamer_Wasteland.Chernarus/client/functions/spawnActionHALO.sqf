//	@file Version: 1.0
//	@file Name: spawnAction.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AGeNT [TFB]
//	@file Created: 20/11/2012 05:19
//	@file Args: [int(type of spawn)]
//	@file Notes: Weird melding of spawnOnBeacon.sqf & spawnRandom.sqf, hopefully she works captain.

_switch = _this select 0;
_button = _this select 1;

waituntil {!isnil "bis_fnc_init"};

private ["_townName","_randomLoc","_pos"];

_randomLoc = cityList select (random (count cityList - 1));

_pos = getMarkerPos (_randomLoc select 0);
_pos = [_pos,1,(_randomLoc select 1),1,0,0,0] call BIS_fnc_findSafePos;
_pos = [_pos select 0, _pos select 1, (_pos select 2) + 10];
2 cutText ["HALO jump activated. Open your chute before you hit the ground!", "PLAIN DOWN", 5];
player setPos [_pos select 0, _pos select 1, 1000]; // Stop the player appearing on the ground for a split second before the HALO 
[player, 1000] exec "ca\air2\halo\data\Scripts\HALO_init.sqs";    
respawnDialogActive = false;
closeDialog 0;

_mins = floor(60 * (daytime - floor(daytime)));
_townName = _randomLoc select 2;
[
	"Valhalla Gamer Wasteland",_townName,format ["%1:%3%2", floor(daytime), _mins, if(_mins < 10) then {"0"} else {""}]
] spawn BIS_fnc_infoText;