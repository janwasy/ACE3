/*
 * Author: bux578
 * Adds a mapClick Eventhandler
 *
 * Arguments:
 * 0: unit <OBJECT>
 * 1: sides <ARRAY<OBJECT>>
 *
 * Return Value:
 * None
 *
 * Example:
 * [_unit, _sides] call FUNC(addMapFunction)
 *
 * Public: No
 */

#include "script_component.hpp"

PARAMS_2(_unit,_sides);

["theMapClick", "onMapSingleClick", {
    // IGNORE_PRIVATE_WARNING(_pos,_shift,_alt)
    if (alive ACE_player && {GVAR(OriginalUnit) getVariable ["ACE_CanSwitchUnits", false]}) then {
        [_this, _pos, _shift, _alt] call FUNC(handleMapClick);
    };
  
}, [_unit, _sides]] call BIS_fnc_addStackedEventHandler;
