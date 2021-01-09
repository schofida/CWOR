scriptName CWOMCMScript extends SKI_ConfigBase

;-- Properties --------------------------------------
globalvariable property CWODefenderReinforcements auto
globalvariable property CWOAttackerReinforcements auto
globalvariable property CWOCapitalReinforcements auto
cwscript property CWs auto
globalvariable property CWOSiegeReinforcements auto
globalvariable property CWOPCChance auto
quest property CW auto
faction property CWSonsFactionNPC auto
quest property CWMission04 auto
globalvariable property CWOImperialReinforcements auto
quest property CWOPatrolsQuest auto
globalvariable property CWOStillABetterEndingGlobal auto
globalvariable property CWOCurrentHold auto
quest property CWOArmorDisguise auto
quest property CWMission07 auto
quest property CWMission05 auto
quest property CWMission06 auto
globalvariable property CWODefendingActive auto
quest property CWOSendForPlayer auto
globalvariable property CWOCourierSentGlobal auto
quest property CWSiege auto
quest property CWFortSiegeCapital auto
quest property CWMission03 auto
globalvariable property CWPercentPoolRemainingDefender auto
globalvariable property CWOWarBegun auto
quest property CWFortsiegeFort auto
faction property CWImperialFactionNPC auto
globalvariable property CWOSonsReinforcements auto
globalvariable property CWPercentPoolRemainingAttacker auto
globalvariable property CWOCapitalQuestRunning auto
globalvariable property CWOFortReinforcements auto
globalvariable property CWODisguiseGlobal auto
globalvariable property CWOBAChance auto
globalvariable property CWODisguiseGameType auto
globalvariable property CWOVersion auto
globalvariable property CWOTroopPoolGameType auto
globalvariable property CWOSiChance auto
quest property CWAttackCity Auto

;-- Variables ---------------------------------------
Int _color = 16777215
Int _colorOID_C
Int _myKey = -1
Int _keymapOID_K
Int optionsStartSiege
Int optionsReinforcementsBaseCity
Int optionsPartyCrashersChance
Int optionsWinSiege
Int optionsReinforcementsBaseFort
Int optionsReinforcementsBaseCapital
Int optionsCWReset
Int optionsMMScoreStormcloaks
Int optionsMMScoreImperials
Int optionsWinWar
Int optionsWinHold
Int optionsBAChance
int optionsDisguiseGameType
int optionsTroopPoolGameType
int optionsSIChance

Float DramaMamaSecondaryPercent
Float DramaMamaDragonSecondaryPercent
Float DramaMamaSneakPercent
Float DramaMamaBasePercent
Float DramaMamaMagicPercent
Float _sliderPercent = 100.000
Float DramaMamaMagicNoCombatPercent

Bool optionWinWarToggle = false
Bool optionsCWResetToggle = false
bool SetReinforcementsBusy = False
bool optionsToggleCWWinBattle = false

String[] gameDisguiseList
String[] gameTroopPoolList
String[] holdsList
;-- Functions ---------------------------------------

