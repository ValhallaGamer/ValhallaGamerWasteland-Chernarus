//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse, simwah
//	@file Created: 20/11/2012 05:19
//	@file Args:
#include "setup.sqf"
if(!X_Server) exitWith {};

diag_log format["WASTELAND SERVER - Initilizing Server Vars"];

CVG_weapons = [];
CVG_weapons = CVG_rifles;
CVG_weapons = CVG_weapons + CVG_Scoped;
CVG_weapons = CVG_weapons + CVG_Heavy;
CVG_weapons = CVG_weapons + CVG_pistols;
CVG_weapons = CVG_weapons + CVG_Launchers;

#ifdef __A2NET__
missionStartTime = 0;
netTime = 0;
#endif

sideMissionPos = "";
mainMissionPos = "";

currentVehicles = [];
publicVariable "currentVehicles";
pvar_teamSwitchList = [];
publicVariable "pvar_teamSwitchList";
pvar_teamKillList = [];
publicVariable "pvar_teamKillList";
pvar_beaconListBlu = []; 
publicVariable "pvar_beaconListBlu";
pvar_beaconListRed = []; 
publicVariable "pvar_beaconListRed";
pvar_beaconListIndep = []; 
publicVariable "pvar_beaconListIndep";
clientMissionMarkers = [];
publicVariable "clientMissionMarkers";
currentDate = [];
publicVariable "currentDate";
currentInvites = [];
publicVariable "currentInvites";

"processVIP" addPublicVariableEventHandler {[_this] spawn server_VIPEscape};
                  
"PlayerCDeath" addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerDied};

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

staticHeliWrecks = [
	"UH1Wreck",
    "Mi8Wreck",
    "UH60_wreck_EP1"];

//Civilian Vehicle List - Random Spawns
civilianVehicles = [
					"HMMWV",
                    "HMMWV_Ambulance",
					"SUV_PMC",
					"MTVR",
					"SUV_PMC",
					"MTVR",
					"HMMWV_DES_EP1",
					"MMT_USMC",
					"HMMWV_M1035_DES_EP1",
                    "MMT_USMC",
                    "HMMWV_M1035_DES_EP1",
					"HMMWV_Armored",
					"BAF_Offroad_W",
					"GAZ_Vodnik_MedEvac",
					"BAF_Offroad_W",
					"BTR40_TK_GUE_EP1",
					"HMMWV"
					];

//Military Vehicle List - Random Spawns
militaryVehicles = [
                    "HMMWV_M2",
					"ArmoredSUV_PMC",
					"UAZ_MG_CDF",
					"LandRover_MG_TK_INS_EP1",
					"BRDM2_HQ_Gue",
					"Offroad_SPG9_Gue",
					"HMMWV_M2"
					];

//Armed Military Vehicle List - Random Spawns
armedMilitaryVehicles = [
							"HMMWV_M2",
                            "HMMWV_MK19",
							"HMMWV_TOW",
							"LandRover_MG_TK_INS_EP1",
							"BAF_Jackal2_L2A1_w",
							"BAF_Jackal2_GMG_W",
							"HMMWV_M1151_M2_DES_EP1",
                            "LandRover_SPG9_TK_EP1",
							"Offroad_SPG9_Gue",
                            "HMMWV_M1151_M2_DES_EP1",
							"GAZ_Vodnik",
							"BRDM2_HQ_Gue",
							"LandRover_MG_TK_INS_EP1",
							"HMMWV_Avenger",
							"BTR40_MG_TK_GUE_EP1",
							"HMMWV_M2"
						];

//Item Config
pickupList = [
                "Satelit",
				"EvMoney",
				"Suitcase",
				"Fuel_can"];

