removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

private _uniforms = [

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
	"U_GELIB_FRA_SoldierFFI_w32vgpFFI20"

];


this forceAddUniform selectRandom _uniforms;

private _vest = [
	"V_LIB_SOV_RA_Belt"
];

if (random 10 < 1) then { this addVest selectRandom _vest;
};

private _headgear = [
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

if (random 5 < 1) then { this addHeadgear selectRandom _headgear;
};

private _gunsAndAmmo = [
	// pistols
	["LIB_P38",					"lib_8rnd_9x19",			true],	0.9,
	["LIB_P08",					"lib_8rnd_9x19_p08",		true],	0.7,
	["LIB_Colt_M1911",			"lib_7rnd_45acp",			true],	0.7,
	["LIB_M1896",				"lib_10rnd_9x19_m1896",		true],	0.5,
	["LIB_TT33",				"lib_8rnd_762x25",			true],	0.9,
	["LIB_M1895",				"lib_7rnd_762x38",			true],	0.6,
	["LIB_WaltherPPK",			"lib_7rnd_765x17_ppk",		true],	0.7,
	["LIB_Webley_mk6",			"lib_6rnd_455",				true],	0.6,
	// long
	["LIB_M1903A3_Springfield",	"lib_5Rnd_762x63",			false],	0.1,
	["LIB_K98",					"lib_5rnd_792x57",			false],	0.1,
	["LIB_LeeEnfield_No4",		"lib_10rnd_770x56",			false],	0.1,
	["LIB_M9130",				"lib_5rnd_762x54",			false],	0.1,
	["LIB_DELISLE",				"lib_7rnd_45acp_delisle",	false],	0.1
];

(selectRandomWeighted _gunsAndAmmo) params ["_gun", "_ammo", "_isPistol"];

this addWeapon _gun;

if(_isPistol) then {
	this addHandgunItem "acc_flashlight_pistol";
	this addHandgunItem _ammo;
} else {
	this addWeaponItem [_gun, "acc_flashlight"];
	this addWeaponItem [_gun, _ammo];
};



if(random 5 < 1) then {
	this addGoggles selectRandomWeighted [
		"fow_g_glasses1", 		1,
		"fow_g_glasses2", 		1,
		"fow_g_glasses3", 		1,
		"fow_g_glasses4", 		1,
		"G_LIB_GER_Helmet_Glasses", 		1,
		"fow_g_glasses3", 		1
	];
};

//====Items====
this linkItem "ItemMap";
this linkItem "LIB_GER_ItemCompass";
this linkItem "LIB_GER_ItemWatch";

for "_i" from 1 to 3 do { this addItemToUniform _ammo };

//====ACE Items====
for "_i" from 1 to 4 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_elasticBandage";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_packingBandage";};
this addItemToUniform "ACE_quikclot";
this addItemToUniform "ACE_tourniquet";

//====Identity====
private _voice = [
	"male01gre",
    "male02gre",
    "male03gre",
	"male04gre",
	"male05gre",
	"male06gre",
	"male01engfre",
	"male02engfre",
	"male01eng",
	"male02eng",
	"male03eng",
	"male04eng",
	"male05eng",
	"male06eng",
	"male07eng",
	"male08eng",
	"male09eng",
	"male10eng",
	"male11eng",
	"male12eng",
	"male01engb",
	"male02engb",
	"male03engb",
	"male04engb",
	"male05engb"
];

[this, selectRandom gVanillaFaces,selectRandom _voice] call BIS_fnc_setIdentity;