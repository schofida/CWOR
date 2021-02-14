scriptName QF_CWMission07_000504F0 extends Quest hidden

;-- Properties --------------------------------------
referencealias property Alias_CaravanSoldier4 auto
referencealias property Alias_FieldCO auto
referencealias property Alias_Steward auto
referencealias property Alias_AmbushCoverMarker auto
referencealias property Alias_FriendRalof auto
referencealias property Alias_PrivacyMarker auto
referencealias property Alias_StewardSons auto
referencealias property Alias_CaravanToggleImperial auto
referencealias property Alias_AmbushMarkerFriend auto
referencealias property Alias_JarlSons auto
referencealias property Alias_CaravanToggleSons auto
referencealias property Alias_CaravanSoldier1 auto
referencealias property Alias_AmbushMarker1 auto
referencealias property Alias_AttackPointCenterMarker auto
referencealias property Alias_CaravanSoldier6 auto
referencealias property Alias_InformantLetter auto
referencealias property Alias_CaravanSoldier5 auto
referencealias property Alias_Evidence auto
referencealias property Alias_FriendHadvar auto
referencealias property Alias_StewardsContainer auto
referencealias property Alias_CaravanToggle auto
locationalias property Alias_StewardsDwelling auto
referencealias property Alias_StewardImperial auto
referencealias property Alias_CaravanSoldierFriendly2 auto
referencealias property Alias_CaravanSoldierFriendly1 auto
referencealias property Alias_CaravanSoldier3 auto
locationalias property Alias_AttackPoint auto
referencealias property Alias_AttackPointReservationMarker auto
referencealias property Alias_CaravanSoldier2 auto
referencealias property Alias_AmbushMarker2 auto
locationalias property Alias_Hold auto
referencealias property Alias_Friend auto
referencealias property Alias_CampaignStartMarker auto
locationalias property Alias_CaravanLocation auto
referencealias property Alias_MapMarker auto
referencealias property Alias_CaravanFriendMarker auto
referencealias property Alias_AttackPointEdgeMarker auto
referencealias property Alias_AmbushTrigger auto
referencealias property Alias_JarlImperial auto
referencealias property Alias_MissionNumberRef auto
referencealias property Alias_Jarl auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_5()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	kmyQuest.objectiveCompleted = 1
	self.setObjectiveCompleted(90, true)
	Alias_Steward.GetActorReference().AddToFaction(kmyQuest.CWMission07BlackmailedFaction)
	self.setStage(200)
endFunction

function Fragment_24()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
endFunction

function Fragment_23()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	self.setObjectiveCompleted(50, true)
	self.setObjectiveDisplayed(60, true, false)
endFunction

function Fragment_19()

	; Empty function
endFunction

function Fragment_2()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	self.setObjectiveCompleted(10, true)
	self.setObjectiveDisplayed(20, true, false)
endFunction

function Fragment_18()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	self.setObjectiveCompleted(50, true)
	self.setObjectiveDisplayed(60, true, false)
	if kmyQuest.CWs.PlayerAllegiance == 1
		Alias_CaravanSoldier1.GetActorReference().AddToFaction(kmyQuest.CWs.CWSonsFactionNPC)
		Alias_CaravanSoldier2.GetActorReference().AddToFaction(kmyQuest.CWs.CWSonsFactionNPC)
		Alias_CaravanSoldier3.GetActorReference().AddToFaction(kmyQuest.CWs.CWSonsFactionNPC)
		Alias_CaravanSoldier4.GetActorReference().AddToFaction(kmyQuest.CWs.CWSonsFactionNPC)
		Alias_CaravanSoldier5.GetActorReference().AddToFaction(kmyQuest.CWs.CWSonsFactionNPC)
		Alias_CaravanSoldier6.GetActorReference().AddToFaction(kmyQuest.CWs.CWSonsFactionNPC)
	else
		Alias_CaravanSoldier1.GetActorReference().AddToFaction(kmyQuest.CWs.CWImperialFactionNPC)
		Alias_CaravanSoldier2.GetActorReference().AddToFaction(kmyQuest.CWs.CWImperialFactionNPC)
		Alias_CaravanSoldier3.GetActorReference().AddToFaction(kmyQuest.CWs.CWImperialFactionNPC)
		Alias_CaravanSoldier4.GetActorReference().AddToFaction(kmyQuest.CWs.CWImperialFactionNPC)
		Alias_CaravanSoldier5.GetActorReference().AddToFaction(kmyQuest.CWs.CWImperialFactionNPC)
		Alias_CaravanSoldier6.GetActorReference().AddToFaction(kmyQuest.CWs.CWImperialFactionNPC)
	endIf
	Alias_Friend.TryToEvaluatePackage()
	Alias_CaravanSoldierFriendly1.TryToEvaluatePackage()
	Alias_CaravanSoldierFriendly2.TryToEvaluatePackage()
endFunction

