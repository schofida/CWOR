scriptName TIF__00035B73 extends TopicInfo hidden

;-- Properties --------------------------------------
globalvariable property CWOStillABetterEndingGlobal auto
idle property pGetUp auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_0(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	if CWOStillABetterEndingGlobal.GetValueInt() == 1
		game.EnablePlayerControls(true, true, true, true, true, true, true, true, 0)
		game.getplayer().PlayIdle(pGetUp)
	endIf
endFunction

; Skipped compiler generated GotoState

; Skipped compiler generated GetState
