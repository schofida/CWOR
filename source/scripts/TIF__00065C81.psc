scriptName TIF__00065C81 extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

function Fragment_2(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	utility.wait(5 as Float)
	self.GetOwningQuest().SetStage(50)
	(self.GetOwningQuest() as cwscript).CWSiegeS.SetStage(1)
endFunction

; Skipped compiler generated GetState
