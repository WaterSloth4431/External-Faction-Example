removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

[this, selectRandom gVanillaFaces] call BIS_fnc_setIdentity;

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

this addBackpack selectRandom [
		"GEB_FieldPack_cbr",
		"GEB_FieldPack_khk",
		"GEB_FieldPack_blk",
		"B_LIB_GER_Tonister34_cowhide",
		"B_LIB_GER_MedicBackpack_Empty"
];

//====Items====
this linkItem "ItemMap";
this linkItem "LIB_GER_ItemCompass";
this linkItem "LIB_GER_ItemWatch";

//====ACE Items====
for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_elasticBandage";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_packingBandage";};
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