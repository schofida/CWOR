scriptName TIF__0200FA9C extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

function Fragment_5(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	if (self.GetOwningQuest() as cwscript).CWSiegeS.GetStage() < 1
		self.GetOwningQuest().setstage(50)
		(self.GetOwningQuest() as cwscript).CWSiegeS.setstage(1)
	endIf
endFunction

; Skipped compiler generated GotoState

function Fragment_3(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	utility.wait(5 as Float)
	if (self.GetOwningQuest() as cwscript).CWSiegeS.GetStage() < 1
		self.GetOwningQuest().setstage(50)
		(self.GetOwningQuest() as cwscript).CWSiegeS.setstage(1)
	endIf
endFunction
