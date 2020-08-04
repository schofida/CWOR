scriptName QF_CWOTestEnderCall_020366A5 extends Quest hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

function Fragment_0()

	Quest __temp = self as Quest
	cwotestendercallscript kmyQuest = __temp as cwotestendercallscript
	if kmyQuest.CWs.Playerallegiance == 1
		kmyQuest.CWs.WinholdOffscreenIfNotdoingCapitalBattles(kmyQuest.CWs.EastmarchHoldLocation, false, true)
	elseIf kmyQuest.CWs.Playerallegiance == 2
		kmyQuest.CWs.WinholdOffscreenIfNotdoingCapitalBattles(kmyQuest.CWs.HaafingarHoldLocation, false, true)
	endIf
endFunction

; Skipped compiler generated GotoState
