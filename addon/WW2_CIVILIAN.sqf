
// ██████╗██╗██╗   ██╗██╗██╗     ██╗ █████╗ ███╗   ██╗
//██╔════╝██║██║   ██║██║██║     ██║██╔══██╗████╗  ██║
//██║     ██║██║   ██║██║██║     ██║███████║██╔██╗ ██║
//██║     ██║╚██╗ ██╔╝██║██║     ██║██╔══██║██║╚██╗██║
//╚██████╗██║ ╚████╔╝ ██║███████╗██║██║  ██║██║ ╚████║
// ╚═════╝╚═╝  ╚═══╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
//http://patorjk.com/software/taag/#p=display&v=3&f=ANSI%20Shadow&t=Civilian

//Updated: March 2020 by Marvis

_array = [];

_array set [T_SIZE-1, nil]; //Make an array having the size equal to the number of categories first

_array set [T_NAME, "tWW2_Civilian"];                           //Template name + variable (not displayed)
_array set [T_DESCRIPTION, "1940's Civilians."];     //Template display description
_array set [T_DISPLAY_NAME, "WW2 Civilians"];      //Template display name
_array set [T_FACTION, T_FACTION_Civ];                      //Faction type
_array set [T_REQUIRED_ADDONS, ["A3_Characters_F"]];        //Addons required to play this template

_civHeadgear = [
	"GEH_Chapeau_Noir2",
	"GEH_Chapeau_Noir1",
	"GEH_Chapeau_MarronFonce",
	"GEH_Chapeau_MarronClair",
	"GEH_Chapeau_GrisFonce",
	"GEH_Chapeau_GrisClair",
	"GEH_Chapeau_Gris",
	"GEH_Chapeau_Brun",
	"GEH_Beret_blk",
	"GERDS_Beret1",
	"GEH_Beret_blue",
	"H_LIB_CIV_Villager_Cap_1",
	"H_LIB_CIV_Villager_Cap_2",
	"H_LIB_CIV_Villager_Cap_3",
	"H_LIB_CIV_Villager_Cap_4",
	"H_LIB_CIV_Worker_Cap_4",
	"H_LIB_CIV_Worker_Cap_2",
	"H_LIB_CIV_Worker_Cap_3",
	"H_LIB_CIV_Worker_Cap_1",
	"H_LIB_WP_Beret",
	"H_LIB_WP_Cap"
];

_civFacewear = [
	"G_GEHeadBandage_Bloody",
	"G_GEHeadBandage_Clean",
	"G_GEHeadBandage_Stained", 
	"fow_g_glasses1", 
	"fow_g_glasses2", 
	"fow_g_glasses3", 
	"G_LIB_GER_Helmet_Glasses", 
	"fow_g_watch2", 
	"fow_g_watch1", 
	"fow_g_glasses4"
];

