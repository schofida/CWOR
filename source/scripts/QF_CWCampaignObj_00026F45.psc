scriptName QF_CWCampaignObj_00026F45 extends Quest hidden

;-- Properties --------------------------------------
referencealias property Alias_CampaignStartMarker auto
referencealias property Alias_FactionLeader auto
referencealias property Alias_Jarl auto
referencealias property Alias_FieldCO auto
locationalias property Alias_CampaignHold auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_8()

	self.SetObjectiveCompleted(10, true)
	self.setObjectiveDisplayed(15, true, false)
endFunction

function Fragment_10()

	Quest __temp = self as Quest
	cwcampaignobjscript kmyQuest = __temp as cwcampaignobjscript
	if self.GetStageDone(20)
		self.setStage(200)
	elseIf self.GetStageDone(30)
		self.setStage(300)
	endIf
endFunction

function Fragment_13()

	self.SetObjectiveCompleted(50, true)
	self.setObjectiveDisplayed(30, true, false)
endFunction

function Fragment_0()

	Quest __temp = self as Quest
	cwcampaignobjscript kmyQuest = __temp as cwcampaignobjscript
	self.setObjectiveDisplayed(10, true, false)
endFunction

function Fragment_1()

	Quest __temp = self as Quest
	cwcampaignobjscript kmyQuest = __temp as cwcampaignobjscript
	self.SetObjectiveCompleted(15, true)
	self.setObjectiveDisplayed(20, true, false)
endFunction

function Fragment_9()

	Quest __temp = self as Quest
	cwcampaignobjscript kmyQuest = __temp as cwcampaignobjscript
	self.SetObjectiveCompleted(30, true)
	self.stop()
endFunction

; Skipped compiler generated GotoState

function Fragment_11()

	Quest __temp = self as Quest
	cwcampaignobjscript kmyQuest = __temp as cwcampaignobjscript
	self.setObjectiveDisplayed(50, true, false)
endFunction

function Fragment_4()

	Quest __temp = self as Quest
	cwcampaignobjscript kmyQuest = __temp as cwcampaignobjscript
	self.setObjectiveDisplayed(30, true, false)
endFunction

function Fragment_6()

	Quest __temp = self as Quest
	cwcampaignobjscript kmyQuest = __temp as cwcampaignobjscript
	self.SetObjectiveCompleted(20, true)
	self.stop()
endFunction

function Fragment_15()

	self.setObjectiveFailed(50, true)
	self.setObjectiveDisplayed(30, true, false)
endFunction

; Skipped compiler generated GetState
