scriptName QF_CWMission04_00035A23 extends Quest hidden

;-- Properties --------------------------------------
referencealias property Alias_Soldier27 auto
referencealias property Alias_Soldier18 auto
referencealias property Alias_Soldier30 auto
referencealias property Alias_Soldier22 auto
referencealias property Alias_Soldier29 auto
referencealias property Alias_Soldier26 auto
referencealias property Alias_Soldier34 auto
referencealias property Alias_Player auto
referencealias property Alias_Friendly1 auto
referencealias property Alias_Soldier3 auto
referencealias property Alias_Soldier24 auto
referencealias property Alias_chest auto
referencealias property Alias_PrisonerMarker1 auto
referencealias property Alias_Friend auto
referencealias property Alias_Prisoner4 auto
referencealias property Alias_Soldier21 auto
referencealias property Alias_Jailor auto
referencealias property Alias_FriendlyStartMarker auto
referencealias property Alias_FriendlyStartMarkerImperial auto
referencealias property Alias_Prisoner1 auto
referencealias property Alias_Soldier9 auto
referencealias property Alias_Soldier14 auto
referencealias property Alias_Soldier32 auto
referencealias property Alias_PrisonerDoor3 auto
referencealias property Alias_Soldier1 auto
referencealias property Alias_FriendHadvar auto
referencealias property Alias_Soldier38 auto
referencealias property Alias_Soldier28 auto
referencealias property Alias_SecretEntrance auto
referencealias property Alias_Soldier36 auto
referencealias property Alias_PrisonerMarker4 auto
referencealias property Alias_Soldier20 auto
referencealias property Alias_Soldier17 auto
referencealias property Alias_FieldCO auto
referencealias property Alias_Prisoner2 auto
referencealias property Alias_Soldier2 auto
referencealias property Alias_MissionNumberRef auto
referencealias property Alias_AttackPointCenterMarker auto
referencealias property Alias_Soldier25 auto
referencealias property Alias_Soldier5 auto
referencealias property Alias_ExteriorPatroller auto
referencealias property Alias_Soldier35 auto
referencealias property Alias_Soldier23 auto
referencealias property Alias_Soldier31 auto
referencealias property Alias_Soldier15 auto
referencealias property Alias_Soldier19 auto
referencealias property Alias_PrisonerDoor1 auto
referencealias property Alias_Soldier11 auto
referencealias property Alias_Friendly3 auto
referencealias property Alias_Soldier4 auto
referencealias property Alias_Soldier40 auto
referencealias property Alias_Soldier12 auto
referencealias property Alias_PrisonerMarker3 auto
referencealias property Alias_FriendlyStartMarkerSons auto
referencealias property Alias_Soldier13 auto
referencealias property Alias_FriendMarker auto
referencealias property Alias_Soldier16 auto
referencealias property Alias_Prisoner3 auto
referencealias property Alias_Soldier6 auto
referencealias property Alias_FriendRalof auto
referencealias property Alias_CampaignStartMarker auto
referencealias property Alias_Soldier8 auto
referencealias property Alias_Friendly2 auto
locationalias property Alias_AttackPoint auto
referencealias property Alias_AttackPointReservationMarker auto
referencealias property Alias_Soldier7 auto
referencealias property Alias_Soldier33 auto
referencealias property Alias_PrisonerMarker2 auto
referencealias property Alias_Soldier10 auto
referencealias property Alias_AttackMarker auto
referencealias property Alias_PrisonerDoor4 auto
referencealias property Alias_Soldier39 auto
referencealias property Alias_PrisonerDoor2 auto
locationalias property Alias_Hold auto
referencealias property Alias_AttackPointEdgeMarker auto
referencealias property Alias_Gatekeeper auto
referencealias property Alias_MapMarker auto
referencealias property Alias_Soldier37 auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_17()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	self.SetObjectiveCompleted(40, true)
	self.SetObjectiveDisplayed(50, true, false)
endFunction

function Fragment_8()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	kmyQuest.objectiveCompleted = 1
	self.SetObjectiveCompleted(50, true)
	self.setStage(200)
endFunction

function Fragment_13()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	self.SetObjectiveCompleted(12, true)
	self.SetObjectiveDisplayed(15, true, false)
endFunction

function Fragment_9()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	kmyQuest.MUSCombatCivilWar.Remove()
	kmyQuest.CWs.CWOStartCapital(Alias_Hold.GetLocation())
	kmyQuest.FlagFieldCOWithMissionResultFaction(4, false)
	kmyQuest.CWs.CWMission04Done = 1
	kmyQuest.CWs.registerMissionSuccess(Alias_Hold.GetLocation(), true)
endFunction

