scriptName TIF__000A1FA1 extends TopicInfo hidden

;-- Properties --------------------------------------
referencealias property FieldCOAlias auto
keyword property CWOMission06Key auto
referencealias property Hold auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_0(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	akSpeaker.AddToFaction((self.GetOwningQuest() as cwscript).CWFieldCOHooksAcceptedFaction)
endFunction

; Skipped compiler generated GetState

; Skipped compiler generated GotoState
