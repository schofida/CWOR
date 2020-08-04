scriptName TIF__00065C85 extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_1(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	self.GetOwningQuest().SetStage(50)
	((self.GetOwningQuest() as cwscript).CWSiegeS as cwsiegescript).IsSpecialGeneral = True
	(self.GetOwningQuest() as cwscript).CWSiegeS.SetStage(1)
endFunction

function Fragment_2(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	if (self.GetOwningQuest() as cwscript).IsRunning()
		
	else
		utility.wait(8 as Float)
		self.GetOwningQuest().SetStage(50)
		((self.GetOwningQuest() as cwscript).CWSiegeS as cwsiegescript).IsSpecialGeneral = True
		(self.GetOwningQuest() as cwscript).CWSiegeS.SetStage(1)
	endIf
endFunction

; Skipped compiler generated GotoState

; Skipped compiler generated GetState
