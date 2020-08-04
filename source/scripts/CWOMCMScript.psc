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

;-- Variables ---------------------------------------
Int CDOSlider16
Int CDOSlider26
Int _difficultyMenuOID_M
Int CDOSlider3
Float DramaMamaSecondaryPercent
Int CDOSlider9
Int _counter = 0
Int CDOSlider6
Int CDOConcentrationToggle
Int CDOSlider31
Int CDOSlider40
Float DramaMamaDragonSecondaryPercent
Int CDOSlider18
Int _difficultyMenuOID_M2
Int CDOSlider43
Float DramaMamaSneakPercent
Int CDOSlider33
Int CDOSlider23
Bool CDOConcentrationToggleBool = false
Int CDOSlider37
Float DramaMamaBasePercent
Int CDOSlider42
Int _toggle3OID_B
Int CDOSlider19
Int CDOSlider36
Int CDOSlider22
Int CDOSlider13
Int CDOSlider2
Int CDOSlider27
Int CDOSlider12
String[] _difficultyList
Int CDOSlider30
Int CDOSlider7
Int _textOID_T
Bool _toggleState1 = false
Int CDOSlider35
Int CDOSlider20
Int CDOSlider21
Int CDOSlider41
Int CDOSlider38
Int CDOSlider8
Int _color = 16777215
Int CDOSlider29
Int CDOSlider11
Int CDOSlider28
Int CDOSlider1
Int _toggle2OID_B
Int CDOSlider14
Int CDOSlider32
Int CDOSlider5
Int _colorOID_C
Int CDOSlider10
Int CDOSlider4
Int CDOSlider25
Bool _toggleState3 = false
Int CDOSlider15
Int _curDifficulty = 0
Int CDOSlider24
Int _myKey = -1
Int CDOSlider45
Int _keymapOID_K
Int CDOSlider34
Float DramaMamaMagicNoCombatPercent
Int _toggle1OID_B
Float DramaMamaMagicPercent
Int CDOSlider44
Float _sliderPercent = 100.000
Int CDOSlider17
Int _counterOID_T
Int _sliderFormatOID_S
Int CDOSlider39
Bool _toggleState2 = false

;-- Functions ---------------------------------------

function OnOptionSliderAccept(Int a_option, Float a_value)
{Called when the user accepts a new slider value}

	if a_option == CDOSlider1
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}", false)
		CWOCapitalReinforcements.SetValue(a_value)
	elseIf a_option == CDOSlider2
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}", false)
		CWOFortReinforcements.SetValue(a_value)
	elseIf a_option == CDOSlider3
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}", false)
		CWOSiegeReinforcements.SetValue(a_value)
	elseIf a_option == CDOSlider4
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}", false)
		CWOImperialReinforcements.SetValue(a_value)
	elseIf a_option == CDOSlider5
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}", false)
		CWOSonsReinforcements.SetValue(a_value)
	elseIf a_option == CDOSlider6
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}%", false)
		CWOPCChance.SetValue(a_value)
	elseIf a_option == CDOSlider7
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}%", false)
	elseIf a_option == CDOSlider8
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}%", false)
	elseIf a_option == CDOSlider9
		_sliderPercent = a_value
		self.SetSliderOptionValue(a_option, a_value, "{0}%", false)
	endIf
endFunction

function OnOptionSelect(Int a_option)
{Called when the user selects a non-dialog option}

	if a_option == _toggle1OID_B
		_toggleState1 = !_toggleState1
		self.SetToggleOptionValue(a_option, _toggleState1, false)
		if CWs.PlayerAllegiance == 1
			CWs.CWOImperialsWin()
		else
			CWs.CWOStormcloaksWin()
		endIf
	elseIf a_option == _toggle2OID_B
		_toggleState2 = !_toggleState2
		self.SetToggleOptionValue(a_option, _toggleState2, false)
		CWs.CWOTotalReset()
	elseIf a_option == _toggle3OID_B
		_toggleState3 = !_toggleState3
		self.SetToggleOptionValue(a_option, _toggleState3, false)
	elseIf a_option == CDOConcentrationToggle
		CDOConcentrationToggleBool = !CDOConcentrationToggleBool
		self.SetToggleOptionValue(a_option, CDOConcentrationToggleBool, false)
		if CDOConcentrationToggleBool
			
		endIf
	elseIf a_option == _textOID_T
		self.SetTextOptionValue(a_option, "WELL DONE", false)
	elseIf a_option == _counterOID_T
		_counter += 1
		self.SetTextOptionValue(a_option, _counter as String, false)
	endIf
