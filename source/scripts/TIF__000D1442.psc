scriptName TIF__000D1442 extends TopicInfo hidden

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
		game.GetPlayer().GetActorBase().SetInvulnerable(true)
		game.EnablePlayerControls(true, true, true, true, true, true, true, true, 0)
		game.GetPlayer().PlayIdle(pGetUp)
		utility.wait(2.00000)
		game.GetPlayer().GetActorBase().SetInvulnerable(false)
	endIf
endFunction
