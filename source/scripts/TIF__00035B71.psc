scriptName TIF__00035B71 extends TopicInfo hidden

;-- Properties --------------------------------------
idle property pGetUp auto
globalvariable property CWOStillABetterEndingGlobal auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function Fragment_0(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	if CWOStillABetterEndingGlobal.GetValueInt() == 1
		game.getplayer().getactorbase().SetInvulnerable(true)
		game.EnablePlayerControls(true, true, true, true, true, true, true, true, 0)
		game.getplayer().PlayIdle(pGetUp)
		utility.wait(2.00000)
		game.getplayer().getactorbase().SetInvulnerable(false)
	endIf
endFunction
