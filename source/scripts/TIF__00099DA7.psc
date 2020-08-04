scriptName TIF__00099DA7 extends TopicInfo hidden

;-- Properties --------------------------------------
faction property CWSonsFactionNPC auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

function Fragment_0(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	self.GetOwningQuest().SetStage(200)
endFunction

; Skipped compiler generated GotoState
