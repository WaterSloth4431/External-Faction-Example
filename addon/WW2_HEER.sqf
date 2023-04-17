/*
███╗   ██╗ █████╗ ████████╗ ██████╗ 
████╗  ██║██╔══██╗╚══██╔══╝██╔═══██╗
██╔██╗ ██║███████║   ██║   ██║   ██║
██║╚██╗██║██╔══██║   ██║   ██║   ██║
██║ ╚████║██║  ██║   ██║   ╚██████╔╝
╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ 
http://patorjk.com/software/taag/#p=testall&v=3&f=Big%20Money-nw&t=NATO                              
                         
Vindicta Faction Template. Use this template as the basis for your template.
Updated: March 2020 by Marvis
*/

_array = [];

_array set [T_SIZE-1, nil];

_array set [T_NAME, "tWW2_Heer"]; // 														Template name + variable (not displayed)
_array set [T_DESCRIPTION, "WW2 German units. 1939-1945."]; // 			Template display description
_array set [T_DISPLAY_NAME, "WW2 Heer"]; // 											Template display name
_array set [T_FACTION, T_FACTION_military]; // 											Faction type: police, T_FACTION_military, T_FACTION_Police
_array set [T_REQUIRED_ADDONS, ["A3_Characters_F"]]; // 								Addons required to play this template


/* Infantry unit classes */
_inf = [];
_inf resize T_INF_SIZE;
_inf set [T_INF_default,  ["B_Soldier_F"]];					//Default infantry if nothing is found

_inf set [T_INF_SL, ["WW2Heer_Soldier_SL"]]; // = 1
_inf set [T_INF_TL, ["WW2Heer_Soldier_TL"]]; // = 2
_inf set [T_INF_officer, ["WW2Heer_officer"]]; // = 3
_inf set [T_INF_GL, ["WW2Heer_Soldier_GL"]]; // = 4
_inf set [T_INF_rifleman, ["WW2Heer_Soldier", 3, "WW2Heer_Soldier_lite", 1]]; // = 5
_inf set [T_INF_marksman, ["WW2Heer_soldier_M", 2, "WW2Heer_Sharpshooter", 1]]; // = 6
_inf set [T_INF_sniper, ["WW2Heer_ghillie_lsh"]]; // = 7
_inf set [T_INF_spotter, ["WW2Heer_spotter"]]; // = 8
_inf set [T_INF_exp, ["WW2Heer_soldier_exp", "WW2Heer_soldier_mine"]]; // = 9
_inf set [T_INF_ammo, ["WW2Heer_Soldier_A"]]; // = 10
_inf set [T_INF_LAT, ["WW2Heer_soldier_LAT2"]]; // = 11
_inf set [T_INF_AT, ["WW2Heer_soldier_LAT", 5, "WW2Heer_soldier_AT", 1]]; // = 12
_inf set [T_INF_AA, ["WW2Heer_soldier_AA"]]; // = 13
_inf set [T_INF_LMG, ["WW2Heer_soldier_AR"]]; // = 14
_inf set [T_INF_HMG, ["WW2Heer_HeavyGunner"]]; // = 15
_inf set [T_INF_medic, ["WW2Heer_medic"]]; // = 16
_inf set [T_INF_engineer, ["WW2Heer_engineer", "WW2Heer_soldier_repair"]]; // = 17 
_inf set [T_INF_crew, ["WW2Heer_crew"]]; // = 18
_inf set [T_INF_crew_heli, ["WW2Heer_helicrew"]]; // = 19
_inf set [T_INF_pilot, ["WW2Heer_Fighter_Pilot"]]; // = 20
_inf set [T_INF_pilot_heli, ["WW2Heer_Helipilot"]]; // = 21
_inf set [T_INF_survivor, ["WW2Heer_Survivor"]]; // = 22
_inf set [T_INF_unarmed, ["WW2Heer_Soldier_unarmed"]]; // = 23
/* Recon unit classes */
_inf set [T_INF_recon_TL, ["WW2Heer_recon_TL"]]; // = 24
_inf set [T_INF_recon_rifleman, ["WW2Heer_recon"]]; // = 25
_inf set [T_INF_recon_medic, ["WW2Heer_recon_medic"]]; // = 26
_inf set [T_INF_recon_exp, ["WW2Heer_recon_exp"]]; // = 27
_inf set [T_INF_recon_LAT, ["WW2Heer_recon_LAT"]]; // = 28
_inf set [T_INF_recon_marksman, ["WW2Heer_recon_M", 2, "WW2Heer_Recon_Sharpshooter", 1]]; // = 29
_inf set [T_INF_recon_JTAC, ["WW2Heer_recon_JTAC"]]; // = 30
/* Diver unit classes */
_inf set [T_INF_diver_TL, ["WW2Heer_diver_TL"]]; // = 31
_inf set [T_INF_diver_rifleman, ["WW2Heer_diver"]]; // = 32
_inf set [T_INF_diver_exp, ["WW2Heer_diver_exp"]]; // = 33


