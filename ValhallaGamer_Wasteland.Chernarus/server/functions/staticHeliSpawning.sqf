if(!X_Server) exitWith {};

private ["_counter","_position","_markerName","_marker","_hint","_newPos","_countActual", "_i", "_doSpawnWreck"];
_counter = 0;
_countActual = 0;
_i = 0;

while {_counter < 20} do // 20 helis spawn at the beginning
{
	_selectedMarker = floor (random 40);
    _position = getMarkerPos format ["heliSpawn_%1", _selectedMarker];
    _newPos = [_position, 25, 50, 1, 0, 60 * (pi / 180), 0] call BIS_fnc_findSafePos;
	[0, _newPos] call staticHeliCreation;
    
	currentStaticHelis set [count currentStaticHelis, _selectedMarker];

    _counter = _counter + 1;
    _countActual = _countActual + 1;
};

//{diag_log format["Heli %1 = %2",_forEachIndex, _x];} forEach currentStaticHelis;

for "_i" from 1 to 40 do {
    _doSpawnWreck = true;
    
    { // Check if current iteration already exists as a live heli...
    	if (_i == _x) then {
			_doSpawnWreck = false;
        };
    } forEach currentStaticHelis;
    
    if (_doSpawnWreck) then {
    	_position = getMarkerPos format ["heliSpawn_%1", _i];
    	_newPos = [_position, 25, 50, 1, 0, 60 * (pi / 180), 0] call BIS_fnc_findSafePos;
		[1, _newPos] call staticHeliCreation;
    };
};

diag_log format["WASTELAND SERVER - %1 Static helis Spawned",_countActual];