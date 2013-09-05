//	@file Name: fn_refillbox.sqf  "fn_refillbox"
//	@file Author: [404] Pulse , [404] Costlyy , [404] Deadbeat, simwah
//	@file Created: 22/1/2012 00:00
//	@file Args: [ OBJECT (Weapons box that needs filling), STRING (Name of the fill to give to object)]
if (!isServer) exitWith {};
private ["_selectedBox", "_selectedBoxPos", "_finishedBox", "_currBox"];

_box = _this select 0;
_selectedBox = _this select 1;

switch(_selectedBox) do {
    case "mission_box_Launchers": { // Used in the airwreck and WepChache Mission
    	_currBox = _box;

        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;

		// Add new weapons before ammunition
		_currBox addWeaponCargoGlobal ["SMAW",1];
		_currBox addWeaponCargoGlobal ["M32_EP1",1];
		_currBox addWeaponCargoGlobal ["Javelin",1];
		_currBox addWeaponCargoGlobal ["Stinger",1];
		_currBox addWeaponCargoGlobal ["Igla",1];	
		_currBox addWeaponCargoGlobal ["M136",1];
		_currBox addWeaponCargoGlobal ["M47Launcher_EP1",1];
		_currBox addWeaponCargoGlobal ["MAAWS",1];
		_currBox addWeaponCargoGlobal ["MetisLauncher",1];
        _currBox addWeaponCargoGlobal ["BAF_NLAW_Launcher",1];
		// Add ammunition
		_currBox addMagazineCargoGlobal ["SMAW_HEDP",3];
        _currBox addMagazineCargoGlobal ["SMAW_HEAA",3];
		_currBox addMagazineCargoGlobal ["MAAWS_HEAT",3];
        _currBox addMagazineCargoGlobal ["MAAWS_HEDP",3];        
		_currBox addMagazineCargoGlobal ["Javelin",2];
        _currBox addMagazineCargoGlobal ["Stinger",2];
		_currBox addMagazineCargoGlobal ["Igla",2];
        _currBox addMagazineCargoGlobal ["M136",3];
		_currBox addMagazineCargoGlobal ["Dragon_EP1",2];
        _currBox addMagazineCargoGlobal ["AT13",2];
        _currBox addMagazineCargoGlobal ["6Rnd_HE_M203",6];
        _currBox addMagazineCargoGlobal ["Pipebomb",6];
        _currBox addMagazineCargoGlobal ["NLAW",2];                         

    };
    case "mission_box_Special": { // Used in WepChache Mission and outpost missions
    	_currBox = _box;
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["SCAR_H_CQC_CCO",2];
        _currBox addWeaponCargoGlobal ["SCAR_H_CQC_CCO_SD",2];
        _currBox addWeaponCargoGlobal ["SCAR_H_STD_EGLM_Spect",2];
        _currBox addWeaponCargoGlobal ["SCAR_L_CQC_EGLM_Holo",2];
        _currBox addWeaponCargoGlobal ["SCAR_L_STD_EGLM_RCO",2];
        _currBox addWeaponCargoGlobal ["SCAR_L_STD_Mk4CQT",2];
        _currBox addWeaponCargoGlobal ["SCAR_H_LNG_Sniper",2];
        _currBox addWeaponCargoGlobal ["SCAR_H_LNG_Sniper_SD",2];   
        _currBox addWeaponCargoGlobal ["M110_NVG_EP1",1];
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["20Rnd_762x51_SB_SCAR",50];
        _currBox addMagazineCargoGlobal ["20Rnd_762x51_B_SCAR",100];
        _currBox addMagazineCargoGlobal ["30Rnd_556x45_Stanag",100];
        _currBox addMagazineCargoGlobal ["1Rnd_HE_M203",30];
        _currBox addMagazineCargoGlobal ["1Rnd_Smoke_M203",30];
        _currBox addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag",50];    	
    };
};