function Fragment_1()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	kmyQuest.FlagFieldCOWithActiveQuestFaction(7, false)
	Alias_Evidence.TryToEnable()
	kmyQuest.EnableMapMarkerAlias(Alias_MapMarker)
	self.setObjectiveDisplayed(10, true, false)
endFunction

function Fragment_25()

	Alias_Steward.GetActorReference().EvaluatePackage()
	(Alias_Steward as cwmission07stewardscript).MonitorPlayerDistance(true)
endFunction

; Skipped compiler generated GetState

function Fragment_0()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	kmyQuest.FlagFieldCOWithPotentialMissionFactions(7, false, 0)
	kmyQuest.ResetCommonMissionProperties()
	objectreference StewardsContainer = Alias_StewardsContainer.GetReference()
	if kmyQuest.CWs.PlayerAllegiance == kmyQuest.CWs.iImperials
		Alias_Evidence.ForceRefTo(StewardsContainer.placeAtMe(kmyQuest.CWMission07EvidenceRiften as form, 1, false, false))
	else
		Alias_Evidence.ForceRefTo(StewardsContainer.placeAtMe(kmyQuest.CWMission07EvidenceMarkarth as form, 1, false, false))
	endIf
	StewardsContainer.AddItem(Alias_Evidence.GetReference() as form, 1, false)
	Alias_Evidence.TryToDisable()
	Alias_CaravanSoldier1.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWImperialFactionNPC)
	Alias_CaravanSoldier2.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWImperialFactionNPC)
	Alias_CaravanSoldier3.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWImperialFactionNPC)
	Alias_CaravanSoldier4.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWImperialFactionNPC)
	Alias_CaravanSoldier5.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWImperialFactionNPC)
	Alias_CaravanSoldier6.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWImperialFactionNPC)
	Alias_CaravanSoldier1.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWSonsFactionNPC)
	Alias_CaravanSoldier2.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWSonsFactionNPC)
	Alias_CaravanSoldier3.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWSonsFactionNPC)
	Alias_CaravanSoldier4.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWSonsFactionNPC)
	Alias_CaravanSoldier5.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWSonsFactionNPC)
	Alias_CaravanSoldier6.GetActorReference().RemoveFromFaction(kmyQuest.CWs.CWSonsFactionNPC)
	kmyQuest.ToggleOffComplexWIInteractions(Alias_AttackPoint)
endFunction

; Skipped compiler generated GotoState

function Fragment_12()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	(Alias_Steward as cwmission07stewardscript).MonitorPlayerDistance(false)
	Alias_Friend.TryToEnable()
	Alias_Friend.TryToMoveTo(Alias_CaravanFriendMarker.GetReference())
	Alias_CaravanToggle.TryToEnable()
	self.setObjectiveCompleted(30, true)
	self.setObjectiveDisplayed(40, true, false)
endFunction

function Fragment_21()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	game.GetPlayer().RemoveItem(Alias_Evidence.GetReference() as form, 1, false, none)
	self.setObjectiveCompleted(20, true)
	self.setObjectiveDisplayed(30, true, false)
endFunction

function Fragment_11()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	Alias_Friend.GetActorReference().EvaluatePackage()
	Alias_CaravanSoldierFriendly1.GetActorReference().EvaluatePackage()
	Alias_CaravanSoldierFriendly2.GetActorReference().EvaluatePackage()
	self.setObjectiveCompleted(40, true)
	self.setObjectiveDisplayed(50, true, false)
endFunction

function Fragment_10()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	kmyQuest.ProcessFieldCOFactionsOnQuestShutDown()
	Alias_Friend.GetActorReference().AddToFaction(kmyQuest.CWs.CWBuddies)
	self.UnregisterForUpdate()
	kmyQuest.ToggleOnComplexWIInteractions(Alias_AttackPoint)
	Alias_Evidence.GetReference().delete()
	
	Alias_CaravanToggle.TryToDisable() ; USKP 2.0.4 - The caravan and stuff are never turned back off.
	
endFunction

function Fragment_8()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	kmyQuest.FlagFieldCOWithMissionResultFaction(7, true)
	self.UnregisterForUpdate()
	self.stop()
endFunction

function Fragment_20()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	self.setObjectiveCompleted(60, true)
	self.setObjectiveDisplayed(90, true, false)
endFunction

function Fragment_7()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	kmyQuest.FlagFieldCOWithMissionResultFaction(7, false)
	kmyQuest.CWs.CWMission07Done = 1
	kmyQuest.CWs.registerMissionSuccess(Alias_Hold.GetLocation(), false)
	self.UnregisterForUpdate()
	self.stop()
endFunction

function Fragment_14()

	Quest __temp = self as Quest
	cwmission07script kmyQuest = __temp as cwmission07script
	Alias_Friend.GetActorReference().EvaluatePackage()
	Alias_CaravanSoldierFriendly1.GetActorReference().EvaluatePackage()
	Alias_CaravanSoldierFriendly2.GetActorReference().EvaluatePackage()
endFunction
