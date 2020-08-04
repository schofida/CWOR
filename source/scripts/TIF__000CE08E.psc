scriptName TIF__000CE08E extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

function Fragment_0(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	self.GetOwningQuest().setStage(4)
endFunction

; Skipped compiler generated GotoState
