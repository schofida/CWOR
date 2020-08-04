scriptName TIF__000CA74C extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

function Fragment_2(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
endFunction

function Fragment_3(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	utility.wait(5 as Float)
	(self.GetOwningQuest() as cwscript).CWFortSiegeCapital.SetStage(10)
endFunction

; Skipped compiler generated GetState
