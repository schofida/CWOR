scriptName TIF__000E7256 extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function Fragment_0(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	(self.GetOwningQuest() as cwscript).CWOCurrenthold.setvalueint(2)
	self.GetOwningQuest().setStage(4)
endFunction