/* Vehicle classes */
_veh = []; _veh resize T_VEH_SIZE;
_veh set [T_VEH_SIZE-1, nil];
_veh set [T_VEH_DEFAULT, ["LIB_Kfz1_sernyt"]]; // = 0 Default if nothing found

_veh set [T_VEH_car_unarmed, ["LIB_Kfz1_sernyt", "LIB_Kfz1", "LIB_Kfz1_camo", "LIB_Kfz1_Hood_sernyt", "LIB_Kfz1_Hood", "LIB_Kfz1_Hood_camo"]]; // = 1 – REQUIRED
_veh set [T_VEH_car_armed, ["LIB_Kfz1_MG42_sernyt", "LIB_Kfz1_MG42", "LIB_Kfz1_MG42_camo"]]; // = 2
_veh set [T_VEH_MRAP_unarmed, ["LIB_ger_M3_Scout_IFL", "LIB_ger_M3_Scout_FFV"]]; // = 3 – REQUIRED
_veh set [T_VEH_MRAP_HMG, ["LIB_ger_M3_Scout_IFL", "LIB_ger_M3_Scout_FFV"]]; // = 4 – REQUIRED
_veh set [T_VEH_MRAP_GMG, ["LIB_ger_M3_Scout_IFL", "LIB_ger_M3_Scout_FFV"]]; // = 5 – REQUIRED
_veh set [T_VEH_IFV, ["LIB_GER_M8_Greyhound", "LIB_SdKfz222", "LIB_SdKfz222_camo", "LIB_SdKfz222_gelbbraun", "LIB_SdKfz234_1", "LIB_SdKfz234_2", "LIB_SdKfz234_3", "LIB_SdKfz234_4"]]; // = 6 – REQUIRED
_veh set [T_VEH_APC, ["LIB_GER_M3_Halftrack", "Lib_ger_SdKfz251IFL_camo", "Lib_ger_SdKfz251IFL_feldgrau", "Lib_ger_SdKfz251IFL_feldgraucamo", "Lib_ger_SdKfz251IFL_gelb", "Lib_ger_SdKfz251IFL_tarn", "Lib_ger_SdKfz251FFV_camo", "Lib_ger_SdKfz251FFV_feldgrau", "Lib_ger_SdKfz251FFV_feldgraucamo", "Lib_ger_SdKfz251FFV_gelb", "Lib_ger_SdKfz251FFV_tarn", "Lib_ger_SdKfz7_Tarn53", "LIB_SdKfz_7", "LIB_SdKfz251", "LIB_SdKfz251_FFV"]]; // = 7 – REQUIRED
_veh set [T_VEH_MBT, ["LIB_FlakPanzerIV_Wirbelwind", 0.25, "LIB_SdKfz124", 0.25, "LIB_GER_PzKpfwIV_H_Feldgrau", 2.50, "LIB_PzKpfwIV_H_tarn51c", 2.50, "LIB_PzKpfwIV_H_tarn51d", 2.50, "LIB_PzKpfwIV_H", 2.50, "LIB_GER_SU85_Kaki", 1.25, "LIB_ger_M4A3_Sherman", 1.50, "LIB_T34_76_captured", 1.50, "LIB_ger_T3476_Feldgrau", 1.50, "LIB_ger_T3476_Kaki", 1.50, "LIB_PzKpfwV", 1.50, "LIB_GER_PzKpfwV_Feldgrau", 1.50, "LIB_GER_PzKpfwV_CamoZim", 1.50, "LIB_GER_PzKpfwV_Tarn", 1.50, "LIB_PzKpfwVI_B_tarn51d", 0.50, "LIB_PzKpfwVI_B_tarn51c", 0.50, "LIB_GER_PzKpfwVI_B_sPA505_Feldgrau", 0.50, "LIB_PzKpfwVI_E", 0.50, "LIB_PzKpfwVI_E_2", 0.50, "LIB_PzKpfwVI_E_tarn51c", 0.50, "LIB_PzKpfwVI_E_tarn51d", 0.50, "LIB_PzKpfwVI_E_tarn52c", 0.50, "LIB_PzKpfwVI_E_tarn52d", 0.50, "LIB_PzKpfwVI_E_1", 0.50, "LIB_PzKpfwVI_B_camo_DLV", 0.50]]; // = 8 – REQUIRED
_veh set [T_VEH_MRLS, ["LIB_Nebelwerfer41", "LIB_Nebelwerfer41_Camo", "LIB_Nebelwerfer41_Gelbbraun"]]; // = 9
_veh set [T_VEH_SPA, ["LIB_SdKfz124"]]; // = 10
_veh set [T_VEH_SPAA, ["LIB_FlakPanzerIV_Wirbelwind", "LIB_SdKfz_7_AA"]]; // = 11
_veh set [T_VEH_stat_HMG_high, ["LIB_MG34_Lafette_Deployed"]]; // = 12 – REQUIRED
_veh set [T_VEH_stat_GMG_high, ["LIB_MG34_Lafette_Deployed"]]; // = 13 – Replaced by T_VEH_stat_HMG_high if not set