function SetReinforcements()
	if SetReinforcementsBusy
		return
	endif
	SetReinforcementsBusy = True
	Utility.Wait(5)
	if CWFortsiegeFort.IsRunning() && CWFortsiegeFort.GetStage() < 50
		if (CWFortsiegeFort as CWFortSiegeScript).IsPlayerAttacking()
			CWs.CWOMurderMayhemScoreBoard(true, 2)
		else
			CWs.CWOMurderMayhemScoreBoard(false, 2)
		endIf
		(CWFortsiegeFort as CWSiegeScript).SetPoolAttackerOnCWReinforcementScript(CWOAttackerReinforcements.GetValueInt(), 1.00000, 1.00000, false)
		(CWFortsiegeFort as CWSiegeScript).SetPoolDefenderOnCWReinforcementScript(CWODefenderReinforcements.GetValueInt(), 1.00000, 1.00000, false)
	endif
	if CWFortSiegeCapital.IsRunning() && CWFortSiegeCapital.GetStage() < 50 && CWOCurrentHold.GetValueInt() != 1 && CWOCurrentHold.GetValueInt() != 8
		if (CWFortSiegeCapital as CWSiegeScript).IsAttack()
			CWs.CWOMurderMayhemScoreBoard(true, 1)
		else
			CWs.CWOMurderMayhemScoreBoard(false, 1)
		endIf
		(CWFortSiegeCapital as CWSiegeScript).SetPoolAttackerOnCWReinforcementScript(CWOAttackerReinforcements.GetValueInt(), 1.00000, 1.00000, false)
		(CWFortSiegeCapital as CWSiegeScript).SetPoolDefenderOnCWReinforcementScript(CWODefenderReinforcements.GetValueInt(), 1.00000, 1.00000, false)
	endif
	if CWSiege.IsRunning() && CWSiege.GetStage() < 10 && CWOCurrentHold.GetValueInt() != 1 && CWOCurrentHold.GetValueInt() != 8
		if (CWSiege as CWSiegeScript).IsAttack()
			CWs.CWOMurderMayhemScoreBoard(true, 0)
		else
			CWs.CWOMurderMayhemScoreBoard(false, 0)
		endIf
		(CWSiege as CWSiegeScript).SetPoolAttackerOnCWReinforcementScript(CWOAttackerReinforcements.GetValueInt(), 1.00000, 1.00000, false)
		if !(CWSiege as CWSiegeScript).IsAttack()
			(CWSiege as CWSiegeScript).SetPoolDefenderOnCWReinforcementScript(CWODefenderReinforcements.GetValueInt(), 1.00000, 1.00000, false)
		endIf
	endif
	SetReinforcementsBusy = false
endfunction

function OnOptionSliderAccept(Int a_option, Float a_value)
{Called when the user accepts a new slider value}

	if a_option == optionsReinforcementsBaseCapital
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}", false)
		CWOCapitalReinforcements.SetValue(a_value)
		SetReinforcements()
	elseIf a_option == optionsReinforcementsBaseFort
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}", false)
		CWOFortReinforcements.SetValue(a_value)
		SetReinforcements()
	elseIf a_option == optionsReinforcementsBaseCity
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}", false)
		CWOSiegeReinforcements.SetValue(a_value)
		SetReinforcements()
	elseIf a_option == optionsMMScoreImperials
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}", false)
		CWOImperialReinforcements.SetValue(a_value)
		SetReinforcements()
	elseIf a_option == optionsMMScoreStormcloaks
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}", false)
		CWOSonsReinforcements.SetValue(a_value)
		SetReinforcements()
	elseIf a_option == optionsPartyCrashersChance
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}%", false)
		CWOPCChance.SetValue(a_value)
	elseIf a_option == optionsBAChance
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}%", false)
		CWOBAChance.SetValue(a_value)
	elseIf a_option == optionsSIChance
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}%", false)
		CWOSIChance.SetValue(a_value)
	endIf
endFunction



