scriptName QF_CWSiegeObj_00096E71 extends Quest hidden

;-- Properties --------------------------------------
referencealias property Alias_Jarl auto
referencealias property Alias_TextReplaceAttackDefend auto
referencealias property Alias_Objective3B auto
referencealias property Alias_Objective1B auto
referencealias property Alias_Objective1A auto
referencealias property Alias_FieldCO auto
locationalias property Alias_City auto
referencealias property Alias_Tullius auto
referencealias property Alias_Objective2A auto
referencealias property Alias_Objective2B auto
referencealias property Alias_Objective3A auto
locationalias property Alias_Hold auto
referencealias property Alias_General auto
referencealias property Alias_Objective4B auto
referencealias property Alias_CityGate auto
referencealias property Alias_Objective4A auto
referencealias property Alias_Ulfric auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

function Fragment_0()

	Quest __temp = self as Quest
	cwsiegeobjscript kmyQuest = __temp as cwsiegeobjscript
	self.stop()
endFunction

; Skipped compiler generated GotoState

function Fragment_3()

	Quest __temp = self as Quest
	cwsiegeobjscript kmyQuest = __temp as cwsiegeobjscript
	self.CompleteAllObjectives()
	kmyQuest.CWs.displayFactionLeaderObjective()
	self.stop()
endFunction

function Fragment_6()

	Quest __temp = self as Quest
	cwsiegeobjscript kmyQuest = __temp as cwsiegeobjscript
	self.CompleteAllObjectives()
	kmyQuest.CWs.displayFactionLeaderObjective()
	self.stop()
endFunction