_civUniforms = [
	"U_GELIB_FRA_Assistant",
	"U_GELIB_FRA_Citizen01",
	"U_GELIB_FRA_Citizen02",
	"U_GELIB_FRA_Citizen03",
	"U_GELIB_FRA_Citizen04",
	"U_GELIB_FRA_Functionary01",
	"U_GELIB_FRA_Functionary02",
	"U_GELIB_FRA_Woodlander01",
	"U_GELIB_FRA_Woodlander02",
	"U_GELIB_FRA_Schoolteacher",
	"U_GELIB_FRA_Doctor1",
	"U_GELIB_FRA_Doctor2",
	"U_GELIB_FRA_Villager01",
	"U_GELIB_FRA_CitizenFF01",
	"U_GELIB_FRA_CitizenFF02",
	"U_GELIB_FRA_CitizenFF03",
	"U_GELIB_FRA_CitizenFF04",
	"U_GELIB_FRA_WoodlanderFF01",
	"U_GELIB_FRA_WoodlanderFF04",
	"U_GELIB_FRA_EmployeFF",
	"U_GELIB_FRA_AssistantFF",
	"U_GELIB_FRA_FunctionaryFF01",
	"U_GELIB_FRA_FunctionaryFF02",
	"U_GELIB_FRA_VillagerFF01",
	"U_GELIB_FRA_VillagerFF02",
	"U_GELIB_FRA_MGunner_gvnpFF13",
	"U_GELIB_FRA_MGunner_gvmpFF14",
	"U_GELIB_FRA_SoldierFF_gvmpFF15",
	"U_GELIB_FRA_SoldierFF_gvmpFF16",
	"U_GELIB_FRA_ScoutFF_Camo31vgpFF17",
	"U_GELIB_FRA_ScoutFF_Camo32vmpFF18",
	"U_GELIB_FRA_SoldierFF_w31vmpFF19",
	"U_GELIB_FRA_SoldierFF_w32vgpFF20",
	"U_GELIB_FRA_CitizenFFI01",
	"U_GELIB_FRA_CitizenFFI02",
	"U_GELIB_FRA_CitizenFFI03",
	"U_GELIB_FRA_CitizenFFI04",
	"U_GELIB_FRA_WoodlanderFFI01",
	"U_GELIB_FRA_WoodlanderFFI04",
	"U_GELIB_FRA_EmployeFFI",
	"U_GELIB_FRA_AssistantFFI", 
	"U_GELIB_FRA_FunctionaryFFI01", 
	"U_GELIB_FRA_FunctionaryFFI02", 
	"U_GELIB_FRA_VillagerFFI01", 
	"U_GELIB_FRA_VillagerFFI02", 
	"U_GELIB_FRA_MGunner_gvnpFFI13", 
	"U_GELIB_FRA_MGunner_gvmpFFI14", 
	"U_GELIB_FRA_SoldierFFI_jvvpFFI15", 
	"U_GELIB_FRA_SoldierFFI_mvgpFFI16", 
	"U_GELIB_FRA_ScoutFFI_Camo31vgpFFI17", 
	"U_GELIB_FRA_ScoutFFI_Camo32vmpFFI18", 
	"U_GELIB_FRA_SoldierFFI_w31vmpFFI19", 
	"U_GELIB_FRA_SoldierFFI_w32vgpFFI20", 
	"U_LIB_CIV_Worker_2", 
	"U_LIB_CIV_Worker_1", 
	"U_LIB_CIV_Worker_4", 
	"U_LIB_CIV_Worker_3", 
	"U_LIB_CIV_Woodlander_4", 
	"U_LIB_CIV_Woodlander_3", 
	"U_LIB_CIV_Woodlander_2", 
	"U_LIB_CIV_Woodlander_1", 
	"U_LIB_CIV_Villager_3", 
	"U_LIB_CIV_Villager_2", 
	"U_LIB_CIV_Villager_4", 
	"U_LIB_CIV_Villager_1", 
	"U_LIB_CIV_Schoolteacher_2", 
	"U_LIB_CIV_Schoolteacher", 
	"U_LIB_CIV_Rocker_1", 
	"U_LIB_CIV_Priest", 
	"U_LIB_CIV_Functionary_2", 
	"U_LIB_CIV_Functionary_3", 
	"U_LIB_CIV_Functionary_1", 
	"U_LIB_CIV_Functionary_4", 
	"U_LIB_CIV_Doctor", 
	"U_LIB_CIV_Citizen_8", 
	"U_LIB_CIV_Citizen_7", 
	"U_LIB_CIV_Citizen_6", 
	"U_LIB_CIV_Citizen_5", 
	"U_LIB_CIV_Citizen_4", 
	"U_LIB_CIV_Citizen_3", 
	"U_LIB_CIV_Citizen_2", 
	"U_LIB_CIV_Citizen_1", 
	"U_LIB_CIV_Assistant_2", 
	"U_LIB_CIV_Assistant"
];

_civBackpacks = [
	"GEB_FieldPack_cbr",
	"GEB_FieldPack_khk",
	"GEB_FieldPack_blk",
	"B_LIB_GER_Tonister34_cowhide",
	"B_LIB_GER_MedicBackpack_Empty"
];

//==== Arsenal ====
_arsenal = [];
_arsenal resize T_ARSENAL_SIZE;
_arsenal set[T_ARSENAL_primary, []];
_arsenal set[T_ARSENAL_primary_items, []];
_arsenal set[T_ARSENAL_secondary, []];
_arsenal set[T_ARSENAL_secondary_items, []];
_arsenal set[T_ARSENAL_handgun, []];
_arsenal set[T_ARSENAL_handgun_items, []];
_arsenal set[T_ARSENAL_ammo, []];
_arsenal set[T_ARSENAL_items, []];

