scriptName QF_CWMission05_0201CCC0 extends Quest hidden

;-- Properties --------------------------------------
referencealias property Alias_Player auto
referencealias property Alias_EnemyFieldCOSons auto
referencealias property Alias_EnemyFieldCOImperial auto
referencealias property Alias_EnemyFieldCO auto
locationalias property Alias_EnemyCampImperial auto
referencealias property Alias_FieldCO auto
locationalias property Alias_EnemyCampSons auto
locationalias property Alias_Hold auto
locationalias property Alias_EnemyCamp auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

function Fragment_10()

	Quest __temp = self as Quest
	cwmission05script kmyQuest = __temp as cwmission05script
	kmyQuest.FlagFieldCOWithMissionResultFaction(5, true)
	kmyQuest.CWs.registerMissionSuccess(Alias_Hold.GetLocation(), false)
	self.UnregisterForUpdate()
	self.stop()
endFunction

function Fragment_0()

	Quest __temp = self as Quest
	cwmission05script kmyQuest = __temp as cwmission05script
	kmyQuest.FlagFieldCOWithMissionResultFaction(5, false)
	kmyQuest.CWs.registerMissionSuccess(Alias_Hold.GetLocation(), false)
	self.UnregisterForUpdate()
	self.stop()
endFunction

function Fragment_6()

	Quest __temp = self as Quest
	cwmission05script kmyQuest = __temp as cwmission05script
	kmyQuest.CWMission05COFlees.Start()
endFunction

function Fragment_4()

	Quest __temp = self as Quest
	cwmission05script kmyQuest = __temp as cwmission05script
	kmyQuest.objectiveCompleted = 1
	self.setStage(200)
endFunction

; Skipped compiler generated GotoState

function Fragment_8()

	Quest __temp = self as Quest
	cwmission05script kmyQuest = __temp as cwmission05script

	self.SetObjectiveDisplayed(10, 1 as Bool, false)
	;Reddit Bugfix #5
	Location currentHold = kmyQuest.CWs.GetMyCurrentHoldLocation(Alias_EnemyFieldCO.GetActorReference())
	int aliasAllegiance = kmyQuest.CWs.GetActorAllgeiance(Alias_EnemyFieldCO.GetActorReference())
	Actor FieldCOHQ = kmyQuest.CWs.GetAliasHQFieldCOForHold(currentHold, aliasAllegiance).GetActorReference()
	Actor FieldCOCamp = kmyQuest.CWs.GetAliasCampFieldCOForHold(currentHold, aliasAllegiance).GetActorReference()

	FieldCOHQ.Enable(false)
	FieldCOCamp.Enable(false)

	Alias_EnemyFieldCO.GetActorReference().GetActorBase().SetEssential(false)
endFunction

