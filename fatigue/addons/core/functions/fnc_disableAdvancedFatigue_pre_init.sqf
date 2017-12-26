/*
some function by... me.
*/
#include "\x\fatigue\addons\core\script_component.hpp"

[
    "ace_advanced_fatigue_enabled",
    "CHECKBOX",
    ["Enable", "Enables/disables Advanced Fatigue."],
    "ACE Advanced Fatigue",
    false,
    true
] call CBA_Settings_fnc_init;

[
    "ace_advanced_fatigue_enableStaminaBar",
    "CHECKBOX",
    ["Enable Stamina Bar", "Enables/disables Advanced Fatigue stamina bar"],
    "ACE Advanced Fatigue",
    false,
    true
] call CBA_Settings_fnc_init;