function Fragment_10()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	kmyQuest.MUSCombatCivilWar.Remove()
	kmyQuest.FlagFieldCOWithMissionResultFaction(4, true)
	kmyQuest.CWs.CWODefend(Alias_Hold.GetLocation())
	self.UnregisterForUpdate()
	self.stop()
endFunction

function Fragment_4()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	kmyQuest.FlagFieldCOWithActiveQuestFaction(4, false)
	Alias_Friend.TryToMoveTo(Alias_FriendlyStartMarker.GetReference())
	Alias_Friendly1.TryToMoveTo(Alias_FriendlyStartMarker.GetReference())
	Alias_Friendly2.TryToMoveTo(Alias_FriendlyStartMarker.GetReference())
	Alias_Friendly3.TryToMoveTo(Alias_FriendlyStartMarker.GetReference())
	Alias_Friendly1.TryToEnable()
	Alias_Friendly2.TryToEnable()
	Alias_Friendly3.TryToEnable()
	kmyQuest.EnableMapMarkerAlias(Alias_MapMarker)
	self.SetObjectiveDisplayed(10, true, false)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier1)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier2)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier3)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier4)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier5)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier6)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier7)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier8)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier9)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier10)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier11)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier12)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier13)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier14)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier15)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier16)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier17)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier18)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier19)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier20)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier21)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier22)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier23)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier24)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier25)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier26)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier27)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier28)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier29)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier30)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier31)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier32)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier33)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier34)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier35)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier36)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier37)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier38)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier39)
	kmyQuest.TryToResetEnemySoldierAlias(Alias_Soldier40)
	Alias_Prisoner1.GetReference().Enable(false)
	Alias_Prisoner2.GetReference().Enable(false)
	Alias_Prisoner3.GetReference().Enable(false)
	Alias_Prisoner4.GetReference().Enable(false)
	if kmyQuest.CWs.PlayerAllegiance == kmyQuest.CWs.iImperials
		Alias_FriendHadvar.GetActorReference().Enable(false)
	else
		Alias_FriendRalof.GetActorReference().Enable(false)
	endIf
endFunction

function Fragment_6()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	kmyQuest.MUSCombatCivilWar.Add()
	kmyQuest.moveFriendliesToAttackMarker()
	self.SetObjectiveCompleted(10, true)
	self.SetObjectiveCompleted(15, true)
	self.SetObjectiveDisplayed(40, true, false)
	if Alias_Prisoner1.GetActorReference().IsInFaction(kmyQuest.CWs.CWImperialFaction)
		Alias_Prisoner1.GetActorReference().AddToFaction(kmyQuest.CWs.CWImperialFactionNPC)
	else
		Alias_Prisoner1.GetActorReference().AddToFaction(kmyQuest.CWs.CWSonsFactionNPC)
	endIf
	if Alias_Prisoner2.GetActorReference().IsInFaction(kmyQuest.CWs.CWImperialFaction)
		Alias_Prisoner2.GetActorReference().AddToFaction(kmyQuest.CWs.CWImperialFactionNPC)
	else
		Alias_Prisoner2.GetActorReference().AddToFaction(kmyQuest.CWs.CWSonsFactionNPC)
	endIf
	if Alias_Prisoner3.GetActorReference().IsInFaction(kmyQuest.CWs.CWImperialFaction)
		Alias_Prisoner3.GetActorReference().AddToFaction(kmyQuest.CWs.CWImperialFactionNPC)
	else
		Alias_Prisoner3.GetActorReference().AddToFaction(kmyQuest.CWs.CWSonsFactionNPC)
	endIf
	if Alias_Prisoner4.GetActorReference().IsInFaction(kmyQuest.CWs.CWImperialFaction)
		Alias_Prisoner4.GetActorReference().AddToFaction(kmyQuest.CWs.CWImperialFactionNPC)
	else
		Alias_Prisoner4.GetActorReference().AddToFaction(kmyQuest.CWs.CWSonsFactionNPC)
	endIf
endFunction

; Skipped compiler generated GetState

function Fragment_16()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	if self.IsObjectiveCompleted(12) == false
		self.SetObjectiveFailed(12, true)
	endIf
	self.SetObjectiveDisplayed(15, true, false)
	; setObjectiveDisplayed(20) - Commented out by USKP 2.0. There is no objective 20.
	self.SetObjectiveDisplayed(40, true, false)
endFunction

; Skipped compiler generated GotoState

