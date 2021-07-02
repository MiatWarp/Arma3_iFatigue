/*
some function by... me.
*/
#include "\x\fatigue\addons\core\script_component.hpp"

[
    "iEnemY_iFatigue_enabled", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Enabled", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "iFatigue", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [true], // data for this setting: [min, max, default, number of shown trailing decimals]
    0, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];

        if (_value) then
        {
            player enableFatigue false;
            player enableStamina false;
        }
        else
        {
            player enableFatigue true;
            player enableStamina true;
        };

    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
    "iEnemY_iFatigue_stamina_enabled", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Stamina enabled", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "iFatigue", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [true], // data for this setting: [min, max, default, number of shown trailing decimals]
    0, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];

        if (_value) then
        {
            player enableStamina false;
        }
        else
        {
            player enableStamina true;
        };

    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;


[
    "iEnemY_iFatigue_fatigue_enabled", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Fatigue enabled", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "iFatigue", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [true], // data for this setting: [min, max, default, number of shown trailing decimals]
    0, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];

        if (_value) then
        {
            player enableFatigue false;
        }
        else
        {
            player enableFatigue true;
        };

    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;


[
    "iEnemY_iFatigue_use_sway", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "Use sway", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "iFatigue", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [true], // data for this setting: [min, max, default, number of shown trailing decimals]
    0, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];

        if (_value) then
        {
            player setCustomAimCoef iEnemY_iFatigue_aimcoeff;
        }
        else
        {
            player setCustomAimCoef 1.0;
        };

    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
    "iEnemY_iFatigue_aimcoeff", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "Weapon sway (AimCoeff)", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "iFatigue", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0, 1, 0.01, 3], // data for this setting: [min, max, default, number of shown trailing decimals]
    0, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {
        params ["_value"];
        if(iEnemY_iFatigue_use_sway) then
        {
            player setCustomAimCoef _value;
        };
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;