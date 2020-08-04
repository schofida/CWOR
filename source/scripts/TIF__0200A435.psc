scriptName TIF__0200A435 extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

function Fragment_1(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	utility.wait(5 as Float)
	(self.GetOwningQuest() as cwscript).CWFortSiegeCapital.SetStage(10)
endFunction

; Skipped compiler generated GetState
