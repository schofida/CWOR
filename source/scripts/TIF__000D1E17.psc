scriptName TIF__000D1E17 extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_0(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	self.GetOwningQuest().Setstage(310)
endFunction

; Skipped compiler generated GotoState

; Skipped compiler generated GetState
