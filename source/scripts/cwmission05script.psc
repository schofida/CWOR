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
objectreference property CWGarrisonEnableMarkerSonsCampRift auto
objectreference property CWGarrisonEnableMarkerSonsCampWinterhold auto
objectreference property CWGarrisonEnableMarkerSonsCampPale auto
objectreference property CWGarrisonEnableMarkerSonsCampFalkreath auto
objectreference property CWGarrisonEnableMarkerSonsCampWhiterun auto
objectreference property CWGarrisonEnableMarkerSonsCampHjaalmarch auto
objectreference property CWGarrisonEnableMarkerSonsCampReach auto
objectreference property CWGarrisonEnableMarkerImperialCampRift auto
objectreference property CWGarrisonEnableMarkerImperialCampWinterhold auto
objectreference property CWGarrisonEnableMarkerImperialCampPale auto
objectreference property CWGarrisonEnableMarkerImperialCampFalkreath auto
objectreference property CWGarrisonEnableMarkerImperialCampWhiterun auto
objectreference property CWGarrisonEnableMarkerImperialCampHjaalmarch auto
objectreference property CWGarrisonEnableMarkerImperialCampReach auto


;-- Functions ---------------------------------------

event OnUpdate()
    if (CWs.GetRikkeOrGalmar(-1).GetDistance(game.getplayer()) <= 500)
        setStage(200)
    else
        registerforsingleupdate(4.0)
    endif
endEvent
; Skipped compiler generated GotoState

; Skipped compiler generated GetState
