scriptName CWResetGarrisonScript extends Quest

;-- Properties --------------------------------------
referencealias property Soldier38 auto
faction property CrimeFactionWinterhold auto
referencealias property Soldier26 auto
referencealias property Soldier17 auto
referencealias property Soldier10 auto
referencealias property Soldier48 auto
referencealias property Soldier33 auto
Bool property WaitingForCallBackFromCWGovernment auto hidden
referencealias property Soldier04 auto
referencealias property Soldier57 auto
referencealias property Soldier25 auto
location property HjaalmarchHoldLocation auto
referencealias property Soldier61 auto
referencealias property Soldier47 auto
referencealias property Soldier16 auto
referencealias property Soldier09 auto
Quest property CWCampaign auto
referencealias property Soldier30 auto
referencealias property Soldier39 auto
faction property CrimeFactionReach auto
referencealias property Soldier50 auto
referencealias property Soldier56 auto
referencealias property Soldier20 auto
referencealias property Soldier64 auto
referencealias property Soldier12 auto
referencealias property Soldier44 auto
referencealias property Soldier06 auto
referencealias property Soldier03 auto
referencealias property Soldier53 auto
referencealias property Soldier42 auto
faction property CrimeFactionWhiterun auto
referencealias property Soldier32 auto
referencealias property Soldier14 auto
referencealias property Soldier11 auto
referencealias property Soldier45 auto
referencealias property Soldier52 auto
referencealias property Soldier27 auto
referencealias property Soldier18 auto
referencealias property Soldier59 auto
cwcampaignscript property CWCampaignS auto hidden
faction property CrimeFactionHjaalmarch auto
faction property GuardFactionSons auto
faction property GuardFactionImperial auto
referencealias property Soldier15 auto
referencealias property Soldier21 auto
faction property CrimeFactionEastmarch auto
referencealias property Soldier46 auto
faction property CrimeFactionFalkreath auto
faction property CrimeFactionPale auto
locationalias property Garrison auto
referencealias property Soldier19 auto
cwscript property CWs auto hidden
location property EastmarchHoldLocation auto
location property RiftHoldLocation auto
referencealias property Soldier24 auto
referencealias property Soldier01 auto
faction property CrimeFactionHaafingar auto
referencealias property Soldier58 auto
location property WinterholdHoldLocation auto
location property ReachHoldLocation auto
referencealias property Soldier55 auto
referencealias property Soldier05 auto
location property FalkreathHoldLocation auto
referencealias property Soldier40 auto
location property HaafingarHoldLocation auto
location property WhiterunHoldLocation auto
referencealias property Soldier31 auto
location property PaleHoldLocation auto
Quest property CW auto
referencealias property Soldier08 auto
referencealias property Soldier36 auto
referencealias property Soldier62 auto
referencealias property Soldier28 auto
referencealias property Soldier02 auto
referencealias property Soldier41 auto
referencealias property Soldier54 auto
referencealias property Soldier22 auto
referencealias property Soldier43 auto
referencealias property Soldier23 auto
referencealias property Soldier49 auto
referencealias property Soldier13 auto
faction property CrimeFactionRift auto
referencealias property Soldier07 auto
referencealias property Soldier51 auto
referencealias property Soldier37 auto
referencealias property Soldier35 auto
referencealias property Soldier34 auto
referencealias property Soldier60 auto
referencealias property Soldier63 auto
referencealias property Soldier29 auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Bool function ProcessSoldierAlias(referencealias SoldierAlias)
{Kill if disabled, reset if enabled.}

	actor Soldier = SoldierAlias.GetActorReference()
	if Soldier != none
		if Soldier.IsDisabled()
			Soldier.Kill(none)
		else
			Soldier.Reset(none)
			self.SetCrimeFactionForSoldierAlias(SoldierAlias)
		endIf
		return true
	else
		return false
	endIf
endFunction

Bool function ProcessSoldierAliases1()

	if Soldier01 == none
		return false
	endIf
	if !self.ProcessSoldierAlias(Soldier01)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier02)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier03)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier04)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier05)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier06)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier07)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier08)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier09)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier10)
		return false
	else
		return true
	endIf
endFunction

; Skipped compiler generated GetState

Bool function ProcessSoldierAliases6()

	if !self.ProcessSoldierAlias(Soldier51)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier52)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier53)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier54)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier55)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier56)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier57)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier58)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier59)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier60)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier61)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier62)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier63)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier64)
		return false
	else
		return true
	endIf
endFunction

function ProcessSoldierAliases()
{Calls ProcessSolderAlias on all of the SoldierX aliases, until it finds one that is empty, then it stops.}

	if !self.ProcessSoldierAliases1()
		return 
	elseIf !self.ProcessSoldierAliases2()
		return 
	elseIf !self.ProcessSoldierAliases3()
		return 
	elseIf !self.ProcessSoldierAliases4()
		return 
	elseIf !self.ProcessSoldierAliases5()
		return 
	elseIf !self.ProcessSoldierAliases6()
		return 
	endIf
endFunction

Bool function ProcessSoldierAliases3()

	if !self.ProcessSoldierAlias(Soldier21)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier22)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier23)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier24)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier25)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier26)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier27)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier28)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier29)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier30)
		return false
	else
		return true
	endIf
endFunction

Bool function ProcessSoldierAliases4()

	if !self.ProcessSoldierAlias(Soldier31)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier32)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier33)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier34)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier35)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier36)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier37)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier38)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier39)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier40)
		return false
	else
		return true
	endIf
endFunction

; Skipped compiler generated GotoState

