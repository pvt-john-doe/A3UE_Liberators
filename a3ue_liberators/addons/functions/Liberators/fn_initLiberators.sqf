if (!isServer) exitWith {};
waitUntil {
    sleep 0.5;
    !isNil "serverInitDone" && {serverInitDone}
};

private _isNewCampaign = (A3A_saveData get "startType") == "new";
if (_isNewCampaign && !areInvadersPresentAtStart) then {
    [] call a3ue_liberators_functions_fnc_removeInvaders;
};

if (areInvadersFriendly == 2) then 
{
    Invaders setFriend [teamPlayer,1];
    teamPlayer setFriend [Invaders,1];
};
