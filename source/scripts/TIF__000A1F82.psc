scriptName TIF__000A1F82 extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_0(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	(self.GetOwningQuest() as cwscript).CWFortSiegeFort.Setstage(10)
endFunction

; Skipped compiler generated GotoState

; Skipped compiler generated GetState
