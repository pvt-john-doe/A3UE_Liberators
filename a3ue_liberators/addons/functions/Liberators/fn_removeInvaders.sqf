if (!isServer) exitWith {};
["defeated"] call A3U_fnc_setInvaderState;
private _invaderMarkers = markersX select {
    sidesX getVariable [_x, sideUnknown] == Invaders
};

{
    sidesX setVariable [_x, Occupants, true];
    [_x] call A3A_fnc_mrkUpdate;
} forEach _invaderMarkers;

true
