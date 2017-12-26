/*
some function by... me.
*/
#include "\x\fatigue\addons\core\script_component.hpp"

if (!hasInterface) exitWith {};

_unit = _this select 0;
_unit = _unit select 0;
if(isPlayer _unit) then
{
    _unit setCustomAimCoef 0.01;
    _unit enableFatigue false;
    _unit enableStamina false;
    _unit allowSprint true;
    _respawn = _unit addEventHandler ["respawn",
    {
        _respawned_unit = _this select 0;
        _respawned_unit setCustomAimCoef 0.01;
        _respawned_unit enableFatigue false;
        _respawned_unit enableStamina false;
        _respawned_unit allowSprint true;
    }];
};