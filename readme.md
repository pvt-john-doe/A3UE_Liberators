# Liberators
Adds an ability to turn invaders into a friendly faction. Useful for those who enjoy early-game small-scale guerilla warfare more than painting map green and managing the defence in mid/late game, or for scenarios like the East Wind or WW2, where guerillas played a supporting role to conventional armies moving the frontline. 

## Installation
### Local
Download mod archive from "releases" section. Extract "a3ue_liberators" folder from the archive.  
In Arma 3 Launcher: Mods -> Local Mod -> Choose the extracted folder -> Load the installed mod.
### Steam
...

## Usage
Extender parameters -> REB and INV vs GOV mode = On
## Features
### Liberators Mode
When REB and INV vs GOV mode is on:
- Invader units don't attack rebel units and vice versa
- Invaders don't launch scripted attacks toward rebels
- INV control over bases has adjustable influence on War Level
- Petros doesn't give missions against INV
- Victory conditions take INV control over bases into account
- Commander can hand over bases to INV via flag context menu
- INV arrival can be postponed until specified War Level
### Additional common parameters
These parameters affect the game regardless of Liberators mode being on or off.
- Attacks on GOV/INV bases within specified distance from player/HQ are "real", even if the attacked base is not spawned in
- Occupant punishments can be enabled with adjustable chance of starting instead of an Occupant supply convoy


## Details
Changes:
- functions\Base\fn_chooseAttack.sqf: ignoring rebel attack targets, enabling occupant punishments
- functions\OrgPlayers\fn_tierCheck.sqf: takes into account INV-controlled zones when calculating War Level
- functions\Missions\fn_findIfNearAndHostile.sqf; functions\Missions\fn_missionRequest.sqf: prevent Petros from giving missions against INV
- functions\Base\fn_checkWinCondition.sqf: add new win conditions
- functions\Base\fn_flagaction.sqf: add "Hand over to Liberators" flag action

Changes in the code are marked with "[a3ue_liberators]" comments for easier search

Rival Rebels are disabled when REB and INV vs GOV mode is on.
