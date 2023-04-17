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
_RandomHeadgear = selectRandom [ "H_LIB_GER_Helmet_SSbT1"];
this addHeadgear _RandomHeadgear;
/*Uniform*/
_RandomUniform = selectRandom ["U_LIB_GER_Rifleman_SSMnnK98"];
this forceAddUniform _RandomUniform;
/*Vest*/
_RandomVest = selectRandom ["V_LIB_GER_VestKar98_0b"];
this addVest _RandomVest;
/*Backpack*/

/*Weapon*/
this addWeapon "LIB_K98";
//this addWeapon "LIB_P38";
/*WeaponItem*/
//this addPrimaryWeaponItem "acc_flashlight";
//_RandomPrimaryWeaponItem = selectRandom ["optic_Yorris", "optic_Holosight_smg_blk_F", "", "", ""];
//this addPrimaryWeaponItem _RandomPrimaryWeaponItem;
this addPrimaryWeaponItem "LIB_5Rnd_792x57";
//this addHandgunItem "acc_flashlight_pistol";
//this addHandgunItem "LIB_8Rnd_9x19";

/*Items*/
this addItemToUniform "FirstAidKit";
//for "_i" from 1 to 3 do {this addItemToVest "6Rnd_45ACP_Cylinder";};
for "_i" from 1 to 2 do {this addItemToVest "LIB_5Rnd_792x57";};
//this addItemToUniform "ACE_Chemlight_HiBlue";
//for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};

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