function Fragment_2()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	kmyQuest.FlagFieldCOWithPotentialMissionFactions(4, false, 0)
	kmyQuest.ResetCommonMissionProperties()
	if kmyQuest.CWs.PlayerAllegiance == 1
		Alias_Prisoner1.ForceRefTo(Alias_PrisonerMarker1.GetReference().PlaceActorAtMe(kmyQuest.CWs.CWPrisonerImperialA, 2, none) as objectreference)
		Alias_Prisoner2.ForceRefTo(Alias_PrisonerMarker2.GetReference().PlaceActorAtMe(kmyQuest.CWs.CWPrisonerImperialB, 2, none) as objectreference)
		Alias_Prisoner3.ForceRefTo(Alias_PrisonerMarker3.GetReference().PlaceActorAtMe(kmyQuest.CWs.CWPrisonerImperialC, 3, none) as objectreference)
		Alias_Prisoner4.ForceRefTo(Alias_PrisonerMarker4.GetReference().PlaceActorAtMe(kmyQuest.CWs.CWPrisonerImperialD, 3, none) as objectreference)
	else
		Alias_Prisoner1.ForceRefTo(Alias_PrisonerMarker1.GetReference().PlaceActorAtMe(kmyQuest.CWs.CWPrisonerSonsA, 2, none) as objectreference)
		Alias_Prisoner2.ForceRefTo(Alias_PrisonerMarker2.GetReference().PlaceActorAtMe(kmyQuest.CWs.CWPrisonerSonsB, 2, none) as objectreference)
		Alias_Prisoner3.ForceRefTo(Alias_PrisonerMarker3.GetReference().PlaceActorAtMe(kmyQuest.CWs.CWPrisonerSonsC, 3, none) as objectreference)
		Alias_Prisoner4.ForceRefTo(Alias_PrisonerMarker4.GetReference().PlaceActorAtMe(kmyQuest.CWs.CWPrisonerSonsD, 3, none) as objectreference)
	endIf
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier1, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier2, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier3, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier4, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier5, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier6, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier7, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier8, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier9, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier10, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier11, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier12, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier13, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier14, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier15, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier16, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier17, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier18, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier19, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier20, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier21, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier22, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier23, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier24, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier25, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier26, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier27, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier28, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier29, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier30, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier31, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier32, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier33, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier34, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier35, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier36, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier37, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier38, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier39, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	kmyQuest.ForceAliasIntoFortJobAlias(Alias_Soldier40, Alias_Gatekeeper, Alias_Jailor, Alias_ExteriorPatroller)
	Alias_PrisonerDoor1.GetReference().Lock(25 as Bool, false)
	Alias_PrisonerDoor2.GetReference().Lock(25 as Bool, false)
	Alias_PrisonerDoor3.GetReference().Lock(25 as Bool, false)
	Alias_PrisonerDoor4.GetReference().Lock(25 as Bool, false)
	kmyQuest.ToggleOffComplexWIInteractions(Alias_AttackPoint)
	kmyQuest.CWs.RegisterEventHappening(Alias_AttackPoint.GetLocation())
endFunction

function Fragment_21()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
endFunction

function Fragment_11()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	kmyQuest.ProcessFieldCOFactionsOnQuestShutDown()
	Alias_Friend.GetActorReference().AddToFaction(kmyQuest.CWs.CWBuddies)
	Alias_PrisonerDoor1.UnregisterForUpdate()
	Alias_Prisoner1.UnregisterForUpdate()
	Alias_PrisonerDoor2.UnregisterForUpdate()
	Alias_Prisoner2.UnregisterForUpdate()
	Alias_PrisonerDoor3.UnregisterForUpdate()
	Alias_Prisoner3.UnregisterForUpdate()
	Alias_PrisonerDoor4.UnregisterForUpdate()
	Alias_Prisoner4.UnregisterForUpdate()
	self.UnregisterForUpdate()
	kmyQuest.ToggleOnComplexWIInteractions(Alias_AttackPoint)
	kmyQuest.CWs.UnregisterEventHappening(Alias_AttackPoint.GetLocation())
	Alias_Prisoner1.GetReference().DeleteWhenAble()
	Alias_Prisoner2.GetReference().DeleteWhenAble()
	Alias_Prisoner3.GetReference().DeleteWhenAble()
	Alias_Prisoner4.GetReference().DeleteWhenAble()
endFunction

function Fragment_15()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	self.SetObjectiveCompleted(10, true)
	self.SetObjectiveDisplayed(12, true, false)
endFunction

function Fragment_20()

	Quest __temp = self as Quest
	cwmission04script kmyQuest = __temp as cwmission04script
	kmyQuest.moveFriendliesToAttackMarker()
	self.SetObjectiveCompleted(10, true)
	self.SetObjectiveFailed(15, true)
	self.SetObjectiveDisplayed(40, true, false)
endFunction
