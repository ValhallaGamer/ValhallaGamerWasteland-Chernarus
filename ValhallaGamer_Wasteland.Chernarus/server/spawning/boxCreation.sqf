//	@file Name: boxCreation.sqf
//	@file Author: [404] Costlyy, simwah
//	@file Created: 19/12/2012 23:19
//	@file Args: [string (selected weapon crate), array (position)]

if(!X_Server) exitWith {};

private ["_selectedBox", "_selectedBoxPos", "_finishedBox", "_currBox"];

_selectedBox = _this select 0;
_selectedBoxPos = _this select 1;

switch(_selectedBox) do {
	case "basicUS": { 
    	_currBox = createVehicle ["USBasicWeaponsBox", _selectedBoxPos,[], 30, "NONE"];
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["M16A2",2];
		_currBox addWeaponCargoGlobal ["M16A4_ACG",2];
		_currBox addWeaponCargoGlobal ["M4A1_HWS_GL",2];
        _currBox addWeaponCargoGlobal ["M249_EP1",1];
        _currBox addWeaponCargoGlobal ["M24",1];
        
		_currBox addWeaponCargoGlobal ["M9",8];	
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["15Rnd_9x19_M9",50];
        _currBox addMagazineCargoGlobal ["30Rnd_556x45_Stanag",75];
        _currBox addMagazineCargoGlobal ["200Rnd_556x45_M249",10];
        _currBox addMagazineCargoGlobal ["5Rnd_762x51_M24",10];
        _currBox addMagazineCargoGlobal ["HandGrenade",10];
        _currBox addMagazineCargoGlobal ["1Rnd_HE_M203",10];
        _currBox addMagazineCargoGlobal ["1Rnd_Smoke_M203",10];  
    };
    case "basicUS2": { 
    	_currBox = createVehicle ["USBasicWeaponsBox", _selectedBoxPos,[], 30, "NONE"];
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["M4A3_CCO_EP1",2];
		_currBox addWeaponCargoGlobal ["M4A1_RCO_GL",2];
        _currBox addWeaponCargoGlobal ["m240_scoped_EP1",1];
        _currBox addWeaponCargoGlobal ["M4SPR",1];
         
		_currBox addWeaponCargoGlobal ["M9",8];	
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["15Rnd_9x19_M9",50];
        _currBox addMagazineCargoGlobal ["30Rnd_556x45_Stanag",75];
        _currBox addMagazineCargoGlobal ["100Rnd_762x51_M240",10];
        _currBox addMagazineCargoGlobal ["HandGrenade",10];
        _currBox addMagazineCargoGlobal ["1Rnd_HE_M203",10];
        _currBox addMagazineCargoGlobal ["1Rnd_Smoke_M203",10];
    };
    case "basicRU": { 
    	_currBox = createVehicle ["RUBasicWeaponsBox", _selectedBoxPos,[], 30, "NONE"];
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["SVD",1];
		_currBox addWeaponCargoGlobal ["AK_107_GL_kobra",2];
		_currBox addWeaponCargoGlobal ["AKS_74_U",4];
        _currBox addWeaponCargoGlobal ["Sa58V_CCO_EP1",2];
        _currBox addWeaponCargoGlobal ["RPK_74",1];
        
		_currBox addWeaponCargoGlobal ["MakarovSD",4];	
        _currBox addWeaponCargoGlobal ["Sa61_EP1",4];	
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["30Rnd_545x39_AK",50];
        _currBox addMagazineCargoGlobal ["30Rnd_762x39_SA58",25];
        _currBox addMagazineCargoGlobal ["75Rnd_545x39_RPK",5];
        _currBox addMagazineCargoGlobal ["8Rnd_9x18_MakarovSD",24];
        _currBox addMagazineCargoGlobal ["20Rnd_B_765x17_Ball",24];
        _currBox addMagazineCargoGlobal ["10Rnd_762x54_SVD",10];
        _currBox addMagazineCargoGlobal ["HandGrenade",10];
        _currBox addMagazineCargoGlobal ["1Rnd_HE_GP25",15];
        _currBox addMagazineCargoGlobal ["1Rnd_SMOKE_GP25",15];
    };
    case "basicRU2": { 
    	_currBox = createVehicle ["RUBasicWeaponsBox", _selectedBoxPos,[], 30, "NONE"];
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["AK_47_M",4];
        _currBox addWeaponCargoGlobal ["AKS_74_kobra",4];
        _currBox addWeaponCargoGlobal ["SVD",1];
        _currBox addWeaponCargoGlobal ["AKS_74_pso",2];
        
        _currBox addWeaponCargoGlobal ["MakarovSD",4];	
		_currBox addWeaponCargoGlobal ["Makarov",4];	
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["30Rnd_545x39_AK",50];
        _currBox addMagazineCargoGlobal ["10Rnd_762x54_SVD",20];
        _currBox addMagazineCargoGlobal ["30Rnd_762x39_AK47",35];
        _currBox addMagazineCargoGlobal ["8Rnd_9x18_Makarov",24];
        _currBox addMagazineCargoGlobal ["8Rnd_9x18_MakarovSD",24];
        _currBox addMagazineCargoGlobal ["HandGrenade",5];
    };
    case "basicGER": { 
    	_currBox = createVehicle ["GERBasicWeapons_EP1", _selectedBoxPos,[], 30, "NONE"];
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["G36C_camo",2];
		_currBox addWeaponCargoGlobal ["G36_C_SD_eotech",2];
		_currBox addWeaponCargoGlobal ["G36a",2];
        _currBox addWeaponCargoGlobal ["MG36",1];
        _currBox addWeaponCargoGlobal ["MP5A5",2];
        _currBox addWeaponCargoGlobal ["MP5SD",2];
        
		_currBox addWeaponCargoGlobal ["glock17_EP1",4];	
        _currBox addWeaponCargoGlobal ["UZI_SD_EP1",4];	
        
        // Add ammunition
        
        _currBox addMagazineCargoGlobal ["30Rnd_9x19_MP5SD",25];
        _currBox addMagazineCargoGlobal ["30Rnd_9x19_MP5",25];
        _currBox addMagazineCargoGlobal ["30Rnd_556x45_G36",50];
        _currBox addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag",10];
        _currBox addMagazineCargoGlobal ["30Rnd_556x45_G36SD",30];
        _currBox addMagazineCargoGlobal ["17Rnd_9x19_glock17",24];
        _currBox addMagazineCargoGlobal ["30Rnd_9x19_UZI_SD",24];
        _currBox addMagazineCargoGlobal ["HandGrenade",10];
    };
    case "basicPMC": { 
    	_currBox = createVehicle ["Ammobox_PMC", _selectedBoxPos,[], 30, "NONE"];
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["M8_carbine",2];
		_currBox addWeaponCargoGlobal ["M8_carbineGL",2];   
        _currBox addWeaponCargoGlobal ["m8_holo_sd",2];
        _currBox addWeaponCargoGlobal ["m8_SAW",1];
		_currBox addWeaponCargoGlobal ["AA12_PMC",2];
        
		_currBox addWeaponCargoGlobal ["M9",4];	
        _currBox addWeaponCargoGlobal ["M9SD",4];	
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["30Rnd_556x45_Stanag",50];
        
        _currBox addMagazineCargoGlobal ["20Rnd_B_AA12_Pellets",25];
        _currBox addMagazineCargoGlobal ["20Rnd_B_AA12_74Slug",25];
        _currBox addMagazineCargoGlobal ["20Rnd_B_AA12_HE",6];
        _currBox addMagazineCargoGlobal ["30Rnd_556x45_StanagSD",25];
        _currBox addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag",10];
        _currBox addMagazineCargoGlobal ["15Rnd_9x19_M9SD",20];
        _currBox addMagazineCargoGlobal ["15Rnd_9x19_M9",24];
        _currBox addMagazineCargoGlobal ["HandGrenade",10];
        _currBox addMagazineCargoGlobal ["1Rnd_HE_M203",10];
        _currBox addMagazineCargoGlobal ["1Rnd_Smoke_M203",10];
    };
    case "basicSpecial": { 
    	_currBox = createVehicle ["SpecialWeaponsBox", _selectedBoxPos,[], 30, "NONE"];
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["m8_compact_pmc",2];
        _currBox addWeaponCargoGlobal ["m8_sharpshooter",2];
        _currBox addWeaponCargoGlobal ["SCAR_L_CQC_CCO_SD",2];
        _currBox addWeaponCargoGlobal ["SCAR_L_CQC_EGLM_Holo",2];
        _currBox addWeaponCargoGlobal ["M40A3",2];
        _currBox addWeaponCargoGlobal ["DMR",2];
        _currBox addWeaponCargoGlobal ["Mk_48",2];
        _currBox addWeaponCargoGlobal ["M240",2];
          
        _currBox addWeaponCargoGlobal ["UZI_SD_EP1",4];
        _currBox addWeaponCargoGlobal ["M9SD",4];
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["5Rnd_762x51_M24",30];
        _currBox addMagazineCargoGlobal ["30Rnd_556x45_Stanag",50];
        _currBox addMagazineCargoGlobal ["30Rnd_556x45_StanagSD",50];
        _currBox addMagazineCargoGlobal ["15Rnd_9x19_M9SD",24];
        _currBox addMagazineCargoGlobal ["30Rnd_9x19_UZI_SD",24];
        _currBox addMagazineCargoGlobal ["1Rnd_HE_M203",10];
        _currBox addMagazineCargoGlobal ["1Rnd_Smoke_M203",10];
        _currBox addMagazineCargoGlobal ["20Rnd_762x51_DMR",20];
        _currBox addMagazineCargoGlobal ["100Rnd_762x51_M240",30];
        _currBox addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag",20];
    };
    case "basicSpecial2": { 
    	_currBox = createVehicle ["SpecialWeaponsBox", _selectedBoxPos,[], 30, "NONE"];
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
        _currBox addWeaponCargoGlobal ["BAF_LRR_scoped",1];
		_currBox addWeaponCargoGlobal ["BAF_L86A2_ACOG",2];
		_currBox addWeaponCargoGlobal ["BAF_L85A2_UGL_Holo",2];
        _currBox addWeaponCargoGlobal ["BAF_L110A1_Aim",2];
        _currBox addWeaponCargoGlobal ["DMR",2];
        _currBox addWeaponCargoGlobal ["Mk_48",2];
        _currBox addWeaponCargoGlobal ["M240",2];        
        
		_currBox addWeaponCargoGlobal ["glock17_EP1",8];	
        
        // Add ammunition
        _currBox addMagazineCargoGlobal ["30Rnd_556x45_Stanag",100];
        _currBox addMagazineCargoGlobal ["200Rnd_556x45_L110A1",20];
        _currBox addMagazineCargoGlobal ["5Rnd_86x70_L115A1",10];
        _currBox addMagazineCargoGlobal ["17Rnd_9x19_glock17",24];
        _currBox addMagazineCargoGlobal ["BAF_L109A1_HE",10];
        _currBox addMagazineCargoGlobal ["1Rnd_HE_M203",10];
        _currBox addMagazineCargoGlobal ["1Rnd_Smoke_M203",10];
        _currBox addMagazineCargoGlobal ["20Rnd_762x51_DMR",20];
        _currBox addMagazineCargoGlobal ["100Rnd_762x51_M240",30];
        _currBox addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag",20];        
    };
};