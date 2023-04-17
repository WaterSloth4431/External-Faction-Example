comment "Exported from Arsenal by MatrikSky";

removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

/*Helmet*/
this addHeadgear "H_LIB_GER_Helmet";
/*Uniform*/
this forceAddUniform "U_LIB_GER_Soldier_camo";
/*Vest*/
this addVest "V_LIB_GER_VestMP40";
/*Backpack*/
this addBackpack "B_LIB_GER_Panzer";

/*Weapon*/
this addWeapon "LIB_MP40";
this addWeapon "LIB_RPzB";
/*WeaponItem*/
this addPrimaryWeaponItem "LIB_32Rnd_9x19";
this addSecondaryWeaponItem "LIB_1Rnd_RPzB";

/*Items*/
for "_i" from 1 to 3 do {this addItemToVest "LIB_32Rnd_9x19";};
for "_i" from 1 to 2 do {this addItemToVest "LIB_Shg24";};
for "_i" from 1 to 3 do {this addItemToBackpack "LIB_1Rnd_RPzB";};
this addItemToVest "LIB_Shg24x7";
this addItemToVest "LIB_NB39";

/*ACE Items*/
for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_elasticBandage";
this addItemToUniform "ACE_packingBandage";
this addItemToUniform "ACE_quikclot";

/*Items*/
this linkItem "ItemMap";
this linkItem "LIB_GER_ItemCompass_deg";
this linkItem "LIB_GER_ItemWatch";

//====Identity====
private _voice = [
	"male01ger",
    "male02ger",
    "male03ger",
	"male04ger",
	"male05ger"
];

[this, "",selectRandom _voice] call BIS_fnc_setIdentity;