function StartCWGovernmentQuestIfCapital()
{If Garrison is a capital, start the CWGovernment quest so it sets up the ruling NPCs properly.}

	location GarrisonLoc = Garrison.GetLocation()
	if GarrisonLoc.HasKeyword(CWs.CWCapital)
		WaitingForCallBackFromCWGovernment = true
		CWs.CWGovernmentStart.SendStoryEvent(GarrisonLoc, none, none, 0, 0)
		while WaitingForCallBackFromCWGovernment
			utility.wait(1 as Float)
			Float timeSpentWaiting = timeSpentWaiting + 1 as Float
		endWhile
	endIf
endFunction

function OnInit()

	CWs = CW as cwscript
	CWCampaignS = CWCampaign as cwcampaignscript
endFunction

Bool function ProcessSoldierAliases5()

	if !self.ProcessSoldierAlias(Soldier41)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier42)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier43)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier44)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier45)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier46)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier47)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier48)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier49)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier50)
		return false
	else
		return true
	endIf
endFunction

function ToggleEnableMarkers(referencealias EnableMarkerImperial, referencealias EnableMarkerSons, referencealias EnableMarkerImperialExterior, referencealias EnableMarkerSonsExterior, referencealias EnableMarkerMonster)
{Toggles the enable markers for either the Imperials or the Sons enabling the owning faction's enable marker, and disabling the other.}

	location GarrisonLoc = Garrison.GetLocation()
	Int Owner = math.ABS((GarrisonLoc.GetKeywordData(CWs.CWOwner) as Int) as Float) as Int
	objectreference ImperialEnableMarker = EnableMarkerImperial.GetReference()
	objectreference SonsEnableMarker = EnableMarkerSons.GetReference()
	objectreference ImperialEnableExteriorMarker = EnableMarkerImperialExterior.GetReference()
	objectreference SonsEnableExteriorMarker = EnableMarkerSonsExterior.GetReference()
	objectreference EnableMarkerMonsterMarker = EnableMarkerMonster.GetReference()
	if Owner == CWs.iImperials
		if ImperialEnableMarker != none
			ImperialEnableMarker.Enable(false)
		endIf
		if ImperialEnableExteriorMarker != none
			ImperialEnableExteriorMarker.Enable(false)
		endIf
		if SonsEnableMarker != none
			SonsEnableMarker.Disable(false)
		endIf
		if SonsEnableExteriorMarker != none
			SonsEnableExteriorMarker.Disable(false)
		endIf
	elseIf Owner == CWs.iSons
		if ImperialEnableMarker != none
			ImperialEnableMarker.Disable(false)
		endIf
		if ImperialEnableExteriorMarker != none
			ImperialEnableExteriorMarker.Disable(false)
		endIf
		if SonsEnableMarker != none
			SonsEnableMarker.Enable(false)
		endIf
		if SonsEnableExteriorMarker != none
			SonsEnableExteriorMarker.Enable(false)
		endIf
	elseIf Owner == CWs.iBothFactions
		
	endIf
	if EnableMarkerMonsterMarker != none
		EnableMarkerMonsterMarker.Disable(false)
	endIf
endFunction

function SetCrimeFactionForSoldierActor(actor ActorToSet)
{Sets the appropriate crime group for the actor}

	CWs.DetermineAndSetCrimeFactionForSoldierActor(ActorToSet)
endFunction

Bool function ProcessSoldierAliases2()

	if !self.ProcessSoldierAlias(Soldier11)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier12)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier13)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier14)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier15)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier16)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier17)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier18)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier19)
		return false
	elseIf !self.ProcessSoldierAlias(Soldier20)
		return false
	else
		return true
	endIf
endFunction

function ProcessIfCamp(referencealias EnableMarkerImperials, referencealias EnableMarkerSons)
{Checks to see if Garrison is a camp location, if it is, make sure that faction is attacking, otherwise disable it}

	location GarrisonLoc = Garrison.GetLocation()
	if GarrisonLoc.HasKeyword(CWs.CWCampImperial) || GarrisonLoc.HasKeyword(CWs.CWCampSons)
		Int Enemy
		location ParentHoldLoc = CWs.GetMyParentHoldLocation(GarrisonLoc)
		Int Owner = CWs.GetOwner(ParentHoldLoc)
		if CWs.PlayerAllegiance == 1
			Enemy = 2
		elseIf CWs.PlayerAllegiance == 2
			Enemy = 1
		endIf
		if GarrisonLoc.HasKeyword(CWs.CWCampImperial)
			if Owner == CWs.iImperials
				
			elseIf Owner == CWs.iSons
				EnableMarkerImperials.GetReference().Enable(false)
			endIf
			if (CWs.GetReferenceHQFieldCOForHold(ParentHoldLoc, Enemy) as actor).IsDead()
				EnableMarkerImperials.GetReference().Disable(false)
			endIf
		elseIf GarrisonLoc.HasKeyword(CWs.CWCampSons)
			if Owner == CWs.iSons
				
			elseIf Owner == CWs.iImperials
				EnableMarkerSons.GetReference().Enable(false)
			endIf
			if (CWs.GetReferenceHQFieldCOForHold(ParentHoldLoc, Enemy) as actor).IsDead()
				EnableMarkerSons.GetReference().Disable(false)
			endIf
		endIf
	endIf
endFunction

function SetCrimeFactionForSoldierAlias(referencealias AliasToSet)
{Calls SetCrimeFactionForSoldierActor() passing the actor reference in AliasToSet}

	self.SetCrimeFactionForSoldierActor(AliasToSet.GetActorReference())
endFunction

function SetOwnershipKeywordData()
{Sets the CWOwner keyword data to the absolute value (ie make it positive)}

	location GarrisonLoc = Garrison.GetLocation()
	Int AbsValue = math.ABS((GarrisonLoc.GetKeywordData(CWs.CWOwner) as Int) as Float) as Int
	GarrisonLoc.SetKeywordData(CWs.CWOwner, AbsValue as Float)
endFunction