_arsenal set[T_ARSENAL_vests, [
    "V_LIB_SOV_RA_Belt"
]];
_arsenal set[T_ARSENAL_backpacks, [
    "GEB_FieldPack_cbr",
	"GEB_FieldPack_khk",
	"GEB_FieldPack_blk",
	"B_LIB_GER_Tonister34_cowhide",
	"B_LIB_GER_MedicBackpack_Empty"
]];
_arsenal set[T_ARSENAL_uniforms, [
	"U_GELIB_FRA_Assistant",
	"U_GELIB_FRA_Citizen01",
	"U_GELIB_FRA_Citizen02",
	"U_GELIB_FRA_Citizen03",
	"U_GELIB_FRA_Citizen04",
	"U_GELIB_FRA_Functionary01",
	"U_GELIB_FRA_Functionary02",
	"U_GELIB_FRA_Woodlander01",
	"U_GELIB_FRA_Woodlander02",
	"U_GELIB_FRA_Schoolteacher",
	"U_GELIB_FRA_Doctor1",
	"U_GELIB_FRA_Doctor2",
	"U_GELIB_FRA_Villager01",
	"U_GELIB_FRA_CitizenFF01",
	"U_GELIB_FRA_CitizenFF02",
	"U_GELIB_FRA_CitizenFF03",
	"U_GELIB_FRA_CitizenFF04",
	"U_GELIB_FRA_WoodlanderFF01",
	"U_GELIB_FRA_WoodlanderFF04",
	"U_GELIB_FRA_EmployeFF",
	"U_GELIB_FRA_AssistantFF",
	"U_GELIB_FRA_FunctionaryFF01",
	"U_GELIB_FRA_FunctionaryFF02",
	"U_GELIB_FRA_VillagerFF01",
	"U_GELIB_FRA_VillagerFF02",
	"U_GELIB_FRA_MGunner_gvnpFF13",
	"U_GELIB_FRA_MGunner_gvmpFF14",
	"U_GELIB_FRA_SoldierFF_gvmpFF15",
	"U_GELIB_FRA_SoldierFF_gvmpFF16",
	"U_GELIB_FRA_ScoutFF_Camo31vgpFF17",
	"U_GELIB_FRA_ScoutFF_Camo32vmpFF18",
	"U_GELIB_FRA_SoldierFF_w31vmpFF19",
	"U_GELIB_FRA_SoldierFF_w32vgpFF20",
	"U_GELIB_FRA_CitizenFFI01",
	"U_GELIB_FRA_CitizenFFI02",
	"U_GELIB_FRA_CitizenFFI03",
	"U_GELIB_FRA_CitizenFFI04",
	"U_GELIB_FRA_WoodlanderFFI01",
	"U_GELIB_FRA_WoodlanderFFI04",
	"U_GELIB_FRA_EmployeFFI",
	"U_GELIB_FRA_AssistantFFI", 
	"U_GELIB_FRA_FunctionaryFFI01", 
	"U_GELIB_FRA_FunctionaryFFI02", 
	"U_GELIB_FRA_VillagerFFI01", 
	"U_GELIB_FRA_VillagerFFI02", 
	"U_GELIB_FRA_MGunner_gvnpFFI13", 
	"U_GELIB_FRA_MGunner_gvmpFFI14", 
	"U_GELIB_FRA_SoldierFFI_jvvpFFI15", 
	"U_GELIB_FRA_SoldierFFI_mvgpFFI16", 
	"U_GELIB_FRA_ScoutFFI_Camo31vgpFFI17", 
	"U_GELIB_FRA_ScoutFFI_Camo32vmpFFI18", 
	"U_GELIB_FRA_SoldierFFI_w31vmpFFI19", 
	"U_GELIB_FRA_SoldierFFI_w32vgpFFI20", 
	"U_LIB_CIV_Worker_2", 
	"U_LIB_CIV_Worker_1", 
	"U_LIB_CIV_Worker_4", 
	"U_LIB_CIV_Worker_3", 
	"U_LIB_CIV_Woodlander_4", 
	"U_LIB_CIV_Woodlander_3", 
	"U_LIB_CIV_Woodlander_2", 
	"U_LIB_CIV_Woodlander_1", 
	"U_LIB_CIV_Villager_3", 
	"U_LIB_CIV_Villager_2", 
	"U_LIB_CIV_Villager_4", 
	"U_LIB_CIV_Villager_1", 
	"U_LIB_CIV_Schoolteacher_2", 
	"U_LIB_CIV_Schoolteacher", 
	"U_LIB_CIV_Rocker_1", 
	"U_LIB_CIV_Priest", 
	"U_LIB_CIV_Functionary_2", 
	"U_LIB_CIV_Functionary_3", 
	"U_LIB_CIV_Functionary_1", 
	"U_LIB_CIV_Functionary_4", 
	"U_LIB_CIV_Doctor", 
	"U_LIB_CIV_Citizen_8", 
	"U_LIB_CIV_Citizen_7", 
	"U_LIB_CIV_Citizen_6", 
	"U_LIB_CIV_Citizen_5", 
	"U_LIB_CIV_Citizen_4", 
	"U_LIB_CIV_Citizen_3", 
	"U_LIB_CIV_Citizen_2", 
	"U_LIB_CIV_Citizen_1", 
	"U_LIB_CIV_Assistant_2", 
	"U_LIB_CIV_Assistant"
]];
_arsenal set[T_ARSENAL_facewear, [
	"G_GEHeadBandage_Bloody",
	"G_GEHeadBandage_Clean",
	"G_GEHeadBandage_Stained", 
	"fow_g_glasses1", 
	"fow_g_glasses2", 
	"fow_g_glasses3", 
	"G_LIB_GER_Helmet_Glasses", 
	"fow_g_watch2", 
	"fow_g_watch1", 
	"fow_g_glasses4"
]];
_arsenal set[T_ARSENAL_headgear, [
    "GEH_Chapeau_Noir2",
	"GEH_Chapeau_Noir1",
	"GEH_Chapeau_MarronFonce",
	"GEH_Chapeau_MarronClair",
	"GEH_Chapeau_GrisFonce",
	"GEH_Chapeau_GrisClair",
	"GEH_Chapeau_Gris",
	"GEH_Chapeau_Brun",
	"GEH_Beret_blk",
	"GERDS_Beret1",
	"GEH_Beret_blue",
	"H_LIB_CIV_Villager_Cap_1",
	"H_LIB_CIV_Villager_Cap_2",
	"H_LIB_CIV_Villager_Cap_3",
	"H_LIB_CIV_Villager_Cap_4",
	"H_LIB_CIV_Worker_Cap_4",
	"H_LIB_CIV_Worker_Cap_2",
	"H_LIB_CIV_Worker_Cap_3",
	"H_LIB_CIV_Worker_Cap_1",
	"H_LIB_WP_Beret",
	"H_LIB_WP_Cap"
]];

