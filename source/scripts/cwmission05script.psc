scriptName cwmission05script extends CWMissionScript conditional
{Extends CWMissionScript which extends Quest}

;-- Properties --------------------------------------
scene property CWMission05COFlees auto
quest property CWMission06 auto

;-- Variables ---------------------------------------

Location currentHold;	; Reddit Bugfix #5 & 6
int aliasAllegiance;	; Reddit Bugfix #5 & 6
Actor FieldCOCamp;
Actor FieldCOHQ;

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

; Skipped compiler generated GetState