function OnOptionSelect(Int a_option)
{Called when the user selects a non-dialog option}

	if a_option == optionsWinWar
		optionWinWarToggle = !optionWinWarToggle
		self.SetToggleOptionValue(a_option, optionWinWarToggle, false)
		if CWs.PlayerAllegiance == 1
			CWs.CWOImperialsWin()
		else
			CWs.CWOStormcloaksWin()
		endIf
	elseIf a_option == optionsWinSiege
		optionsToggleCWWinBattle = !optionsToggleCWWinBattle
		self.SetToggleOptionValue(a_option, optionsToggleCWWinBattle, false)
		if CWMission03.IsRunning()
			CWMission03.SetStage(200)
		endIf
		if CWMission04.IsRunning()
			CWMission04.SetStage(200)
		endIf
		if CWMission05.IsRunning()
			CWMission05.SetStage(200)
		endIf
		if CWMission07.IsRunning()
			CWMission07.SetStage(200)
		endIf
		if CWS.CWSiegeS.IsRunning() && CWS.CWSiegeS.GetStage() < 50 && CWS.CWOStillABetterEndingGlobal.GetValue() as Int < 1 ;schofida - siege and capital are both running in final siege. Have capital take care of it
			if CWS.IsPlayerAttacking(CWS.CWSiegeS.City.GetLocation())
				CWS.CWSiegeS.Setstage(50)
				CWAttackCity.Setstage(50)
			else
				CWS.CWSiegeS.Setstage(200)
			endIf
		elseIf CWS.CWFortSiegeCapital.IsRunning() && CWS.CWFortSiegeCapital.GetStage() < 1000
			if CWS.IsPlayerAttacking((CWS.CWFortSiegeCapital as CWFortSiegeScript).Fort.GetLocation())
				CWS.CWFortSiegeCapital.Setstage(1000)
			else
				CWS.CWFortSiegeCapital.Setstage(2000)
			endIf
		elseIf CWS.CWFortSiegeFort.IsRunning() && CWS.CWFortSiegeFort.GetStage() < 950
			if CWS.IsPlayerAttacking((CWS.CWFortSiegeFort as CWFortSiegeScript).Fort.GetLocation())
				CWS.CWFortSiegeFort.Setstage(1000)
			else
				CWS.CWFortSiegeFort.Setstage(2000)
			endIf
		endIf
	elseIf a_option == optionsCWReset
		optionsCWResetToggle = !optionsCWResetToggle
		self.SetToggleOptionValue(a_option, optionsCWResetToggle, false)
		CWs.CWOTotalReset()
	endIf
endFunction