//Object List - Random Spawns.
objectList = [
                "Land_Barrel_water",
                "Fort_Crate_wood",
                "Land_CamoNet_NATO",
				"Land_Barrel_water",
				"Land_stand_small_EP1",
                "Land_stand_small_EP1",
				"Base_WarfareBBarrier10xTall",
				"Base_WarfareBBarrier10x",
				"Base_WarfareBBarrier5x",
                "Base_WarfareBBarrier10xTall",
                "Base_WarfareBBarrier10x",
                "Base_WarfareBBarrier5x",
				"Land_Misc_deerstand",
				"Fort_Barricade",
				"Concrete_Wall_EP1",
                "Concrete_Wall_EP1",
                "Land_fort_bagfence_long",
                "Land_fort_bagfence_long",
                "Land_fort_bagfence_round",
                "Land_fort_bagfence_corner",
                "Land_BagFenceLong",
                "Land_BagFenceLong",
                "Land_fort_artillery_nest",
				"Land_fortified_nest_small_EP1",
				"Land_Misc_deerstand",
                "Land_fort_rampart",
                "Land_fort_rampart_EP1",
				"Land_HBarrier_large",
                "Land_HBarrier_large",
				"Land_Misc_Scaffolding",
				"Land_Fort_Watchtower_EP1",
                "Land_Fort_Watchtower",
				"Land_fortified_nest_big",
				"RampConcrete",
				"WarfareBDepot",
				"WarfareBCamp",
                "Hedgehog",
                "Land_ConcreteRamp",
                "Land_CncBlock_Stripes",
                "Land_GuardShed",
                "Land_tent_east",
                "MASH_EP1",
				"Land_ConcreteBlock"];
                                         
//Object List - Random Spawns.
staticWeaponsList = [
                        "M2StaticMG_US_EP1",
				        "DSHKM_TK_INS_EP1",
                        "BAF_L2A1_Tripod_D",
				        "MK19_TriPod",
                        "M2HD_mini_TriPod",
                        "KORD",
                        "AGS_RU",
                        "SPG9_Ins",
				        "KORD_high"];

//Object List - Random Helis.
staticHeliList = [
                    "UH1H_TK_GUE_EP1",
                    "CH_47F_EP1",
                    "MH60S",
                    "UH60M_EP1"
					
                ];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons = [
				    "AK_47_M",
				    "AK_74",
					"AKS_74_kobra",
					"AK_107_kobra",
					"AK_107_GL_kobra",
				    "LeeEnfield",
				    "Sa58V_EP1",
				    "Sa58V_CCO_EP1",
					"M249",
					"M8_carbine",
					"M4A1",
                    "M4A1_Aim",
                    "M4A1_Aim_camo",
					"M4A3_CCO_EP1",
					"M4A1_HWS_GL",
					"M16A2",
					"M16A2GL",
                    "M16A4",
					"M16A4_GL",
					"SCAR_L_CQC",
                    "SCAR_L_CQC_Holo",
                    "SCAR_L_STD_HOLO",
                    "FN_FAL",
                    "M14_EP1",
					"huntingrifle"
					
                    ];
                
MissionSpawnMarkers = [
            ["Mission_1",false],
            ["Mission_2",false],
            ["Mission_3",false],
            ["Mission_4",false],
            ["Mission_5",false],
            ["Mission_6",false],
            ["Mission_7",false],
            ["Mission_8",false],
            ["Mission_9",false],
            ["Mission_10",false],
            ["Mission_11",false],
            ["Mission_12",false],
            ["Mission_13",false],
            ["Mission_14",false],
            ["Mission_15",false],
            ["Mission_16",false],
            ["Mission_17",false],
            ["Mission_18",false],
            ["Mission_19",false],
            ["Mission_20",false],
            ["Mission_21",false],
            ["Mission_22",false],
            ["Mission_23",false],
            ["Mission_24",false],
            ["Mission_25",false],
            ["Mission_26",false],
            ["Mission_27",false],
            ["Mission_28",false],
            ["Mission_29",false],
            ["Mission_30",false],
            ["Mission_31",false],
            ["Mission_32",false],
            ["Mission_33",false],
            ["Mission_34",false],
            ["Mission_35",false],
            ["Mission_36",false],
            ["Mission_37",false],
            ["Mission_38",false],
            ["Mission_39",false],
            ["Mission_40",false],
            ["Mission_41",false],
            ["Mission_42",false],
            ["Mission_43",false],
            ["Mission_44",false],
            ["Mission_45",false],
            ["Mission_46",false],
            ["Mission_47",false],
            ["Mission_48",false],
            ["Mission_49",false],
            ["Mission_50",false]
];