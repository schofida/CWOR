scriptName TIF__02016107 extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_0(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	(self.GetOwningQuest() as cwscript).CWOCurrenthold.setvalueint(4)
	self.GetOwningQuest().setStage(4)
endFunction

; Skipped compiler generated GotoState

; Skipped compiler generated GetState
