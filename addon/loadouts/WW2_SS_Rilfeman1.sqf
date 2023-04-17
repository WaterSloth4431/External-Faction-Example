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
_RandomHeadgear = selectRandom [ "H_LIB_GER_OfficerCap_SS_Uffz", "H_LIB_GER_OfficerCap_SS", "H_LIB_GER_Helmet_SSbT1"];
this addHeadgear _RandomHeadgear;
/*Uniform*/
_RandomUniform = selectRandom ["U_LIB_GER_Unterofficer_SSHschaMP40", "U_LIB_GER_Officer_SSHstufabMP40", "U_LIB_GER_Officer_SSHstufsbMP40"];
this forceAddUniform _RandomUniform;
/*Vest*/
_RandomVest = selectRandom ["V_LIB_GER_VestUnterofficer_0A2", "V_LIB_GER_OfficerVestBlack_0A", "V_LIB_GER_VestMP40_0b"];
this addVest _RandomVest;
/*Backpack*/

/*Weapon*/
this addWeapon "LIB_MP40";
this addWeapon "LIB_P38";
/*WeaponItem*/
//this addPrimaryWeaponItem "acc_flashlight";
//_RandomPrimaryWeaponItem = selectRandom ["optic_Yorris", "optic_Holosight_smg_blk_F", "", "", ""];
//this addPrimaryWeaponItem _RandomPrimaryWeaponItem;
this addPrimaryWeaponItem "LIB_32Rnd_9x19";
//this addHandgunItem "acc_flashlight_pistol";
this addHandgunItem "LIB_8Rnd_9x19";

/*Items*/
this addItemToUniform "FirstAidKit";
for "_i" from 1 to 3 do {this addItemToVest "6Rnd_45ACP_Cylinder";};
for "_i" from 1 to 2 do {this addItemToVest "30Rnd_9x21_Mag_SMG_02";};
this addItemToUniform "ACE_Chemlight_HiBlue";
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};

/*Items*/
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
//this linkItem "ItemRadio";

private _voice = [
	"male01gre", 
	"male02gre", 
	"male03gre", 
	"male04gre", 
	"male05gre"
];

[this,"Default",selectRandom _voice] call BIS_fnc_setIdentity;