endFunction

function OnOptionSliderOpen(Int a_option)
{Called when the user selects a slider option}

	if a_option == _sliderFormatOID_S
		
	elseIf a_option == CDOSlider1
		self.SetSliderDialogStartValue(CWOCapitalReinforcements.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOCapitalReinforcements.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 500 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == CDOSlider2
		self.SetSliderDialogStartValue(CWOFortReinforcements.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOFortReinforcements.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 300 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == CDOSlider3
		self.SetSliderDialogStartValue(CWOSiegeReinforcements.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOSiegeReinforcements.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 300 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == CDOSlider4
		self.SetSliderDialogStartValue(CWOImperialReinforcements.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOImperialReinforcements.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 300 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == CDOSlider5
		self.SetSliderDialogStartValue(CWOSonsReinforcements.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOSonsReinforcements.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 300 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == CDOSlider6
		self.SetSliderDialogStartValue(CWOPCChance.GetValueInt() as Float)
		self.SetSliderDialogDefaultValue(CWOPCChance.GetValueInt() as Float)
		self.SetSliderDialogRange(0 as Float, 100 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == CDOSlider7
		self.SetSliderDialogRange(0 as Float, 100 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == CDOSlider8
		self.SetSliderDialogRange(0 as Float, 100 as Float)
		self.SetSliderDialogInterval(1 as Float)
	elseIf a_option == CDOSlider9
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

function OnPageReset(String a_page)
{Called when a new page is selected, including the initial empty page}

	if a_page == ""
		self.LoadCustomContent("EGO/CWO.bmp", 258 as Float, 95 as Float)
		return 
	else
		self.UnloadCustomContent()
	endIf
	if a_page == "CWO Debug"
		self.SetTitleText("DON'T PANIC")
		self.SetCursorFillMode(self.TOP_TO_BOTTOM)
		if CW.IsRunning()
			CDOSlider11 = self.AddtextOption("Main CW Quest", "Is On Stage " + CW.Getstage() as String, 0)
		endIf
		if game.Getplayer().IsInFaction(CWSonsFactionNPC)
			CDOSlider13 = self.AddtextOption("We are", "In The Sons NPC Faction", 0)
		elseIf game.Getplayer().IsInFaction(CWImperialFactionNPC)
			CDOSlider13 = self.AddtextOption("We are", "In the Imperial NPC Faction", 0)
		else
			CDOSlider13 = self.AddtextOption("We are", "Not Yet Hostile", 0)
		endIf
		if CWOArmorDisguise.IsRunning()
			CDOSlider14 = self.AddtextOption("CWOArmorDisguise", "Is On", 0)
			if CWODisguiseGlobal.GetValueInt() > 0
				CDOSlider15 = self.AddtextOption("Are we disguised?", "YES", 0)
			else
				CDOSlider15 = self.AddtextOption("Are we disguised?", "NO", 0)
			endIf
		endIf
		if CWOSendForPlayer.IsRunning()
			CDOSlider16 = self.AddtextOption("CWO Courier Quest", "Is On Stage " + CWOSendForPlayer.Getstage() as String, 0)
			if CWOCourierSentGlobal.GetValue() > 0 as Float && CWOSendForPlayer.Getstage() < 10
				CDOSlider17 = self.AddtextOption("CWO Courier", "Has Been Sent", 0)
			elseIf CWOSendForPlayer.Getstage() < 10
				CDOSlider17 = self.AddtextOption("CWO Courier", "Has NOT Been Sent", 0)
			endIf
		endIf
		if CWOPatrolsQuest.IsRunning()
			CDOSlider18 = self.AddtextOption("CWOPatrolsQuest", "Is On", 0)
		endIf
		if CWMission03.IsRunning()
			CDOSlider19 = self.AddtextOption("A False Front", "Is On Stage " + CWMission03.Getstage() as String, 0)
		endIf
		if CWMission04.IsRunning()
			CDOSlider20 = self.AddtextOption("Rescue From X", "Is On Stage " + CWMission04.Getstage() as String, 0)
		endIf
		if CWMission05.IsRunning()
			CDOSlider21 = self.AddtextOption("X's Last Battle", "Is On Stage " + CWMission05.Getstage() as String, 0)
		endIf
		if CWMission07.IsRunning()
			CDOSlider23 = self.AddtextOption("Compelling Tribute", "Is On Stage " + CWMission07.Getstage() as String, 0)
		endIf
		if CWSiege.IsRunning()
			CDOSlider24 = self.AddtextOption("Major Siege Quest", "Is On Stage " + CWSiege.Getstage() as String, 0)
		endIf
		if CWFortsiegeFort.IsRunning()
			CDOSlider25 = self.AddtextOption("Fort Siege Quest", "Is On Stage " + CWFortsiegeFort.Getstage() as String, 0)
		endIf
		if CWFortSiegeCapital.IsRunning()
			CDOSlider26 = self.AddtextOption("Capital Siege Quest", "Is On Stage " + CWFortSiegeCapital.Getstage() as String, 0)
		endIf
		if CWOStillABetterEndingGlobal.GetValue() > 0 as Float
			CDOSlider27 = self.AddtextOption("STILL A BETTER ENDING THAN MASS EFFECT 3", "Is On", 0)
		endIf
		if CWODefendingActive.GetValue() > 0 as Float
			CDOSlider28 = self.AddtextOption("CWO Thinks you are on", "DEFENSE", 0)
		else
			CDOSlider29 = self.AddtextOption("CWO Thinks you are on", "OFFENSE/DEFAULT", 0)
		endIf
		if CWOCurrentHold.GetValueInt() == 1
			CDOSlider30 = self.AddtextOption("CWO Thinks your current hold is", "HAAFINGAR", 0)
		elseIf CWOCurrentHold.GetValueInt() == 2
			CDOSlider30 = self.AddtextOption("CWO Thinks your current hold is", "THE REACH", 0)
		elseIf CWOCurrentHold.GetValueInt() == 3
			CDOSlider30 = self.AddtextOption("CWO Thinks your current hold is", "HJAALMARCH", 0)
		elseIf CWOCurrentHold.GetValueInt() == 4
			CDOSlider30 = self.AddtextOption("CWO Thinks your current hold is", "Whiterun", 0)
		elseIf CWOCurrentHold.GetValueInt() == 5
			CDOSlider30 = self.AddtextOption("CWO Thinks your current hold is", "Falkreath", 0)
		elseIf CWOCurrentHold.GetValueInt() == 6
			CDOSlider30 = self.AddtextOption("CWO Thinks your current hold is", "THE PALE", 0)
		elseIf CWOCurrentHold.GetValueInt() == 7
			CDOSlider30 = self.AddtextOption("CWO Thinks your current hold is", "Winterhold", 0)
		elseIf CWOCurrentHold.GetValueInt() == 8
			CDOSlider30 = self.AddtextOption("CWO Thinks your current hold is", "EASTMARCH", 0)
		elseIf CWOCurrentHold.GetValueInt() == 9
			CDOSlider30 = self.AddtextOption("CWO Thinks your current hold is", "THE RIFT", 0)
		else
			CDOSlider30 = self.AddtextOption("CWO Thinks your current hold is", "N/A", 0)
		endIf
		if CWOCapitalQuestRunning.GetValue() > 0 as Float
			CDOSlider31 = self.AddtextOption("CWO thinks a capital quest", "Is On", 0)
		endIf
		CDOSlider32 = self.AddtextOption("Imperial MM Score is:", CWOImperialReinforcements.GetValue() as String, 0)
		CDOSlider33 = self.AddtextOption("Stormcloak MM Score is:", CWOSonsReinforcements.GetValue() as String, 0)
		CDOSlider34 = self.AddtextOption("CWPercentPoolRemainingAttacker is at", CWPercentPoolRemainingAttacker.GetValueInt() as String, 0)
		CDOSlider35 = self.AddtextOption("CWPercentPoolRemainingDefender is at", CWPercentPoolRemainingDefender.GetValueInt() as String, 0)
		CDOSlider36 = self.AddtextOption("Haafingar is owned by the", CWs.FactionName(CWs.GetHoldOwner(1)), 0)
		CDOSlider37 = self.AddtextOption("The Reach is owned by the", CWs.FactionName(CWs.GetHoldOwner(2)), 0)
		CDOSlider38 = self.AddtextOption("Hjaalmarch is owned by the", CWs.FactionName(CWs.GetHoldOwner(3)), 0)
		CDOSlider39 = self.AddtextOption("Whiterun is owned by the", CWs.FactionName(CWs.GetHoldOwner(4)), 0)
		CDOSlider40 = self.AddtextOption("Falkreath is owned by the", CWs.FactionName(CWs.GetHoldOwner(5)), 0)
		CDOSlider41 = self.AddtextOption("The Pale is owned by the", CWs.FactionName(CWs.GetHoldOwner(6)), 0)
		CDOSlider42 = self.AddtextOption("Winterhold is owned by the", CWs.FactionName(CWs.GetHoldOwner(7)), 0)
		CDOSlider43 = self.AddtextOption("Eastmarch is owned by the", CWs.FactionName(CWs.GetHoldOwner(8)), 0)
		CDOSlider44 = self.AddtextOption("The Rift is owned by the", CWs.FactionName(CWs.GetHoldOwner(9)), 0)
	elseIf a_page == "CWO Options"
		self.SetCursorFillMode(self.TOP_TO_BOTTOM)
		CDOSlider1 = self.AddSlideroption("Capital Reinforcements Base", CWOCapitalReinforcements.GetValueInt() as Float, "{0}", 0)
		CDOSlider2 = self.AddSlideroption("Fort Reinforcements Base", CWOFortReinforcements.GetValueInt() as Float, "{0}", 0)
		CDOSlider3 = self.AddSlideroption("Siege Reinforcements Base", CWOSiegeReinforcements.GetValueInt() as Float, "{0}", 0)
		CDOSlider4 = self.AddSlideroption("Imperial Score", CWOImperialReinforcements.GetValueInt() as Float, "{0}", 0)
		CDOSlider5 = self.AddSlideroption("Stormcloak Score", CWOSonsReinforcements.GetValueInt() as Float, "{0}", 0)
		CDOSlider6 = self.AddSlideroption("PARTY CRASHERS chance", CWOPCChance.GetValueInt() as Float, "{0}%", 0)
		_difficultyMenuOID_M = self.AddMenuOption("Force start siege here:", " ", 0)
		_difficultyMenuOID_M2 = self.AddMenuOption("Win this capital's hold:", " ", 0)
		_toggle1OID_B = self.AddToggleOption("Win the war", _toggleState1, 0)
		_toggle2OID_B = self.AddToggleOption("Reset major initial variables", _toggleState2, 0)
		self.AddEmptyOption()
	endIf
endFunction

Int function GetVersion()

	return 3
endFunction

function OnConfigInit()

	Pages = new String[2]
	Pages[0] = "CWO Debug"
	Pages[1] = "CWO Options"
	_difficultyList = new String[9]
	_difficultyList[0] = "Solitude"
	_difficultyList[1] = "Markarth"
	_difficultyList[2] = "Morthal"
	_difficultyList[3] = "Whiterun"
	_difficultyList[4] = "Falkreath"
	_difficultyList[5] = "Dawnstar"
	_difficultyList[6] = "Winterhold"
	_difficultyList[7] = "Windhelm"
	_difficultyList[8] = "Riften"
endFunction

function OnOptionColorAccept(Int a_option, Int a_color)
{Called when a new color has been accepted}

	if a_option == _colorOID_C
		_color = a_color
		self.SetColorOptionValue(a_option, a_color, false)
	endIf
endFunction

function OnOptionKeyMapChange(Int a_option, Int a_keyCode, String a_conflictControl, String a_conflictName)
{Called when a key has been remapped}

	if a_option == _keymapOID_K
		Bool continue = true
		if a_conflictControl != ""
			String msg
			if a_conflictName != ""
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\nAre you sure you want to continue?"
			else
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n\nAre you sure you want to continue?"
			endIf
			continue = self.ShowMessage(msg, true, "$Yes", "$No")
		endIf
		if continue
			_myKey = a_keyCode
			self.SetKeymapOptionValue(a_option, a_keyCode, false)
		endIf
	endIf
endFunction

; Skipped compiler generated GotoState

function OnOptionMenuOpen(Int a_option)
{Called when the user selects a menu option}

	if a_option == _difficultyMenuOID_M
		self.SetMenuDialogStartIndex(_curDifficulty)
		self.SetMenuDialogDefaultIndex(0)
		self.SetMenuDialogOptions(_difficultyList)
	elseIf a_option == _difficultyMenuOID_M2
		self.SetMenuDialogStartIndex(_curDifficulty)
		self.SetMenuDialogDefaultIndex(0)
		self.SetMenuDialogOptions(_difficultyList)
	endIf
endFunction

function OnOptionMenuAccept(Int a_option, Int a_index)
{Called when the user accepts a new menu entry}

	if a_option == _difficultyMenuOID_M
		CWs.CWOStartCapital(CWs.GetLocationForHold(a_index + 1))
		if (a_index + 1) as Bool == (1 as Bool || 2 as Bool || 4 as Bool || 8 as Bool || 9 as Bool)
			CWSiege.Setstage(1)
		else
			CWs.CWFortSiegeCapital.Setstage(10)
		endIf
	elseIf a_option == _difficultyMenuOID_M2
		if CWs.GetOwner(CWs.GetLocationForHold(a_index + 1)) == CWs.PlayerAllegiance
			CWs.WinholdOffScreenIfNotdoingCapitalBattles(CWs.GetLocationForHold(a_index + 1), false, true)
		else
			CWs.WinholdOffScreenIfNotdoingCapitalBattles(CWs.GetLocationForHold(a_index + 1), true, false)
		endIf
	endIf
endFunction

function OnVersionUpdate(Int a_version)
{Called when a version update of this script has been detected}

	if a_version >= 2 && CurrentVersion < 2
		debug.Trace(self as String + ": Updating script to version 2", 0)
		_color = utility.RandomInt(0, 16777215)
	endIf
	if a_version >= 3 && CurrentVersion < 3
		debug.Trace(self as String + ": Updating script to version 3", 0)
		_myKey = input.GetMappedKey("Jump", 255)
	endIf
endFunction

function OnOptionHighlight(Int a_option)
{Called when the user highlights an option}

	if a_option == CDOSlider1
		self.SetInfoText("Base Reinforcements for Minor Capital sieges")
	elseIf a_option == CDOSlider2
		self.SetInfoText("Base reinforcements for Fort sieges")
	elseIf a_option == CDOSlider3
		self.SetInfoText("Base reinforcements for Major sieges")
	elseIf a_option == CDOSlider4
		self.SetInfoText("Current Imperial MURDERMAYHEM score")
	elseIf a_option == CDOSlider5
		self.SetInfoText("Current Stormcloak MURDERMAYHEM score")
	elseIf a_option == CDOSlider6
		self.SetInfoText("Chance for PARTY CRASHERS")
	elseIf a_option == _toggle1OID_B
		self.SetInfoText("Automatically wins the war for your side")
	endIf
endFunction

; Skipped compiler generated GetState
