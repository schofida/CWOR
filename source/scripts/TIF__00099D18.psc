scriptName TIF__00099D18 extends TopicInfo hidden

;-- Properties --------------------------------------
faction property CWImperialFactionNPC auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

; Skipped compiler generated GetState

function Fragment_1(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	self.getowningquest().setstage(200)
endFunction
