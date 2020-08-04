scriptName QF_CWOIncImpReinforcements_02026923 extends Quest hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

; Skipped compiler generated GetState

function Fragment_0()

	Quest __temp = self as Quest
	cwoincreinforcements kmyQuest = __temp as cwoincreinforcements
	while kmyQuest.CWs.CWOIncSonsReinforcements.IsRunning()
		utility.wait(1 as Float)
	endWhile
	kmyQuest.GlobalAmount = kmyQuest.CWs.CWOImperialReinforcements.GetValueInt()
	kmyQuest.CWs.CWOImperialReinforcements.SetvalueInt(kmyQuest.GlobalAmount + 1)
	kmyQuest.CWs.CWOIncImperialReinforcements.Stop()
endFunction
