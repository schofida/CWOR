scriptName TIF__0202A9D1 extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

function Fragment_0(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	self.GetOwningQuest().SetStage(310)
endFunction

; Skipped compiler generated GotoState
