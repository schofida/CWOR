scriptName TIF__00028E72 extends TopicInfo hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function Fragment_2(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	utility.wait(8 as Float)
	self.GetOwningQuest().SetStage(50)
	((self.GetOwningQuest() as cwscript).CWSiegeS as cwsiegescript).IsSpecialGeneral = True
	(self.GetOwningQuest() as cwscript).CWSiegeS.SetStage(1)
endFunction
