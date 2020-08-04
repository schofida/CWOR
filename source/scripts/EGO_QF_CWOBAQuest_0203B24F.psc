scriptName EGO_QF_CWOBAQuest_0203B24F extends Quest hidden

;-- Properties --------------------------------------
referencealias property Alias_Soldier1000001001000000 auto
referencealias property Alias_Soldier1000002 auto
referencealias property Alias_Soldier1000001001 auto
referencealias property Alias_Soldier1000001001000 auto
referencealias property Alias_Soldier1000001 auto
referencealias property Alias_Soldier1000001001000000001000000001000 auto
referencealias property Alias_Soldier1000001001000000001 auto
referencealias property Alias_Soldier1000001001000000001000000001 auto
referencealias property Alias_Soldier1000001001000000001000000 auto
globalvariable property QuestLength auto
referencealias property Alias_Soldier1000000 auto
referencealias property Alias_Soldier1 auto
referencealias property Alias_Soldier1000001001000000001000000001001 auto
referencealias property Alias_Soldier1000001001000000001000 auto
referencealias property Alias_Soldier1000001001000000001000000000 auto
referencealias property Alias_Soldier1000001001000000000 auto
referencealias property Alias_Soldier1000001001000000001000001000 auto
referencealias property Alias_Soldier1000001001000000001001 auto
referencealias property Alias_Soldier1000 auto
referencealias property Alias_Soldier1000001001000000001000000001001000 auto
referencealias property Alias_Soldier1000001001000000001000001 auto
referencealias property Alias_Soldier1000001000 auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function Fragment_0()

	utility.wait(QuestLength.GetValue())
	self.Stop()
endFunction
