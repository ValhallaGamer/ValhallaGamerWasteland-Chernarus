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
                    "V3S_Civ",
					"UralCivil",
					"ATV_US_EP1",
					"S1203_ambulance_EP1",
                    "hilux1_civil_2_covered",
                    "MMT_USMC",
                    "hilux1_civil_1_open"];

//Military Vehicle List - Random Spawns
militaryVehicles = [
                    "SUV_PMC",
					"MTVR",
					"BAF_Offroad_W",
					"HMMWV",
					"HMMWV_Ambulance",
					"GAZ_Vodnik_MedEvac"];

//Armed Military Vehicle List - Random Spawns
armedMilitaryVehicles = [
                            "ArmoredSUV_PMC",
						    "Pickup_PK_GUE",
							"UAZ_MG_TK_EP1",
							"LandRover_MG_TK_INS_EP1",
							"HMMWV_M2",
							"HMMWV_Armored",
							"HMMWV_MK19",
							"HMMWV_TOW",
                            "UAZ_MG_CDF",
                            "LandRover_SPG9_TK_EP1",
                            "Offroad_DSHKM_INS",
							"GAZ_Vodnik"];

//Item Config
pickupList = [
                "Satelit",
				"EvMoney",
				"Suitcase",
				"Fuel_can"];

//Object List - Random Spawns.
objectList = [
                "Land_Barrel_water",
				"Land_prebehlavka",
				"Land_leseni2x",
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
                "Land_Campfire_burning",
                "Land_GuardShed",
                "Land_tent_east",
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
                    "MH6J_EP1",
                    "UH60M_EP1",
                    "AH6X_EP1"];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons = [
				    "AK_47_M",
				    "AK_47_S",
				    "AK_74",
				    "LeeEnfield",
				    "M16A2",
                    "M4A1",
				    "M79_EP1",
				    "Sa58V_EP1",
				    "SCAR_L_CQC",
                    "huntingrifle",
                    "Mk13_EP1",
                    "M4A1_Aim",
                    "M4A1_Aim_camo",
                    "M16A4",
                    "AKS_74_kobra",
                    "AK_107_kobra",
                    "SCAR_L_CQC_Holo",
                    "SCAR_L_STD_HOLO",
                    "FN_FAL",
                    "M14_EP1",
                    "M4A3_CCO_EP1",
                    "AKS_74_U"];
                
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