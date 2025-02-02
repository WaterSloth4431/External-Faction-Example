#include "common.hpp"

class CfgPatches
{
	class PBO_FILE_NAME
	{
		// Meta information for editor
		name = "<ChangeMe>";
		author = "<ChangeMe> Author";
		url = "<ChangeMe> https://youtu.be/cvh0nX08nRw";

		// Minimum compatible version. When the game's version is lower, pop-up warning will appear when launching the game.
		requiredVersion = 1.60; 
		
		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		// ! ! ! Add the addons requited by your faction here as well, same values as those you would specify in your faction file
		// ! ! ! But keep "vindicta_main" entry here as well!
		requiredAddons[] = { "vindicta_main" };
		
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups) unlocking.
		units[] = {};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};

class VinExternalFactions {
	class VinExternalFactionBase;
	
	// Add a new class per each new faction (military or civilian or police)
	// Class name must be unique!
	class WW2_CIVILIAN : VinExternalFactionBase {
		// File paths must use the PATH_TO_FILE(...) macro like below, otherwise Arma won't find your file
		loadoutsInitFile = PATH_TO_FILE(initLoadouts.sqf);
		file = PATH_TO_FILE(WW2_CIVILIAN.sqf);	// Must contain valid bath, otherwise it is ignored
		version = 1; // Don't change this!
	};
	class WW2_SS_POLICE : VinExternalFactionBase {
		// File paths must use the PATH_TO_FILE(...) macro like below, otherwise Arma won't find your file
		file = PATH_TO_FILE(WW2_SS_POLICE.sqf);	// Must contain valid bath, otherwise it is ignored
		version = 1; // Don't change this!
	};
	class WW2_HEER : VinExternalFactionBase {
		// File paths must use the PATH_TO_FILE(...) macro like below, otherwise Arma won't find your file
		file = PATH_TO_FILE(WW2_HEER.sqf);	// Must contain valid bath, otherwise it is ignored
		version = 1; // Don't change this!
	};
};
