scriptName TIF__000658D9 extends TopicInfo hidden

;-- Properties --------------------------------------
globalvariable property CWOStillABetterEndingGlobal auto
idle property pGetUp auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

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

; Skipped compiler generated GetState
