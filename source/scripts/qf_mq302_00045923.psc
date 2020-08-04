scriptName QF_MQ302_00045923 extends Quest hidden

;-- Properties --------------------------------------
scene property CouncilScene5_S auto
{repeatable intro scene -- Ulfric demands concession}
scene property CouncilScene2a auto
{Imperials control Whiterun}
objectreference property CouncilSceneClutterMarker auto
scene property CouncilSceneRewardI auto
scene property CouncilScene5_TownRaided_I auto
referencealias property Alias_PlayerChair auto
referencealias property Alias_Einarth auto
referencealias property Alias_Tullius auto
referencealias property Alias_VignarStartMarker auto
referencealias property Alias_ElenwenStartMarker auto
locationalias property Alias_SonsMajorHoldCapital auto
cell property HighHrothgar auto
scene property CouncilSceneOutroA auto
{Imperials control Whiterun}
faction property MQ302CouncilFaction auto
locationalias property Alias_SonsMinorHold2Capital auto
referencealias property Alias_JarlStartMarker auto
locationalias property Alias_ImperialTownRaided auto
referencealias property Alias_Elisif auto
referencealias property Alias_Wulfgar auto
locationalias property Alias_ImperialMajorHoldCapital auto
locationalias property SonsTownRaided auto
{last Sons-owned town raided}
referencealias property Alias_BalgruufAlive auto
referencealias property Alias_TulliusStartMarker auto
referencealias property Alias_Hrongar auto
scene property CouncilScene1_I auto
{if Imperials have initial advantage}
Quest property CW auto
scene property CouncilSceneOutroB auto
{Sons control Whiterun}
referencealias property Alias_Elenwen auto
referencealias property Alias_Paarthurnax auto
locationalias property Alias_SonsMinorHoldCapital auto
Quest property MQ302FillAliases auto
locationalias property Alias_SonsTownRaided auto
referencealias property Alias_Ulfric auto
scene property CouncilScene3WS_UlfricMad auto
{Sons control Whiterun
Ulfric mad about terms}
locationalias property ImperialTownRaided auto
{last Imperial owned town raided}
referencealias property Alias_Esbern auto
scene property CouncilScene1_S auto
{Sons have initial advantage}
referencealias property Alias_Delphine auto
objectreference property DelphineNearCouncilMarker auto
referencealias property Alias_Jarl auto
locationalias property Alias_SonsMinorHold2 auto
scene property CouncilScene5_MinorHold_I auto
referencealias property Alias_RikkeStartMarker auto
referencealias property Alias_Balgruuf auto
locationalias property Alias_SonsMinorHold auto
scene property CouncilSceneElenwenStays auto
referencealias property Alias_Player auto
faction property PlayerFaction auto
faction property CrimeFactionGreybeard auto
scene property CouncilScene2b auto
{Sons control Whiterun}
referencealias property Alias_Vignar auto
scene property CouncilScene5_TownRaided_S auto
{Ulfric demands compensation for raided town}
locationalias property Alias_SonsMajorHold auto
scene property CouncilSceneElenwenLeaves auto
scene property MQ00EsbernDreamScene auto
faction property CWImperialFaction auto
scene property CouncilSceneRewardS auto
scene property CouncilScene3WS_TulliusMad auto
{Sons control Whiterun
Tullius mad about terms}
leveleditem property CWRankRewardSons auto
scene property CouncilScene auto
referencealias property Alias_Galmar auto
leveleditem property CWRankRewardImperial auto
faction property GovRuling auto
scene property CouncilSceneSwitchSidesS auto
{Sons want you to join their side}
scene property CouncilSceneBegin auto
referencealias property Alias_Arngeir auto
referencealias property Alias_DelphineStartMarker auto
faction property CWSonsFaction auto
Quest property MQ203 auto
scene property CouncilScene4 auto
{Esbern's speech about Alduin}
Quest property MQ202 auto
scene property CouncilSceneEnd auto
{terms are spelled out and both sides accept}
scene property CouncilScene3WI_TulliusMad auto
{Imperials control Whiterun
Tullius angry about terms}
referencealias property Alias_GalmarStartMarker auto
locationalias property Alias_ImperialMinorHoldCapital auto
referencealias property Alias_ArngeirStartMarker auto
scene property CouncilSceneSwitchSidesI auto
{Imperials want you to join their side}
locationalias property Alias_ImperialMinorHold2 auto
referencealias property Alias_EsbernStartMarker auto
locationalias property Alias_ImperialMinorHold2Capital auto
scene property CouncilScene5_I auto
{repeatable intro scene -- Tullius demands concession}
referencealias property Alias_UlfricStartMarker auto
scene property CouncilScene3WI_UlfricMad auto
{Imperials control Whiterun
Ulfric mad about terms}
locationalias property Alias_ImperialMajorHold auto
referencealias property Alias_Borri auto
Quest property MQ301 auto
locationalias property Alias_ImperialMinorHold auto
referencealias property Alias_Rikke auto
scene property CouncilScene5_MinorHold_S auto
{Ulfric demands another hold}

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_17()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	MQ302CouncilFaction.SetAlly(PlayerFaction, true, true)
	game.DisablePlayerControls(true, true, false, false, false, true, true, false, 0)
	Alias_Elenwen.GetActorRef().IgnoreFriendlyHits(true)
	Alias_Elisif.GetActorRef().IgnoreFriendlyHits(true)
	Alias_Tullius.GetActorRef().IgnoreFriendlyHits(true)
	Alias_Rikke.GetActorRef().IgnoreFriendlyHits(true)
	Alias_Esbern.GetActorRef().IgnoreFriendlyHits(true)
	Alias_Delphine.GetActorRef().IgnoreFriendlyHits(true)
	;USKP 2.0.2 - Sanity checks since these aliases may not fill due to Jarlship changes
	if( Alias_Balgruuf.GetActorReference() != None )
		Alias_Balgruuf.GetActorReference().IgnoreFriendlyHits(true)
	EndIf
	if( Alias_Vignar.GetActorReference() != None )
		Alias_Vignar.GetActorReference().IgnoreFriendlyHits(true)
	EndIf
	Alias_Galmar.GetActorRef().IgnoreFriendlyHits(true)
	Alias_Arngeir.GetActorRef().IgnoreFriendlyHits(true)
	Alias_Einarth.GetActorRef().IgnoreFriendlyHits(true)
	Alias_Borri.GetActorRef().IgnoreFriendlyHits(true)
	Alias_Wulfgar.GetActorRef().IgnoreFriendlyHits(true)
	game.GetPlayer().DispelAllSpells()
	game.GetPlayer().StopCombatAlarm()
	self.SetObjectiveCompleted(50, true)
	self.SetObjectiveDisplayed(60, true, false)
	kmyQuest.HideCWMiscObjectives = true
endFunction

function Fragment_111()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.StartLoopingConcessionScene()
endFunction

function Fragment_46()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	self.SetStage(140)
	if game.GetPlayer().IsInFaction(CWSonsFaction) == 0 as Bool
		kmyQuest.IncrementNegotiationDelta(1)
	else
		kmyQuest.IncrementNegotiationDelta(-1)
	endIf
endFunction

function Fragment_93()

	CouncilScene5_MinorHold_I.ForceStart()
	self.SetStage(200)
endFunction

function Fragment_57()

	; Empty function
endFunction

function Fragment_132()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	cwscript sCW = CW as cwscript
	if kmyQuest.KickOutFlag
		if sCW.playerAllegiance == 1
			sCW.SetPlayerAllegiance(sCW.iSons, 0)
			game.GetPlayer().AddtoFaction(kmyQuest.CWSonsFactionNPC)
		else
			sCW.SetPlayerAllegiance(sCW.iImperials, 0)
			game.GetPlayer().AddtoFaction(kmyQuest.CWImperialFactionNPC)
		endIf
	endIf
endFunction

function Fragment_150()

	; Empty function
endFunction

function Fragment_35()

	CouncilScene2b.ForceStart()
endFunction

function Fragment_124()

	self.Stop()
endFunction

function Fragment_126()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	game.EnablePlayerControls(true, true, true, true, true, true, true, true, 0)
	MQ302CouncilFaction.SetEnemy(PlayerFaction, true, true)
	Alias_Elenwen.GetActorRef().IgnoreFriendlyHits(false)
	Alias_Elisif.GetActorRef().IgnoreFriendlyHits(false)
	Alias_Tullius.GetActorRef().IgnoreFriendlyHits(false)
	Alias_Rikke.GetActorRef().IgnoreFriendlyHits(false)
	Alias_Esbern.GetActorRef().IgnoreFriendlyHits(false)
	Alias_Delphine.GetActorRef().IgnoreFriendlyHits(false)
	;USKP 2.0.2 - Sanity checks since these aliases may not fill due to Jarlship changes
	if( Alias_Balgruuf.GetActorReference() != None )
		Alias_Balgruuf.GetActorReference().IgnoreFriendlyHits(false)
	EndIf
	if( Alias_Vignar.GetActorReference() != None )
		Alias_Vignar.GetActorReference().IgnoreFriendlyHits(false)
	EndIf
	Alias_Galmar.GetActorRef().IgnoreFriendlyHits(false)
	Alias_Arngeir.GetActorRef().IgnoreFriendlyHits(false)
	Alias_Einarth.GetActorRef().IgnoreFriendlyHits(false)
	Alias_Borri.GetActorRef().IgnoreFriendlyHits(false)
	Alias_Wulfgar.GetActorRef().IgnoreFriendlyHits(false)
	cwscript sCW = CW as cwscript
	if sCW.OwnerWhiterun == 1
		CouncilSceneOutroA.ForceStart()
	else
		CouncilSceneOutroB.ForceStart()
	endIf
	self.SetObjectiveCompleted(60, true)
	MQ301.SetStage(50)
endFunction

function Fragment_29()

	self.SetStage(1)
	self.SetStage(15)
	self.SetStage(20)
	self.SetStage(30)
endFunction

; Skipped compiler generated GetState

function Fragment_6()

	self.SetObjectiveCompleted(10, true)
	self.SetObjectiveDisplayed(20, true, false)
	self.SetObjectiveDisplayed(30, true, false)
endFunction

function Fragment_114()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.IncrementNegotiationDelta(-1)
endFunction

function Fragment_88()

	CouncilScene5_TownRaided_I.ForceStart()
	self.SetStage(190)
endFunction

function Fragment_84()

	self.SetStage(5)
	CW.SetStage(2)
endFunction

function Fragment_97()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.TransferHoldControl()
endFunction

function Fragment_103()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.StartLoopingConcessionScene()
endFunction

function Fragment_102()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.IncrementNegotiationDelta(-1)
endFunction

function Fragment_14()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	if Alias_Vignar.GetActorRef().IsInFaction(GovRuling) == 0 as Bool
		Alias_Vignar.Clear()
	else
		Alias_Balgruuf.Clear()
	endIf
	kmyQuest.MoveToCouncil(Alias_Elenwen, Alias_ElenwenStartMarker.GetRef())
	kmyQuest.MoveToCouncil(Alias_Galmar, Alias_GalmarStartMarker.GetRef())
	kmyQuest.MoveToCouncil(Alias_Balgruuf, Alias_JarlStartMarker.GetRef())
	kmyQuest.MoveToCouncil(Alias_Vignar, Alias_VignarStartMarker.GetRef())
	kmyQuest.MoveToCouncil(Alias_Rikke, Alias_RikkeStartMarker.GetRef())
	kmyQuest.MoveToCouncil(Alias_Tullius, Alias_TulliusStartMarker.GetRef())
	kmyQuest.MoveToCouncil(Alias_Ulfric, Alias_UlfricStartMarker.GetRef())
	kmyQuest.MoveToCouncil(Alias_Elisif, Alias_JarlStartMarker.GetRef())
	CrimeFactionGreybeard.SetPlayerEnemy(false)
	kmyQuest.SetNegotiationLocations()
	cwscript sCW = CW as cwscript
	if sCW.LastLocAttackedByImperials
		Alias_SonsTownRaided.ForceLocationTo(sCW.LastLocAttackedByImperials)
	endIf
	if sCW.LastLocAttackedBySons
		Alias_ImperialTownRaided.ForceLocationTo(sCW.LastLocAttackedBySons)
	endIf
endFunction

function Fragment_24()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.IncrementNegotiationDelta(1)
	self.SetStage(80)
endFunction

function Fragment_87()

	; Empty function
endFunction

function Fragment_113()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.IncrementNegotiationDelta(1)
endFunction

function Fragment_4()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	self.SetObjectiveDisplayed(40, true, false)
	if MQ00EsbernDreamScene.IsPlaying()
		MQ00EsbernDreamScene.Stop()
	endIf
	CouncilScene.Start()
	Alias_Jarl.RegisterForUpdate(5 as Float)
	if !Alias_Delphine.GetRef().IsNearPlayer()
		Alias_Delphine.GetRef().MoveTo(Alias_DelphineStartMarker.GetRef(), 0.000000, 0.000000, 0.000000, true)
	endIf
	if !Alias_Esbern.GetRef().IsNearPlayer()
		Alias_Esbern.GetRef().MoveTo(Alias_EsbernStartMarker.GetRef(), 0.000000, 0.000000, 0.000000, true)
	endIf
	CW.SetStage(255)
	kmyQuest.HideCWMiscObjectives = true
	MQ302FillAliases.Start()
	CouncilSceneClutterMarker.Enable(false)
endFunction

function Fragment_85()

	self.SetStage(82)
	self.SetStage(100)
endFunction

function Fragment_134()

	CouncilSceneEnd.ForceStart()
endFunction

function Fragment_44()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	self.SetStage(140)
	if game.GetPlayer().IsInFaction(CWSonsFaction) == 0 as Bool
		kmyQuest.IncrementNegotiationDelta(2)
	else
		kmyQuest.IncrementNegotiationDelta(-2)
	endIf
endFunction

function Fragment_116()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	cwscript sCW = CW as cwscript
	kmyQuest.sideFavored = kmyQuest.NegotiationDelta - kmyQuest.StartingNegotiationDelta.GetValueInt()
	scene sceneToStart = none
	if game.GetPlayer().IsInFaction(CWImperialFaction)
		if self.GetStageDone(141) == 0 as Bool && kmyQuest.CityToSwitch == 2
			sceneToStart = CouncilSceneRewardI
		endIf
		if self.GetStageDone(142) && kmyQuest.CityToSwitch == 1
			sceneToStart = CouncilSceneRewardI
		endIf
		if sceneToStart == none
			if kmyQuest.sideFavored <= 0
				if kmyQuest.sideFavored <= -2
					kmyQuest.KickOutFlag = true
				endIf
				sceneToStart = CouncilSceneSwitchSidesS
			endIf
		endIf
	elseIf game.GetPlayer().IsInFaction(CWSonsFaction)
		if self.GetStageDone(141) == 0 as Bool && kmyQuest.CityToSwitch == 1
			sceneToStart = CouncilSceneRewardS
		endIf
		if self.GetStageDone(142) && kmyQuest.CityToSwitch == 2
			sceneToStart = CouncilSceneRewardS
		endIf
		if sceneToStart == none
			if kmyQuest.sideFavored >= 0
				if kmyQuest.sideFavored >= 2
					kmyQuest.KickOutFlag = true
				endIf
				sceneToStart = CouncilSceneSwitchSidesI
			endIf
		endIf
	endIf
	if sceneToStart
		sceneToStart.ForceStart()
	else
		self.SetStage(300)
	endIf
endFunction

function Fragment_33()

	CouncilScene2a.ForceStart()
endFunction

function Fragment_154()

	game.GetPlayer().AddItem(CWRankRewardImperial as form, 1, false)
	self.SetStage(285)
endFunction

function Fragment_78()

	; Empty function
endFunction

function Fragment_148()

	CouncilScene1_I.ForceStart()
	self.SetStage(105)
endFunction

function Fragment_37()

	; Empty function
endFunction

function Fragment_94()

	CouncilScene5_MinorHold_S.ForceStart()
	self.SetStage(200)
endFunction

function Fragment_31()

	if self.GetStageDone(81) == 1 as Bool
		CouncilSceneElenwenLeaves.ForceStart()
	else
		CouncilSceneElenwenStays.ForceStart()
	endIf
endFunction

function Fragment_92()

	; Empty function
endFunction

function Fragment_107()

	CouncilScene5_S.ForceStart()
endFunction

function Fragment_10()

	self.SetStage(40)
endFunction

function Fragment_159()

	self.CompleteAllObjectives()
	self.Stop()
	MQ301.SetStage(40)
endFunction

function Fragment_71()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	if game.GetPlayer().IsInFaction(CWSonsFaction) == 0 as Bool
		if kmyQuest.NegotiationDelta > 0
			self.SetStage(152)
			CouncilScene3WI_UlfricMad.ForceStart()
		else
			self.SetStage(151)
			CouncilScene3WI_TulliusMad.ForceStart()
		endIf
	elseIf kmyQuest.NegotiationDelta >= 0
		self.SetStage(152)
		CouncilScene3WS_UlfricMad.ForceStart()
	else
		self.SetStage(151)
		CouncilScene3WS_TulliusMad.ForceStart()
	endIf
endFunction

function Fragment_100()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.IncrementNegotiationDelta(1)
endFunction

function Fragment_155()

	game.GetPlayer().AddItem(CWRankRewardSons as form, 1, false)
	self.SetStage(285)
endFunction

function Fragment_157()

	; Empty function
endFunction

function Fragment_0()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.bImperialCouncilBlocked = true
	self.SetObjectiveCompleted(20, true)
endFunction

function Fragment_90()

	CouncilScene5_TownRaided_S.ForceStart()
	self.SetStage(190)
endFunction

function Fragment_140()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	CouncilScene1_S.ForceStart()
	self.SetStage(105)
endFunction

function Fragment_7()

	MQ301.SetStage(1)
	MQ301.SetStage(15)
	MQ301.SetStage(20)
	MQ301.SetStage(30)
	self.SetStage(10)
	MQ202.SetStage(200)
	MQ203.SetStage(240)
endFunction

function Fragment_21()

	; Empty function
endFunction

function Fragment_86()

	self.SetStage(7)
	self.SetStage(142)
	self.SetStage(150)
endFunction

function Fragment_152()

	; Empty function
endFunction

function Fragment_128()

	; Empty function
endFunction

function Fragment_144()

	self.SetObjectiveCompleted(40, true)
	self.SetObjectiveDisplayed(50, true, false)
endFunction

function Fragment_130()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
endFunction

function Fragment_41()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	self.SetStage(140)
	if game.GetPlayer().IsInFaction(CWSonsFaction) == 0 as Bool
		kmyQuest.IncrementNegotiationDelta(2)
	else
		kmyQuest.IncrementNegotiationDelta(-2)
	endIf
endFunction

function Fragment_80()

	CouncilScene4.ForceStart()
endFunction

function Fragment_26()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.IncrementNegotiationDelta(-1)
	self.SetStage(80)
endFunction

function Fragment_2()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.bStormcloakCouncilBlocked = true
	self.SetObjectiveCompleted(30, true)
endFunction

function Fragment_136()

	self.SetStage(1)
endFunction

; Skipped compiler generated GotoState

function Fragment_95()

	; Empty function
endFunction

function Fragment_77()

	; Empty function
endFunction

function Fragment_19()

	; Empty function
endFunction

function Fragment_12()

	self.SetObjectiveDisplayed(10, true, false)
	Alias_Jarl.RegisterForUpdate(5 as Float)
endFunction

function Fragment_145()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	kmyQuest.MoveHome(Alias_Elenwen)
	kmyQuest.MoveHome(Alias_Elisif)
	kmyQuest.MoveHome(Alias_Galmar)
	kmyQuest.MoveHome(Alias_Ulfric)
	kmyQuest.MoveHome(Alias_Rikke)
	kmyQuest.MoveHome(Alias_Tullius)
	kmyQuest.MoveHome(Alias_Balgruuf)
	kmyQuest.MoveHome(Alias_Vignar)
endFunction

function Fragment_8()

	self.SetStage(40)
endFunction

function Fragment_105()

	CouncilScene5_I.ForceStart()
endFunction

function Fragment_39()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	if game.GetPlayer().IsInFaction(CWSonsFaction) == 0 as Bool
		kmyQuest.IncrementNegotiationDelta(-2)
		kmyQuest.CityToSwitch = 1
	else
		kmyQuest.IncrementNegotiationDelta(2)
		kmyQuest.CityToSwitch = 2
	endIf
endFunction

function Fragment_142()

	CouncilSceneBegin.ForceStart()
	CouncilScene.Stop()
	if Alias_Delphine.GetRef().GetParentCell() != HighHrothgar
		Alias_Delphine.TryToMoveTo(DelphineNearCouncilMarker)
	endIf
	if Alias_Esbern.GetRef().GetParentCell() != HighHrothgar
		Alias_Esbern.TryToMoveTo(DelphineNearCouncilMarker)
	endIf
endFunction

function Fragment_82()

	Quest __temp = self as Quest
	mq302script kmyQuest = __temp as mq302script
	if game.GetPlayer().IsInFaction(CWSonsFaction) == 0 as Bool
		if kmyQuest.NegotiationDelta > 0
			self.SetStage(182)
		else
			self.SetStage(181)
		endIf
	elseIf kmyQuest.NegotiationDelta >= 0
		self.SetStage(182)
	else
		self.SetStage(181)
	endIf
endFunction
