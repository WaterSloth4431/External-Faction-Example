removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

private _uniforms = [
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

private _Backpack = [
		"GEB_FieldPack_cbr",
		"GEB_FieldPack_khk",
		"GEB_FieldPack_blk",
		"B_LIB_GER_Tonister34_cowhide",
		"B_LIB_GER_MedicBackpack_Empty"
];

private _Vest = [
		"V_LIB_SOV_RA_Belt"
];

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

/*
private _ownedDLCs = getDLCs 1;
// Apex
if(395180 in _ownedDLCs) then {
	_uniforms = _uniforms + [
		
	];
	_gunsAndAmmo = _gunsAndAmmo + [
		
	];
};

// Contact
if(1021790 in _ownedDLCs) then {
	_uniforms = _uniforms + [
		
	];
	_gunsAndAmmo = _gunsAndAmmo + [
		
	];
};

// Laws of War
if(1021790 in _ownedDLCs) then {
	_uniforms = _uniforms + [
		
	];
};

if(1021790 in _ownedDLCs) then {
	_headgear = _headgear + [
		
	];
};

if(1021790 in _ownedDLCs) then {
	_vest = _vest + [
		
	];
};

if(1021790 in _ownedDLCs) then {
	_backpack = _backpack + [
		
	];
};
*/
this forceAddUniform selectRandom _uniforms;

if (random 5 < 1) then { this addHeadgear selectRandom _headgear;
};

if (random 10 < 1) then { this addVest selectRandom _vest;
};

if (random 2 < 1) then { this addBackpack selectRandom _backpack;
};

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
		"fow_g_glasses3", 		1
	];
};

//====Items====
this linkItem "ItemMap";
this linkItem "LIB_GER_ItemCompass";
this linkItem "LIB_GER_ItemWatch";

for "_i" from 1 to 3 do { this addItemToUniform _ammo };

//====ACE Items====
for "_i" from 1 to 5 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_packingBandage";};
this addItemToUniform "ACE_quikclot";
this addItemToUniform "ACE_tourniquet";
this addItemToUniform "ACE_Flashlight_Maglite_ML300L";
this addItemToUniform "murshun_cigs_cigpack";
this addItemToUniform "murshun_cigs_lighter";

//====Identity====
[this, selectRandom gVanillaFaces] call BIS_fnc_setIdentity;