//_veh set [T_VEH_stat_HMG_low, ["B_HMG_01_F"]]; // = 14
//_veh set [T_VEH_stat_GMG_low, ["B_GMG_01_F"]]; // = 15

_veh set [T_VEH_stat_AA, ["LIB_FlaK_30", "LIB_FlaK_38", "LIB_Flakvierling_38", "LIB_FlaK_36_AA"]]; // = 16
_veh set [T_VEH_stat_AT, ["LIB_Pak40", "LIB_leFH18_AT", "LIB_FlaK_36", "LIB_ger_Pak40_Feldgrau"]]; // = 17
_veh set [T_VEH_stat_mortar_light, ["LIB_GrWr34", "LIB_GrWr34_g"]]; // = 18 - REQUIRED

//_veh set [T_VEH_stat_mortar_heavy, ["B_Mortar_01_F"]]; // = 19 – UNUSED
//_veh set [T_VEH_heli_light, ["B_Heli_Light_01_F"]]; // = 20
//_veh set [T_VEH_heli_heavy, ["B_Heli_Transport_01_F"]]; // = 21
//_veh set [T_VEH_heli_cargo, ["B_Heli_Transport_03_unarmed_F"]]; // = 22
//_veh set [T_VEH_heli_attack, ["I_Heli_light_03_dynamicLoadout_F"]]; // = 23

_veh set [T_VEH_plane_attack, ["LIB_FW190F8", "LIB_FW190F8_4", "LIB_FW190F8_5", "LIB_FW190F8_2", "LIB_FW190F8_3", "LIB_Ju87"]]; // = 24
_veh set [T_VEH_plane_fighter , ["LIB_FW190F8", "LIB_FW190F8_4", "LIB_FW190F8_5", "LIB_FW190F8_2", "LIB_FW190F8_3", "LIB_Ju87"]]; // = 25