//==== Infantry ====
_inf = [];
_inf resize T_INF_SIZE;
_inf = _inf apply { ["WW2_CIVILIAN_Default"] };
_inf set [T_INF_default, ["C_man_1"]];
_inf set [T_INF_rifleman, [
    "WW2_PLAYER_1"
]];
_inf set [T_INF_unarmed, [
    "WW2_CIVILIAN_1"
]];
_inf set [T_INF_exp, [
    "WW2_CIVILIAN_Saboteur_1"
]];
_inf set [T_INF_survivor, [
    "WW2_CIVILIAN_Militant_1"
]];

//==== Vehicles ====
_civVehicles = [
	"LIB_CIV_GazM1",        8,
	"LIB_GazM1_dirty",      7,
	"LIB_FRA_CitC4",        4,
	"LIB_FRA_CitC4Ferme",   1
];

_civVehiclesOnlyNames = _civVehicles select { _x isEqualType "" };

_veh = +(tDefault select T_VEH);
_veh resize T_VEH_SIZE;
_veh set [T_VEH_default, _civVehicles];

// _veh set [T_VEH_boat_unarmed, ["C_Boat_Civil_01_F","C_Rubberboat","C_Boat_Transport_02_F"]];

//==== Cargo ====
_cargo = +(tDefault select T_CARGO);

// ==== Inventory ====
_inv = [T_INV] call t_fnc_newCategory;
_inv set [T_INV_items, +t_miscItems_civ_WW2 ];
_inv set [T_INV_backpacks, ["GEB_FieldPack_cbr", "B_LIB_SOV_RA_Rucksack"]];

// ==== Undercover ====
_uc = [];
_uc resize T_UC_SIZE;
_uc set[T_UC_headgear, +_civHeadgear];
_uc set[T_UC_facewear, +_civFacewear];
_uc set[T_UC_uniforms, +_civUniforms];
_uc set[T_UC_backpacks, +_civBackpacks];
_uc set[T_UC_civVehs, +_civVehiclesOnlyNames];
_array set [T_UC, _uc];

//==== Arrays ====
_array set [T_INF, _inf];
_array set [T_VEH, _veh];
_array set [T_DRONE, []];
_array set [T_CARGO, _cargo];
_array set [T_GROUP, []];
_array set [T_ARSENAL, _arsenal];
_array set [T_INV, _inv];

_array