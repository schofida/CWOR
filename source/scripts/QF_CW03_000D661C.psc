scriptName QF_CW03_000D661C extends Quest hidden

;-- Properties --------------------------------------
referencealias property Alias_Proventus auto
locationalias property Alias_WhiterunDragonsreach auto
referencealias property Alias_AxeBalgruufs auto
referencealias property Alias_ImperialFieldCO auto
referencealias property Alias_AxeUlfrics auto
referencealias property Alias_Irileth auto
referencealias property Alias_AxeHrongars auto
referencealias property Alias_Galmar auto
referencealias property Alias_BalgruufDead auto
faction property CWODefensiveFaction auto
referencealias property Alias_ImperialScoutEnsMarker auto
referencealias property Alias_MessageFromTullius auto
referencealias property Alias_Balgruuf auto
referencealias property Alias_Ulfric auto
referencealias property Alias_ImperialScout auto
referencealias property Alias_BalgruufAlive auto
referencealias property Alias_MapTableFloorMarker auto
referencealias property Alias_ImperialScoutStartMarker auto
referencealias property Alias_Message auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_22()

	Quest __temp = self as Quest
	cw03script kmyQuest = __temp as cw03script
	kmyQuest.CWs.CWSiegeS.setStage(1)
	Alias_ImperialFieldCO.getactorreference().removefromfaction(CWODefensiveFaction) ;CWO
	self.stop()
endFunction

function Fragment_12()

	Quest __temp = self as Quest
	cw03script kmyQuest = __temp as cw03script
	kmyQuest.CWs.CW01A.setStage(200)
	self.setStage(10)
endFunction

function Fragment_2()

	Quest __temp = self as Quest
	cw03script kmyQuest = __temp as cw03script
	self.setObjectiveCompleted(20, true)
	self.setObjectiveDisplayed(50, true, false)
	kmyQuest.CWOCurrentHold.SetValueInt(4) ;CWO
	kmyQuest.GivePlayerMessageToUlfric()
	if kmyQuest.CWs.PlayerAllegiance == 2
		kmyQuest.StartWhiterunAttack()
	endIf
endFunction

function Fragment_5()

	Quest __temp = self as Quest
	cw03script kmyQuest = __temp as cw03script
	self.setObjectiveCompleted(10, true)
	self.setObjectiveCompleted(11, true)
	kmyQuest.JarlTakesMessage()
endFunction

function Fragment_24()

	self.setObjectiveCompleted(150, true)
	utility.wait(8 as Float) ;CWO
	Alias_ImperialFieldCO.getactorreference().removefromfaction(CWODefensiveFaction) ;CWO
	self.stop()
endFunction

function Fragment_4()

	; Empty function
endFunction

function Fragment_13()

	Alias_ImperialScout.GetReference().Delete()
endFunction

function Fragment_25()

	Quest __temp = self as Quest
	cw03script kmyQuest = __temp as cw03script
endFunction

function Fragment_15()

	; Empty function
endFunction

; Skipped compiler generated GotoState

function Fragment_11()

	self.setObjectiveCompleted(100, true)
	self.setObjectiveDisplayed(150, true, false)
	Alias_ImperialFieldCO.getactorreference().Enable(false) ;CWO
	Alias_Balgruuf.GetReference().AddItem(Alias_Message.GetReference() as form, 1, false)
endFunction

function Fragment_21()

	Alias_Ulfric.getactorreference().EvaluatePackage()
	self.setObjectiveCompleted(225, true)
endFunction

function Fragment_19()

	Quest __temp = self as Quest
	cw03script kmyQuest = __temp as cw03script
	kmyQuest.CW03ToWarScene.Start()
	self.setObjectiveCompleted(50, true)
	self.setObjectiveDisplayed(225, true, false)
	Alias_Ulfric.GetReference().AddItem(Alias_Message.GetReference() as form, 1, false)
endFunction

function Fragment_9()

	Quest __temp = self as Quest
	cw03script kmyQuest = __temp as cw03script
	self.setObjectiveCompleted(50, true)
	self.setObjectiveDisplayed(100, true, false)
	kmyQuest.CWOCurrentHold.SetValueInt(4) ;CWO
	Alias_ImperialScout.GetReference().Enable(false)
	Alias_ImperialFieldCO.getactorreference().Enable(false) ;CWO
	Alias_ImperialScout.GetReference().MoveTo(Alias_ImperialScoutStartMarker.GetReference(), 0.000000, 0.000000, 0.000000, true)
	kmyQuest.CW03SiegeScene.Start()
endFunction

function Fragment_6()

	self.setObjectiveDisplayed(16, true, false)
endFunction

function Fragment_0()

	Quest __temp = self as Quest
	cw03script kmyQuest = __temp as cw03script
	Alias_ImperialFieldCO.getactorreference().addtofaction(CWODefensiveFaction) ;CWO
	if kmyQuest.CWs.PlayerAllegiance == 1
		self.setObjectiveDisplayed(10, true, false)
		kmyQuest.CWs.RalofRef.Disable(false)
	else
		self.setObjectiveDisplayed(11, true, false)
		kmyQuest.CWs.HadvarRef.Disable(false)
	endIf
	kmyQuest.GivePlayerMessageToWhiterun()
endFunction

function Fragment_17()

	Alias_ImperialScout.getactorreference().EvaluatePackage()
endFunction

; Skipped compiler generated GetState

function Fragment_3()

	Quest __temp = self as Quest
	cw03script kmyQuest = __temp as cw03script
	self.setStage(15)
	self.setObjectiveCompleted(11, true)
	self.setObjectiveCompleted(16, true)
	self.setObjectiveDisplayed(20, true, false)
	kmyQuest.MQ104OutroScene.stop()
	kmyQuest.CW03Scene.Start()
endFunction

function Fragment_18()

	Quest __temp = self as Quest
	cw03script kmyQuest = __temp as cw03script
	kmyQuest.CWs.CW01B.setStage(200)
	self.setStage(10)
endFunction