//_veh set [T_VEH_plane_cargo, [" "]]; // = 26 – UNUSED
//_veh set [T_VEH_plane_unarmed, [" "]]; // = 27 – UNUSED
//_veh set [T_VEH_plane_VTOL, [" "]]; // = 28 – UNUSED
//_veh set [T_VEH_boat_unarmed, ["B_Boat_Transport_01_F"]]; // = 29
//_veh set [T_VEH_boat_armed, ["B_Boat_Armed_01_minigun_F"]]; // = 30

_veh set [T_VEH_personal, ["LIB_Kfz1_sernyt"]]; // = 31
_veh set [T_VEH_truck_inf, ["LIB_OpelBlitz_Tent_Y_Camo", "LIB_OpelBlitz_Open_Y_Camo", "LIB_opelblitz_tentG_Feldgrau", "LIB_opelblitz_open_Feldgrau", "LIB_opelblitz_tentB_Feldgrau", "LIB_opelblitz_open_Tarn", "LIB_opelblitz_tentB_Tarn"]]; // = 32 – REQUIRED
_veh set [T_VEH_truck_cargo, ["LIB_OpelBlitz_Tent_Y_Camo", "LIB_OpelBlitz_Open_Y_Camo", "LIB_opelblitz_tentG_Feldgrau", "LIB_opelblitz_open_Feldgrau", "LIB_opelblitz_tentB_Feldgrau", "LIB_opelblitz_open_Tarn", "LIB_opelblitz_tentB_Tarn"]]; // = 33
_veh set [T_VEH_truck_ammo, ["LIB_OpelBlitz_Ammo"]]; // = 34 – REQUIRED
_veh set [T_VEH_truck_repair, ["LIB_OpelBlitz_Parm"]]; // = 35
_veh set [T_VEH_truck_medical , ["LIB_OpelBlitz_Ambulance", "LIB_ger_opelblitz_medical"]]; // = 36
_veh set [T_VEH_truck_fuel, ["LIB_OpelBlitz_Fuel"]]; // = 37

//_veh set [T_VEH_submarine, ["B_SDV_01_F"]]; // = 38


/* Drone classes */
_drone = []; _drone resize T_DRONE_SIZE;
_drone set [T_DRONE_SIZE-1, nil];
//_veh set [T_DRONE_DEFAULT , ["B_UAV_01_F"]];

//_drone set [T_DRONE_UGV_unarmed, ["B_UGV_01_F"]]; // = 0
//_drone set [T_DRONE_UGV_armed, ["B_UGV_01_rcws_F"]]; // = 1
//_drone set [T_DRONE_plane_attack, ["B_UAV_02_dynamicLoadout_F"]]; // = 2
//_drone set [T_DRONE_plane_unarmed, ["B_UAV_02_dynamicLoadout_F"]]; // = 3 – UNUSED
//_drone set [T_DRONE_heli_attack, ["B_T_UAV_03_dynamicLoadout_F"]]; // = 4
//_drone set [T_DRONE_quadcopter, ["B_UAV_01_F"]]; // = 5
//_drone set [T_DRONE_designator, ["B_Static_Designator_01_F"]]; // = 6
//_drone set [T_DRONE_stat_HMG_low, ["B_HMG_01_A_F"]]; // = 7
//_drone set [T_DRONE_stat_GMG_low, ["B_GMG_01_A_F"]]; // = 8
//_drone set [T_DRONE_stat_AA, ["B_SAM_System_03_F"]]; // = 9 – UNUSED


/* Cargo classes */
_cargo = +(tDefault select T_CARGO);

// Note that we have increased their capacity through the addon, other boxes are going to have reduced capacity
//_cargo set [T_CARGO_default,	["I_supplyCrate_F"]];
//_cargo set [T_CARGO_box_small,	["Box_Syndicate_Ammo_F"]];
//_cargo set [T_CARGO_box_medium,	["I_supplyCrate_F"]];
//_cargo set [T_CARGO_box_big,	["B_CargoNet_01_ammo_F"]];


/* Group templates */
_group = +(tDefault select T_GROUP);

//_group set [T_GROUP_SIZE-1, nil];
//_group set [T_GROUP_DEFAULT, [[[T_INF, T_INF_TL], [T_INF, T_INF_LMG], [T_INF, T_INF_rifleman], [T_INF, T_INF_GL]]]];