function OnOptionSliderOpen(Int a_option)
{Called when the user selects a slider option}

	If a_option == optionsReinforcementsBaseCapital
		self.SetSliderDialogStartValue(CWOCapitalReinforcements.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOCapitalReinforcements.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 500 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == optionsReinforcementsBaseFort
		self.SetSliderDialogStartValue(CWOFortReinforcements.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOFortReinforcements.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 300 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == optionsReinforcementsBaseCity
		self.SetSliderDialogStartValue(CWOSiegeReinforcements.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOSiegeReinforcements.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 300 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == optionsMMScoreImperials
		self.SetSliderDialogStartValue(CWOImperialReinforcements.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOImperialReinforcements.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 300 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == optionsMMScoreStormcloaks
		self.SetSliderDialogStartValue(CWOSonsReinforcements.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOSonsReinforcements.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 300 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == optionsPartyCrashersChance
		self.SetSliderDialogStartValue(CWOPCChance.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOPCChance.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 100 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == optionsBAChance
		self.SetSliderDialogStartValue(CWOBAChance.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOBAChance.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 100 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == optionsSIChance
		self.SetSliderDialogStartValue(CWOSiChance.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOSiChance.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 100 as Float)
		self.SetSliderDialogInterval(1 as Float)
	endIf
endFunction

function OnOptionColorOpen(Int a_option)
{Called when a color option has been selected}

	if a_option == _colorOID_C
		self.SetColorDialogStartColor(_color)
		self.SetColorDialogDefaultColor(16777215)
	endIf
endFunction

event OnConfigClose()
	optionWinWarToggle = false
	optionsCWResetToggle = false
	SetReinforcementsBusy = False
	optionsToggleCWWinBattle = false
endevent

function OnPageReset(String a_page)
{Called when a new page is selected, including the initial empty page}
	if a_page == "CWO Debug"
		SetCursorFillMode(self.LEFT_TO_RIGHT)
		if CW.IsRunning()
			self.AddtextOption("Main CW Quest", "Is On Stage " + CW.Getstage() as String, 0)
		endIf
		if game.Getplayer().IsInFaction(CWS.CWSonsFaction)
			self.AddtextOption("We are", "In The Sons Faction", 0)
		elseIf game.Getplayer().IsInFaction(CWS.CWImperialFaction)
			self.AddtextOption("We are", "In the Imperial Faction", 0)
		else
			self.AddtextOption("We are", "Not Yet Hostile", 0)
		endIf
		if CWOArmorDisguise.IsRunning()
			self.AddtextOption("CWOArmorDisguise", "Is On", 0)
			if CWODisguiseGlobal.GetValueInt() > 0
				self.AddtextOption("Are we disguised?", "YES", 0)
			else
				self.AddtextOption("Are we disguised?", "NO", 0)
			endIf
		endIf
		if CWOSendForPlayer.IsRunning()
			self.AddtextOption("CWO Courier Quest", "Is On Stage " + CWOSendForPlayer.Getstage() as String, 0)
			if CWOCourierSentGlobal.GetValue() > 0 as Float && CWOSendForPlayer.Getstage() < 10
				self.AddtextOption("CWO Courier", "Has Been Sent", 0)
			elseIf CWOSendForPlayer.Getstage() < 10
				self.AddtextOption("CWO Courier", "Has NOT Been Sent", 0)
			endIf
		endIf
		if CWOPatrolsQuest.IsRunning()
			self.AddtextOption("CWOPatrolsQuest", "Is On", 0)
		endIf
		if CWMission03.IsRunning()
			self.AddtextOption("A False Front", "Is On Stage " + CWMission03.Getstage() as String, 0)
		endIf
		if CWMission04.IsRunning()
			self.AddtextOption("Rescue From X", "Is On Stage " + CWMission04.Getstage() as String, 0)
		endIf
		if CWMission05.IsRunning()
			self.AddtextOption("X's Last Battle", "Is On Stage " + CWMission05.Getstage() as String, 0)
		endIf
		if CWMission07.IsRunning()
			self.AddtextOption("Compelling Tribute", "Is On Stage " + CWMission07.Getstage() as String, 0)
		endIf
		if CWSiege.IsRunning()
			self.AddtextOption("Major Siege Quest", "Is On Stage " + CWSiege.Getstage() as String, 0)
		endIf
		if CWFortsiegeFort.IsRunning()
			self.AddtextOption("Fort Siege Quest", "Is On Stage " + CWFortsiegeFort.Getstage() as String, 0)
		endIf
		if CWFortSiegeCapital.IsRunning()
			self.AddtextOption("Capital Siege Quest", "Is On Stage " + CWFortSiegeCapital.Getstage() as String, 0)
		endIf
		if cws.CWOStillABetterEndingMonitor.IsRunning()
			AddtextOption("Player Bleedout Monitor", "Is On", 0)
		endif
		if CWOStillABetterEndingGlobal.GetValue() > 0 as Float
			self.AddtextOption("STILL A BETTER ENDING THAN MASS EFFECT 3", "Is On", 0)
		endIf
		if CWODefendingActive.GetValue() > 0 as Float
			self.AddtextOption("CWO Thinks you are on", "DEFENSE", 0)
		else
			self.AddtextOption("CWO Thinks you are on", "OFFENSE/DEFAULT", 0)
		endIf
		if CWOCurrentHold.GetValueInt() == 1
			self.AddtextOption("CWO Thinks your current hold is", "HAAFINGAR", 0)
		elseIf CWOCurrentHold.GetValueInt() == 2
			self.AddtextOption("CWO Thinks your current hold is", "THE REACH", 0)
		elseIf CWOCurrentHold.GetValueInt() == 3
			self.AddtextOption("CWO Thinks your current hold is", "HJAALMARCH", 0)
		elseIf CWOCurrentHold.GetValueInt() == 4
			self.AddtextOption("CWO Thinks your current hold is", "Whiterun", 0)
		elseIf CWOCurrentHold.GetValueInt() == 5
			self.AddtextOption("CWO Thinks your current hold is", "Falkreath", 0)
		elseIf CWOCurrentHold.GetValueInt() == 6
			self.AddtextOption("CWO Thinks your current hold is", "THE PALE", 0)
		elseIf CWOCurrentHold.GetValueInt() == 7
			self.AddtextOption("CWO Thinks your current hold is", "Winterhold", 0)
		elseIf CWOCurrentHold.GetValueInt() == 8
			self.AddtextOption("CWO Thinks your current hold is", "EASTMARCH", 0)
		elseIf CWOCurrentHold.GetValueInt() == 9
			self.AddtextOption("CWO Thinks your current hold is", "THE RIFT", 0)
		else
			self.AddtextOption("CWO Thinks your current hold is", "N/A", 0)
		endIf
		if CWOCapitalQuestRunning.GetValue() > 0 as Float
			self.AddtextOption("CWO thinks a capital quest", "Is On", 0)
		endIf
		self.AddtextOption("Imperial MM Score is:", CWOImperialReinforcements.GetValue() as String, 0)
		self.AddtextOption("Stormcloak MM Score is:", CWOSonsReinforcements.GetValue() as String, 0)
		self.AddtextOption("CWPercentPoolRemainingAttacker is at", CWPercentPoolRemainingAttacker.GetValueInt() as String, 0)
		self.AddtextOption("CWPercentPoolRemainingDefender is at", CWPercentPoolRemainingDefender.GetValueInt() as String, 0)
		self.AddtextOption("Haafingar is owned by the", CWs.FactionName(CWs.GetHoldOwner(1)), 0)
		self.AddtextOption("Hjaalmarch is owned by the", CWs.FactionName(CWs.GetHoldOwner(3)), 0)
		self.AddtextOption("The Reach is owned by the", CWs.FactionName(CWs.GetHoldOwner(2)), 0)
		self.AddtextOption("Falkreath is owned by the", CWs.FactionName(CWs.GetHoldOwner(5)), 0)
		self.AddtextOption("Whiterun is owned by the", CWs.FactionName(CWs.GetHoldOwner(4)), 0)
		self.AddtextOption("The Pale is owned by the", CWs.FactionName(CWs.GetHoldOwner(6)), 0)
		self.AddtextOption("The Rift is owned by the", CWs.FactionName(CWs.GetHoldOwner(9)), 0)
		self.AddtextOption("Winterhold is owned by the", CWs.FactionName(CWs.GetHoldOwner(7)), 0)
		self.AddtextOption("Eastmarch is owned by the", CWs.FactionName(CWs.GetHoldOwner(8)), 0)
	elseIf a_page == "CWO Options"
		self.SetCursorFillMode(self.LEFT_TO_RIGHT)
		optionsReinforcementsBaseCapital = self.AddSlideroption("Capital Reinforcements Base", CWOCapitalReinforcements.GetValueInt() as Float, "{0}", 0)
		optionsReinforcementsBaseFort = self.AddSlideroption("Fort Reinforcements Base", CWOFortReinforcements.GetValueInt() as Float, "{0}", 0)
		optionsReinforcementsBaseCity = self.AddSlideroption("Siege Reinforcements Base", CWOSiegeReinforcements.GetValueInt() as Float, "{0}", 0)
		optionsMMScoreImperials = self.AddSlideroption("Imperial Score", CWOImperialReinforcements.GetValueInt() as Float, "{0}", 0)
		optionsMMScoreStormcloaks = self.AddSlideroption("Stormcloak Score", CWOSonsReinforcements.GetValueInt() as Float, "{0}", 0)
		optionsTroopPoolGameType = self.AddMenuOption("Troop Pool Algorithm:", " ", 0)
		optionsPartyCrashersChance = self.AddSlideroption("PARTY CRASHERS chance", CWOPCChance.GetValueInt() as Float, "{0}%", 0)
		optionsBAChance = self.AddSlideroption("Benedict Arnold Spies Chance", CWOBAChance.GetValueInt() as Float, "{0}%", 0)
		optionsSiChance = self.AddSlideroption("Spanish Inquisition Chance", CWOSiChance.GetValueInt() as Float, "{0}%", 0)
		optionsDisguiseGameType = self.AddMenuOption("Disguise Mechanic:", " ", 0)
		optionsStartSiege = self.AddMenuOption("Force start siege here:", " ", 0)
		optionsWinSiege = self.AddToggleOption("Win running siege:", optionsToggleCWWinBattle, 0)
		optionsWinHold = self.AddMenuOption("Win hold here:", " ", 0)
		optionsWinWar = self.AddToggleOption("Win the war", optionWinWarToggle, 0)
		optionsCWReset = self.AddToggleOption("Reset major initial variables", optionsCWResetToggle, OPTION_FLAG_DISABLED)

		self.AddEmptyOption()
	endIf
endFunction

Int function GetVersion()

	return CWOVersion.GetValueInt()
endFunction

function OnConfigInit()

	Pages = new String[2]
	Pages[0] = "CWO Debug"
	Pages[1] = "CWO Options"
	holdsList = new String[9]
	holdsList[0] = "Solitude"
	holdsList[1] = "Markarth"
	holdsList[2] = "Morthal"
	holdsList[3] = "Whiterun"
	holdsList[4] = "Falkreath"
	holdsList[5] = "Dawnstar"
	holdsList[6] = "Winterhold"
	holdsList[7] = "Windhelm"
	holdsList[8] = "Riften"

	gameDisguiseList = new String[3]
	gameDisguiseList[0] = "Default"
	gameDisguiseList[1] = "Realistic"
	gameDisguiseList[2] = "Disabled"
	gameTroopPoolList = new String[3]
	gameTroopPoolList[0] = "Default"
	gameTroopPoolList[1] = "Alternate"
	gameTroopPoolList[2] = "Even"
endFunction

function OnOptionColorAccept(Int a_option, Int a_color)
{Called when a new color has been accepted}

	if a_option == _colorOID_C
		_color = a_color
		self.SetColorOptionValue(a_option, a_color, false)
	endIf
endFunction

; Skipped compiler generated GotoState

function OnOptionMenuOpen(Int a_option)
{Called when the user selects a menu option}

	if a_option == optionsStartSiege
		self.SetMenuDialogStartIndex(0)
		self.SetMenuDialogDefaultIndex(0)
		self.SetMenuDialogOptions(holdsList)
	elseif a_option == optionsWinHold
		self.SetMenuDialogStartIndex(0)
		self.SetMenuDialogDefaultIndex(0)
		self.SetMenuDialogOptions(holdsList)
	elseIf a_option == optionsDisguiseGameType
		self.SetMenuDialogStartIndex(CWODisguiseGameType.GetValueInt())
		self.SetMenuDialogDefaultIndex(CWODisguiseGameType.GetValueInt())
		self.SetMenuDialogOptions(gameDisguiseList)
	elseIf a_option == optionsTroopPoolGameType
		self.SetMenuDialogStartIndex(CWOTroopPoolGameType.GetValueInt())
		self.SetMenuDialogDefaultIndex(CWOTroopPoolGameType.GetValueInt())
		self.SetMenuDialogOptions(gameTroopPoolList)
	endIf
endFunction

function OnOptionMenuAccept(Int a_option, Int a_index)
{Called when the user accepts a new menu entry}

	if a_option == optionsStartSiege
		CWOCurrentHold.SetValueInt(a_index + 1)
		if CWMission03.IsRunning()
			CWMission03.SetStage(200)
			Utility.wait(3)
		endIf
		if CWMission04.IsRunning()
			CWMission04.SetStage(200)
			Utility.wait(3)
		endIf
		if CWMission05.IsRunning()
			CWMission05.SetStage(200)
			Utility.wait(3)
		endIf
		if CWMission07.IsRunning()
			CWMission07.SetStage(200)
			Utility.wait(3)
		endIf
		If CWS.CWFortSiegeFort.IsRunning() && CWS.CWFortSiegeFort.GetStage() < 950
			if CWS.IsPlayerAttacking((CWS.CWFortSiegeFort as CWFortSiegeScript).Fort.GetLocation())
				CWS.CWFortSiegeFort.Setstage(1000)
			else
				CWS.CWFortSiegeFort.Setstage(2000)
			endIf
			Utility.wait(6)
		endIf
		CWs.CWOStartCapital(CWs.GetLocationForHold(a_index + 1))
		Utility.Wait(6)
		if (a_index + 1) as Bool == (1 as Bool || 2 as Bool || 4 as Bool || 8 as Bool || 9 as Bool)
			CWSiege.Setstage(1)
		else
			CWs.CWFortSiegeCapital.Setstage(10)
		endIf
	elseIf a_option == optionsWinHold
		if CWs.GetHoldOwner(a_index + 1) != CWs.PlayerAllegiance
			CWs.WinHoldOffScreenIfNotDoingCapitalBattles(CWs.GetLocationForHold(a_index + 1), true, false)
		endIf
	elseif a_option == optionsDisguiseGameType
		CWODisguiseGameType.SetValueInt(a_index)
		if CWOArmorDisguise.IsRunning()
			CWOArmorDisguise.Stop()
			CWOArmorDisguise.Start()
		endif
	elseif a_option == optionsTroopPoolGameType
		CWOTroopPoolGameType.SetValueInt(a_index)
		SetReinforcements()
	endIf
endFunction

function OnVersionUpdate(Int a_version)
{Called when a version update of this script has been detected}
	OnConfigInit()
endFunction

function OnOptionHighlight(Int a_option)
{Called when the user highlights an option}

	if a_option == optionsReinforcementsBaseCapital
		self.SetInfoText("Base Reinforcements for Minor Capital sieges")
	elseIf a_option == optionsReinforcementsBaseFort
		self.SetInfoText("Base reinforcements for Fort sieges")
	elseIf a_option == optionsReinforcementsBaseCity
		self.SetInfoText("Base reinforcements for Major sieges")
	elseIf a_option == optionsMMScoreImperials
		self.SetInfoText("Current Imperial MURDERMAYHEM score. Setting this score higher than the stormcloak score will increase the number of imperial reinforcements during sieges.")
	elseIf a_option == optionsMMScoreStormcloaks
		self.SetInfoText("Current Stormcloak MURDERMAYHEM score. Setting this score higher than the imperial score will increase the number of stormcloak reinforcements during sieges.")
	elseIf a_option == optionsPartyCrashersChance
		self.SetInfoText("Chance for dragon attacks during major capital sieges.")
	elseIf a_option == optionsWinWar
		self.SetInfoText("Automatically wins the war for your side")
	elseif a_option == optionsBAChance
		self.SetInfoText("Set the chance that a random guard or inconsequential NPC will become a spy for the other side. Set to 0 to disable.")
	elseif a_option == optionsDisguiseGameType
		self.SetInfoText("Changes the CWO Disguise mechanic. Default = Guards of contested holds will attack unless player dons a cuirass of the player's opposing faction. Realistic = Guards in contested holds will attack player only if player dons a cuirass of the player's faction.")
	elseif a_option == optionsTroopPoolGameType
		self.SetInfoText("Sets how many troops are at your disposal. As troops die, another will take their place until yours or your opponents reserves run out. If you run out, you lose. Default=Utilizes MURDERMAYHEM scores. Typically winning more battles nets more troops. Alternate=Advantage goes to the side on the defense. Even=No adjustments. Both sides get same troops (with a little randomness thrown in).")
	elseif a_option == optionsSIChance
		self.SetInfoText("Sets the Spanish Inquisition chance. CWO will periodically poll and may start a defense quest if you are in a city your side controls.")
	elseif a_option == optionsStartSiege
		self.SetInfoText("Starts a city siege of your choice. Use this if you are stuck at a camp and the field officer is not giving you the next quest. Please close MCM after selecting.")
	elseif a_option == optionsWinSiege
		self.SetInfoText("Wins a fort or major/minor capital siege already in progress. Use this if the siege did not finish for some reason. Please do not use this at the battle of Solitude or Windhelm. Please close MCM after selecting.")
	elseif a_option == optionsWinHold
		self.SetInfoText("EXPERIMENTAL: Wins a hold of your choice. Use this if the commander is not giving you the quest for the next hold. The dialogue conditions are pretty strict and sometimes (mod conflict maybe?) you are not gaining the hold in the proper order. Check the holds on the debug page to see the orders of hold conquests. Imperials go down; Stormcloaks go up. Please close MCM after selecting.")
	endIf
endFunction

; Skipped compiler generated GetState
