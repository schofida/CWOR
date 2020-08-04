scriptName TIF__00015494 extends TopicInfo hidden

;-- Properties --------------------------------------
faction property CWOMission05Faction auto
referencealias property FieldCO auto
keyword property CWOMission06Key auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function Fragment_0(ObjectReference akSpeakerRef)

	actor akSpeaker = akSpeakerRef as actor
	actor FieldCOX = (self.GetOwningQuest() as cwscript).GetRikkeOrGalmar(-1)
	location CurrHold = (self.GetOwningQuest() as cwscript).GetMyCurrentHoldLocation(game.GetPlayer() as ObjectReference)
	Int HoldIDX = (self.GetOwningQuest() as cwscript).GetHoldID(CurrHold)
	CWOMission06Key.SendStoryEvent(CurrHold, FieldCOX as ObjectReference, none, 0, 0)
	akSpeaker.AddToFaction((self.GetOwningQuest() as cwscript).CWFieldCOHooksAcceptedFaction)
	(self.GetOwningQuest() as cwscript).CWmission05.Setstage(5)
	game.GetPlayer().Removefromfaction(CWOMission05Faction)
endFunction