//_group set [T_GROUP_inf_sentry,			[[[T_INF, T_INF_TL], [T_INF, T_INF_rifleman]]]];
//_group set [T_GROUP_inf_fire_team,		[[[T_INF, T_INF_TL], [T_INF, T_INF_LMG], [T_INF, T_INF_rifleman], [T_INF, T_INF_GL]]]];
//_group set [T_GROUP_inf_AA_team,		[[[T_INF, T_INF_TL], [T_INF, T_INF_AA], [T_INF, T_INF_AA], [T_INF, T_INF_ammo]]]];
//_group set [T_GROUP_inf_AT_team,		[[[T_INF, T_INF_TL], [T_INF, T_INF_AT], [T_INF, T_INF_AT], [T_INF, T_INF_ammo]]]];
//_group set [T_GROUP_inf_rifle_squad,	[[[T_INF, T_INF_SL], 	[T_INF, T_INF_TL], [T_INF, T_INF_LMG], [T_INF, T_INF_GL], [T_INF, T_INF_LAT], 			[T_INF, T_INF_TL], [T_INF, T_INF_GL], [T_INF, T_INF_marksman], [T_INF, T_INF_medic]]]];
//_group set [T_GROUP_inf_assault_squad,	[[[T_INF, T_INF_SL], 	[T_INF, T_INF_exp], [T_INF, T_INF_exp], [T_INF, T_INF_GL], [T_INF, T_INF_LMG], 			[T_INF, T_INF_GL], [T_INF, T_INF_LMG],[T_INF, T_INF_engineer], [T_INF, T_INF_engineer]]]];
//_group set [T_GROUP_inf_weapons_squad,	[[[T_INF, T_INF_SL], 	[T_INF, T_INF_HMG], [T_INF, T_INF_ammo], [T_INF, T_INF_HMG], [T_INF, T_INF_ammo],		[T_INF, T_INF_TL], [T_INF, T_INF_AT], [T_INF, T_INF_ammo], [T_INF, T_INF_LAT]]]];
//_group set [T_GROUP_inf_sniper_team,	[[[T_INF, T_INF_sniper], [T_INF, T_INF_spotter]]]];
//_group set [T_GROUP_inf_officer,		[[[T_INF, T_INF_officer], [T_INF, T_INF_rifleman], [T_INF, T_INF_rifleman]]]];

//_group set [T_GROUP_inf_recon_patrol,	[[[T_INF, T_INF_recon_TL], [T_INF, T_INF_recon_rifleman], [T_INF, T_INF_recon_marksman], [T_INF, T_INF_recon_LAT]]]];
//_group set [T_GROUP_inf_recon_sentry,	[[[T_INF, T_INF_recon_TL], [T_INF, T_INF_recon_LAT] ]]];
//_group set [T_GROUP_inf_recon_squad,	[[[T_INF, T_INF_recon_TL], [T_INF, T_INF_recon_rifleman], [T_INF, T_INF_recon_marksman], [T_INF, T_INF_recon_medic], [T_INF, T_INF_recon_LAT],  [T_INF, T_INF_recon_JTAC], [T_INF, T_INF_recon_exp]]]];
//_group set [T_GROUP_inf_recon_team,		[[[T_INF, T_INF_recon_TL], [T_INF, T_INF_recon_rifleman], [T_INF, T_INF_recon_marksman], [T_INF, T_INF_recon_LAT], [T_INF, T_INF_recon_exp], [T_INF, T_INF_recon_medic]]]];



/* Unit descriptions */
//(T_NAMES select T_INF) set [T_INF_default, "Rifleman"]; //						= 0 Default if nothing found

