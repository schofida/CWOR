scriptName TIF__000934DF extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

function Fragment_3(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	self.GetOwningQuest().SetStage(50)
	(self.GetOwningQuest() as cwscript).CWSiegeS.SetStage(1)
endFunction

; Skipped compiler generated GetState
