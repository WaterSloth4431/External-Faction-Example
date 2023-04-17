
//██████╗  ██████╗ ██╗     ██╗ ██████╗███████╗
//██╔══██╗██╔═══██╗██║     ██║██╔════╝██╔════╝
//██████╔╝██║   ██║██║     ██║██║     █████╗  
//██╔═══╝ ██║   ██║██║     ██║██║     ██╔══╝  
//██║     ╚██████╔╝███████╗██║╚██████╗███████╗
//╚═╝      ╚═════╝ ╚══════╝╚═╝ ╚═════╝╚══════╝
//http://patorjk.com/software/taag/#p=display&v=3&f=ANSI%20Shadow&t=Police

_array = [];

_array set [T_SIZE-1, nil];

_array set [T_NAME, "tWW2_SS_police"]; 									//Template name + variable (not displayed)
_array set [T_DESCRIPTION, "WW2 German SS units. 1939-1945."]; 	//Template display description
_array set [T_DISPLAY_NAME, "WW2 SS"]; 						//Template display name
_array set [T_FACTION, T_FACTION_Police]; 							//Faction type: police, T_FACTION_military, T_FACTION_Police
_array set [T_REQUIRED_ADDONS, ["A3_Characters_F"]]; 				//Addons required to play this template

//====API====
_api = []; _api resize T_API_SIZE;
_api set [T_API_SIZE-1, nil]; 										//Make an array full of nil
_api set [T_API_fnc_VEH_siren, {
	params ["_vehicle", "_siren"];
	if(typeOf _vehicle in ["LIB_Kfz1_sernyt"]) then {
		private _beacon = if(typeOf _vehicle in ["LIB_Kfz1_sernyt"]) then { 'beaconsstart' };
		if(_siren) then {
			[_vehicle, 'CustomSoundController1', 1, 0.2] remoteExec ['BIS_fnc_setCustomSoundController'];
			_vehicle animate [_beacon, 1, true];
		} else {
			[_vehicle, 'CustomSoundController1', 0, 0.4] remoteExec ['BIS_fnc_setCustomSoundController'];
			_vehicle animate [_beacon, 0, true];
		};
	};
}];

//==== Infantry ====
_inf = []; _inf resize T_INF_size;
_inf set [T_INF_SIZE-1, nil]; 					//Make an array full of nil
_inf set [T_INF_default, ["B_GEN_Soldier_F"]];	//Default infantry if nothing is found

_inf set [T_INF_SL, ["WW2_SS_Officer", 0.50, "WW2_SS_Rilfeman1", 1, "WW2_SS_Rilfeman2", 1, "WW2_SS_Rilfeman3", 1, "WW2_SS_Rilfeman1", 1, "WW2_SS_Rilfeman2", 1.25, "WW2_SS_Rilfeman3", 1.25, "WW2_SS_Rilfeman1", 1.25, "WW2_SS_Rilfeman2", 1.25, "WW2_SS_Rilfeman3", 1.25]];
_inf set [T_INF_TL, ["WW2_SS_Officer", 0.50, "WW2_SS_Rilfeman1", 1, "WW2_SS_Rilfeman2", 1, "WW2_SS_Rilfeman3", 1, "WW2_SS_Rilfeman1", 1, "WW2_SS_Rilfeman2", 1.25, "WW2_SS_Rilfeman3", 1.25, "WW2_SS_Rilfeman1", 1.25, "WW2_SS_Rilfeman2", 1.25, "WW2_SS_Rilfeman3", 1.25]];
_inf set [T_INF_officer, ["WW2_SS_Officer", 0.50, "WW2_SS_Rilfeman1", 1, "WW2_SS_Rilfeman2", 1, "WW2_SS_Rilfeman3", 1, "WW2_SS_Rilfeman1", 1, "WW2_SS_Rilfeman2", 1.25, "WW2_SS_Rilfeman3", 1.25, "WW2_SS_Rilfeman1", 1.25, "WW2_SS_Rilfeman2", 1.25, "WW2_SS_Rilfeman3", 1.25]];

//==== Vehicles ====
_veh = []; _veh resize T_VEH_SIZE;
_veh set [T_VEH_DEFAULT, ["LIB_Kfz1_sernyt"]];
_veh set [T_VEH_car_unarmed, ["LIB_Kfz1_sernyt", "LIB_Kfz1", "LIB_Kfz1_camo", "LIB_Kfz1_Hood_sernyt", "LIB_Kfz1_Hood", "LIB_Kfz1_Hood_camo"]];

//==== Drones ====
_drone = []; _drone resize T_DRONE_SIZE;
_drone set [T_DRONE_SIZE-1, nil];

//==== Cargo ====
_cargo = +(tDefault select T_CARGO);

//==== Groups ====
_group = +(tDefault select T_GROUP);

//==== Arrays ====
_array set [T_API, _api];
_array set [T_INF, _inf];
_array set [T_VEH, _veh];
_array set [T_DRONE, _drone];
_array set [T_CARGO, _cargo];
_array set [T_GROUP, _group];

_array