//(T_NAMES select T_INF) set [T_INF_SL, "Squad Leader"]; //							= 1 Squad leader
//(T_NAMES select T_INF) set [T_INF_TL, "Team Leader"]; //							= 2 Team leader
//(T_NAMES select T_INF) set [T_INF_officer, "Officer"]; //							= 3 Officer
//(T_NAMES select T_INF) set [T_INF_GL, "Rifleman GL"]; //							= 4 GL soldier
//(T_NAMES select T_INF) set [T_INF_rifleman, "Rifleman"]; //						= 5 Basic rifleman
//(T_NAMES select T_INF) set [T_INF_marksman, "Marksman"]; //						= 6 Marksman
//(T_NAMES select T_INF) set [T_INF_sniper, "Sniper"]; //							= 7 Sniper
//(T_NAMES select T_INF) set [T_INF_spotter, "Spotter"]; //							= 8 Spotter
//(T_NAMES select T_INF) set [T_INF_exp, "Demo Specialist"]; //						= 9 Demo specialist
//(T_NAMES select T_INF) set [T_INF_ammo, "Ammo Bearer"]; //						= 10 Ammo bearer
//(T_NAMES select T_INF) set [T_INF_LAT, "Rifleman AT"]; //							= 11 Light Anti-Tank
//(T_NAMES select T_INF) set [T_INF_AT, "AT Specialist"]; //						= 12 Anti-Tank
//(T_NAMES select T_INF) set [T_INF_AA, "AA Specialist"]; //						= 13 Anti-Air
//(T_NAMES select T_INF) set [T_INF_LMG, "Light Machine Gunner"]; //				= 14 Light machinegunner
//(T_NAMES select T_INF) set [T_INF_HMG, "Heavy Machine Gunner"]; //				= 15 Heavy machinegunner
//(T_NAMES select T_INF) set [T_INF_medic, "Combat Medic"]; //						= 16 Combat Medic
//(T_NAMES select T_INF) set [T_INF_engineer, "Engineer"]; //						= 17 Engineer
//(T_NAMES select T_INF) set [T_INF_crew, "Crewman"]; //							= 18 Crewman
//(T_NAMES select T_INF) set [T_INF_crew_heli, "Heli. Crewman"]; //					= 19 Helicopter crew
//(T_NAMES select T_INF) set [T_INF_pilot, "Pilot"]; //								= 20 Plane pilot
//(T_NAMES select T_INF) set [T_INF_pilot_heli, "Heli. Pilot"]; //					= 21 Helicopter pilot
//(T_NAMES select T_INF) set [T_INF_survivor, "Survivor"]; //						= 22 Survivor
//(T_NAMES select T_INF) set [T_INF_unarmed, "Unarmed Man"]; //						= 23 Unarmed man

/* Recon unit descriptions */
//(T_NAMES select T_INF) set [T_INF_recon_TL, "Recon Team Leader"]; //				= 24 Recon team leader
//(T_NAMES select T_INF) set [T_INF_recon_rifleman, "Recon Rifleman"]; //			= 25 Recon scout
//(T_NAMES select T_INF) set [T_INF_recon_medic, "Recon Medic"]; //					= 26 Recon medic
//(T_NAMES select T_INF) set [T_INF_recon_exp, "Recon Explosive Specialist"]; //	= 27 Recon demo specialist
//(T_NAMES select T_INF) set [T_INF_recon_LAT, "Recon Rifleman AT"]; //				= 28 Recon light AT
//(T_NAMES select T_INF) set [T_INF_recon_marksman, "Recon Marksman"]; //			= 29 Recon marksman
//(T_NAMES select T_INF) set [T_INF_recon_JTAC, "Recon JTAC"]; //					= 30 Recon JTAC

/* Diver unit descriptions */
//(T_NAMES select T_INF) set [T_INF_diver_TL, "Diver Team Leader"]; //				= 31 Diver team leader
//(T_NAMES select T_INF) set [T_INF_diver_rifleman, "Diver Rifleman"]; //			= 32 Diver rifleman
//(T_NAMES select T_INF) set [T_INF_diver_exp, "Diver Explosive Specialist"]; //	= 33 Diver explosive specialist


/* Vehicle descriptions */
//(T_NAMES select T_VEH) set [T_VEH_default, "Unknown Vehicle"]; //					= 0 Default if nothing found

