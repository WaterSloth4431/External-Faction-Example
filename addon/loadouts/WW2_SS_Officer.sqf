
comment "Exported from Arsenal by Sparker";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
//this addWeapon "SMG_01_F";
//this addPrimaryWeaponItem "optic_ACO_grn_smg";
//this addPrimaryWeaponItem "30Rnd_45ACP_Mag_SMG_01";
this addWeapon "LIB_M1908";
//this addHandgunItem "acc_flashlight_pistol";
this addHandgunItem "LIB_8Rnd_9x19_P08";

comment "Add containers";
this forceAddUniform "U_LIB_GER_Officer_SSBrifabP08";
this addVest "V_LIB_GER_OfficerBeltBlack_0";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {this addItemToVest "LIB_8Rnd_9x19_P08";};
//this addItemToUniform "ACE_Chemlight_HiBlue";
//for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
//for "_i" from 1 to 3 do {this addItemToVest "30Rnd_45ACP_Mag_SMG_01";};
this addHeadgear "H_LIB_GER_OfficerCap_SS";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
//this linkItem "ItemRadio";

comment "Set identity";
[this,"Default","male02gre"] call BIS_fnc_setIdentity;
