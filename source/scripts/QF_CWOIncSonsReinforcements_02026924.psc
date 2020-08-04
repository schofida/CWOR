scriptName QF_CWOIncSonsReinforcements_02026924 extends Quest hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_0()

	Quest __temp = self as Quest
	cwoincreinforcements kmyQuest = __temp as cwoincreinforcements
	while kmyQuest.CWs.CWOIncImperialReinforcements.IsRunning()
		utility.wait(1 as Float)
	endWhile
	kmyQuest.GlobalAmount = kmyQuest.CWs.CWOSonsReinforcements.GetValueInt()
	kmyQuest.CWs.CWOSonsReinforcements.SetvalueInt(kmyQuest.GlobalAmount + 1)
	kmyQuest.CWs.CWOIncSonsReinforcements.Stop()
endFunction

; Skipped compiler generated GetState

; Skipped compiler generated GotoState