//(T_NAMES select T_VEH) set [T_VEH_car_unarmed, "Unarmed Car"]; //					= 1 Car like a Prowler or UAZ
//(T_NAMES select T_VEH) set [T_VEH_car_armed, "Armed Car"]; //						= 2 Car with any kind of mounted weapon
//(T_NAMES select T_VEH) set [T_VEH_MRAP_unarmed, "Unarmed MRAP"]; //				= 3 MRAP
//(T_NAMES select T_VEH) set [T_VEH_MRAP_HMG, "HMG MRAP"]; //						= 4 MRAP with a mounted HMG gun
//(T_NAMES select T_VEH) set [T_VEH_MRAP_GMG, "GMG MRAP"]; //						= 5 MRAP with a mounted GMG gun
//(T_NAMES select T_VEH) set [T_VEH_IFV, "IFV"]; //									= 6 Infantry fighting vehicle
//(T_NAMES select T_VEH) set [T_VEH_APC, "APC"]; //									= 7 Armored personnel carrier
//(T_NAMES select T_VEH) set [T_VEH_MBT, "MBT"]; //									= 8 Main Battle Tank
//(T_NAMES select T_VEH) set [T_VEH_MRLS, "MRLS"]; //								= 9 Multiple Rocket Launch System
//(T_NAMES select T_VEH) set [T_VEH_SPA, "Self-Propelled Artillery"]; //			= 10 Self-Propelled Artillery
//(T_NAMES select T_VEH) set [T_VEH_SPAA, "Self-Propelled Anti-Aircraft"]; //		= 11 Self-Propelled Anti-Aircraft system
//(T_NAMES select T_VEH) set [T_VEH_stat_HMG_high, "Static HMG"]; //				= 12 Static tripod Heavy Machine Gun (elevated)
//(T_NAMES select T_VEH) set [T_VEH_stat_GMG_high, "Static GMG"]; // 				= 13 Static tripod Grenade Machine Gun (elevated)
//(T_NAMES select T_VEH) set [T_VEH_stat_HMG_low, "Static HMG"]; //					= 14 Static tripod Heavy Machine Gun
//(T_NAMES select T_VEH) set [T_VEH_stat_GMG_low, "Static GMG"]; //					= 15 Static tripod Grenade Machine Gun
//(T_NAMES select T_VEH) set [T_VEH_stat_AA, "Static AA"]; //						= 16 Static AA, can be a gun or guided-missile launcher
//(T_NAMES select T_VEH) set [T_VEH_stat_AT, "Static AT"]; //						= 17 Static AT, e.g. a gun or ATGM
//(T_NAMES select T_VEH) set [T_VEH_stat_mortar_light, "Static Mortar"]; // 		= 18 Light mortar
//(T_NAMES select T_VEH) set [T_VEH_stat_mortar_heavy, "Static Heavy Mortar"]; // 	= 19 Heavy mortar, because RHS has some
//(T_NAMES select T_VEH) set [T_VEH_heli_light, "Light Helicopter"]; //				= 20 Light transport helicopter for infantry
//(T_NAMES select T_VEH) set [T_VEH_heli_heavy, "Heavy Helicopter"]; //				= 21 Heavy transport helicopter, both for cargo and infantry
//(T_NAMES select T_VEH) set [T_VEH_heli_cargo, "Cargo Helicopter"]; //				= 22 Heavy transport helicopter only for cargo
//(T_NAMES select T_VEH) set [T_VEH_heli_attack, "Attach Helicopter"]; //			= 23 Attack helicopter
//(T_NAMES select T_VEH) set [T_VEH_plane_attack, "Attack Plane"]; //				= 24 Attack plane, mainly for air-to-ground
//(T_NAMES select T_VEH) set [T_VEH_plane_fighter, "Figter Plane"]; // 				= 25 Fighter plane
//(T_NAMES select T_VEH) set [T_VEH_plane_cargo, "Cargo Plane"]; //					= 26 Cargo plane
//(T_NAMES select T_VEH) set [T_VEH_plane_unarmed, "Unarmed Plane"]; // 			= 27 Light unarmed plane like cessna
//(T_NAMES select T_VEH) set [T_VEH_plane_VTOL, "VTOL"]; //							= 28 VTOL
//(T_NAMES select T_VEH) set [T_VEH_boat_unarmed, "Unarmed Boat"]; //				= 29 Unarmed boat
//(T_NAMES select T_VEH) set [T_VEH_boat_armed, "Armed Boat"]; //					= 30 Armed boat
//(T_NAMES select T_VEH) set [T_VEH_personal, "Personal Vehicle"]; //				= 31 Quad bike or something for 1-2 men personal transport
//(T_NAMES select T_VEH) set [T_VEH_truck_inf, "Infantry Truck"]; //				= 32 Truck for infantry transport
//(T_NAMES select T_VEH) set [T_VEH_truck_cargo, "Cargo Truck"]; //					= 33 Truck for general cargo transport
//(T_NAMES select T_VEH) set [T_VEH_truck_ammo, "Ammo Truck"]; //					= 34 Ammo truck
//(T_NAMES select T_VEH) set [T_VEH_truck_repair, "Repair Truck"]; //				= 35 Repair truck
//(T_NAMES select T_VEH) set [T_VEH_truck_medical, "Medical Truck"]; // 			= 36 Medical truck
//(T_NAMES select T_VEH) set [T_VEH_truck_fuel, "Fuel Truck"]; //					= 37 Fuel truck
//(T_NAMES select T_VEH) set [T_VEH_submarine, "Submarine"]; //						= 38 Submarine


