//	@file Name: createGunship.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AGeNT [TFB]
//	@file Created: 04/9/2013 00:51
//  @file Notes: Original createMissionVehicle.sqf by [404] Deadbeat, [404] Costlyy, adapted to spawn gunships & modify their loadouts without having to make createMissionVehicle.sqf too complicated.

if(!isServer) exitwith {};

private["_vehicleClass","_randomPos","_fuel","_ammo","_damage","_state","_veh"];

_vehicleClass = _this select 0;
_randomPos = _this select 1;
_fuel = _this select 2;
_ammo = _this select 3;
_damage = _this select 4;
_state = _this select 5;

_veh = createVehicle [_vehicleClass,_randomPos,[], 0, _state];
_veh setFuel _fuel;
_veh setVehicleAmmo _ammo;
_veh setdamage _damage;
_veh disableTIEquipment true;

// remove unwanted weapons (hellfires) & add desired weapons (TOWs)
_veh removeMagazine "8Rnd_Hellfire"; 
_veh removeWeapon "HellfireLauncher"; 
_veh addMagazine "2Rnd_TOW";
_veh addMagazine "2Rnd_TOW";
_veh addMagazine "2Rnd_TOW";
_veh addMagazine "2Rnd_TOW";
_veh addWeapon "TOWLauncher";

_veh setVehicleLock "LOCKED";
_veh setVariable["newVehicle",1,true];
_veh setVariable ["R3F_LOG_disabled", true, true];

clearMagazineCargoGlobal _veh;
clearWeaponCargoGlobal _veh;