scriptName TIF__00065C87 extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function Fragment_1(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	if (self.GetOwningQuest() as cwscript).CWSiegeS.GetStage() < 1
		self.GetOwningQuest().SetStage(50)
		(self.GetOwningQuest() as cwscript).CWSiegeS.SetStage(1)
	endIf
endFunction

function Fragment_2(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	utility.wait(8 as Float)
	self.GetOwningQuest().SetStage(50)
	(self.GetOwningQuest() as cwscript).CWSiegeS.SetStage(1)
endFunction