/* Drone descriptions */
//(T_NAMES select T_DRONE) set [T_DRONE_default, "Default drone"]; //					= 0 Default if nothing found
//(T_NAMES select T_DRONE) set [T_DRONE_UGV_unarmed, "Unarmed UGV"]; //					= 1 Any unarmed Unmanned Ground Vehicle
//(T_NAMES select T_DRONE) set [T_DRONE_UGV_armed, "Armed UGV"]; // 					= 2 Armed Unmanned Ground Vehicle
//(T_NAMES select T_DRONE) set [T_DRONE_plane_attack, "Armed UAV"]; // 					= 3 Attack drone plane, Unmanned Aerial Vehicle
//(T_NAMES select T_DRONE) set [T_DRONE_plane_unarmed, "Unarmed UAV"]; // 				= 4 Unarmed drone plane, Unmanned Aerial Vehicle
//(T_NAMES select T_DRONE) set [T_DRONE_heli_attack, "Unmanned Attack Helicopter"]; //  = 5 Attack helicopter
//(T_NAMES select T_DRONE) set [T_DRONE_quadcopter, "Unmanned Quadcopter"]; // 			= 6 Quad-rotor UAV
//(T_NAMES select T_DRONE) set [T_DRONE_designator, "Unmanned Designator"]; // 			= 7 Remote designator
//(T_NAMES select T_DRONE) set [T_DRONE_stat_HMG_low, "Unmanned Static HMG"]; // 		= 8 Static autonomous HMG
//(T_NAMES select T_DRONE) set [T_DRONE_stat_GMG_low, "Unmanned Static GMG"]; // 		= 9 Static autonomous GMG
//(T_NAMES select T_DRONE) set [T_DRONE_stat_AA, "Unmanned Static AA"]; // 				= 10 Static autonomous AA (?)


/* Cargo box descriptions */
//(T_NAMES select T_CARGO) set [T_CARGO_default, "Unknown Cargo Box"];
//(T_NAMES select T_CARGO) set [T_CARGO_box_small, "Small Cargo Box"];
//(T_NAMES select T_CARGO) set [T_CARGO_box_medium, "Medium Cargo Box"];
//(T_NAMES select T_CARGO) set [T_CARGO_box_big, "Big Cargo Box"];


/* Set arrays */
_array set [T_INF, _inf];
_array set [T_VEH, _veh];
_array set [T_DRONE, _drone];
_array set [T_CARGO, _cargo];
_array set [T_GROUP, _group];


_array /* END OF TEMPLATE */