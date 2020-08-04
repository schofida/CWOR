scriptName QF_CWEscapeCity_0007EA5D extends Quest hidden

;-- Properties --------------------------------------
referencealias property Alias_Citizen43 auto
referencealias property Alias_Citizen52 auto
referencealias property Alias_EscapeDoor auto
referencealias property Alias_ResolutionDefenderMarker9 auto
referencealias property Alias_EnemySoldier5 auto
referencealias property Alias_Citizen25 auto
referencealias property Alias_EnemySoldier1 auto
referencealias property Alias_Citizen69 auto
referencealias property Alias_ResolutionDefenderMarker5 auto
referencealias property Alias_Citizen58 auto
referencealias property Alias_Citizen29 auto
locationalias property Alias_City auto
referencealias property Alias_Citizen51 auto
referencealias property Alias_Citizen55 auto
referencealias property Alias_Citizen66 auto
referencealias property Alias_Citizen42 auto
referencealias property Alias_Citizen15 auto
referencealias property Alias_Citizen2 auto
referencealias property Alias_SonsEnable auto
referencealias property Alias_ResolutionEscapeFieldCOMarker auto
referencealias property Alias_Citizen13 auto
referencealias property Alias_Citizen28 auto
referencealias property Alias_Citizen44 auto
referencealias property Alias_ResolutionDefenderMarker4 auto
referencealias property Alias_Citizen61 auto
referencealias property Alias_Citizen23 auto
referencealias property Alias_Citizen9 auto
referencealias property Alias_Citizen22 auto
referencealias property Alias_ResolutionEscapeToggle auto
referencealias property Alias_Citizen63 auto
referencealias property Alias_Citizen18 auto
referencealias property Alias_FriendlySoldier7 auto
referencealias property Alias_Citizen45 auto
referencealias property Alias_ResolutionEscapeHouseCarlMarker auto
referencealias property Alias_Citizen21 auto
referencealias property Alias_ResolutionDefenderMarker12 auto
referencealias property Alias_ResolutionDefenderMarker10 auto
referencealias property Alias_ResolutionDefenderMarker11 auto
referencealias property Alias_Citizen30 auto
referencealias property Alias_ResolutionEscapeJarlMarker auto
referencealias property Alias_Steward auto
referencealias property Alias_Jarl auto
referencealias property Alias_Citizen4 auto
referencealias property Alias_Citizen41 auto
locationalias property Alias_CapitalHQ auto
referencealias property Alias_Citizen59 auto
referencealias property Alias_FriendlySoldier9 auto
referencealias property Alias_Citizen57 auto
referencealias property Alias_Citizen53 auto
referencealias property Alias_Citizen27 auto
referencealias property Alias_FriendlySoldier6 auto
referencealias property Alias_Citizen49 auto
referencealias property Alias_Citizen46 auto
referencealias property Alias_FriendlySoldier12 auto
referencealias property Alias_Citizen40 auto
referencealias property Alias_HouseCarl auto
referencealias property Alias_PatrolStartB auto
referencealias property Alias_ResolutionDefenderMarker1 auto
referencealias property Alias_EnemySoldier2 auto
referencealias property Alias_Citizen56 auto
referencealias property Alias_FriendlySoldier8 auto
referencealias property Alias_FriendlySoldier11 auto
referencealias property Alias_ResolutionDefenderMarker6 auto
referencealias property Alias_Citizen6 auto
referencealias property Alias_Citizen62 auto
referencealias property Alias_ImperialEnable auto
referencealias property Alias_EnemySoldier4 auto
referencealias property Alias_Citizen65 auto
referencealias property Alias_SpawnAttacker2 auto
referencealias property Alias_Citizen11 auto
referencealias property Alias_Citizen16 auto
referencealias property Alias_ResolutionDefenderMarker8 auto
referencealias property Alias_Citizen20 auto
referencealias property Alias_Citizen26 auto
referencealias property Alias_FriendlySoldier4 auto
referencealias property Alias_Citizen64 auto
referencealias property Alias_BattleCenterMarker auto
referencealias property Alias_PatrolStartA auto
referencealias property Alias_ResolutionDefenderMarker3 auto
referencealias property Alias_Citizen54 auto
referencealias property Alias_ResolutionDefenderMarker7 auto
referencealias property Alias_Citizen10 auto
referencealias property Alias_FriendlySoldier1 auto
referencealias property Alias_Citizen47 auto
referencealias property Alias_Citizen19 auto
referencealias property Alias_Citizen3 auto
referencealias property Alias_FieldCO auto
referencealias property Alias_Citizen7 auto
referencealias property Alias_Citizen24 auto
referencealias property Alias_Citizen68 auto
referencealias property Alias_Citizen17 auto
referencealias property Alias_ResolutionDefenderMarker2 auto
referencealias property Alias_EnemySoldier3 auto
referencealias property Alias_Citizen5 auto
referencealias property Alias_FriendlySoldier3 auto
referencealias property Alias_EnemySoldier6 auto
referencealias property Alias_Citizen50 auto
referencealias property Alias_ClutterEnableToggle auto
referencealias property Alias_Citizen8 auto
referencealias property Alias_FriendlySoldier2 auto
referencealias property Alias_Citizen70 auto
referencealias property Alias_Citizen14 auto
referencealias property Alias_Citizen48 auto
referencealias property Alias_Citizen67 auto
referencealias property Alias_SpawnAttacker1 auto
referencealias property Alias_Citizen1 auto
referencealias property Alias_Citizen12 auto
referencealias property Alias_FriendlySoldier5 auto
referencealias property Alias_FriendlySoldier10 auto
referencealias property Alias_Citizen60 auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_21()

	Quest __temp = self as Quest
	cwescapecity kmyQuest = __temp as cwescapecity
	if self.getStageDone(100) == false
		kmyQuest.CWCampaignObj.setStage(61)
	endIf
	self.stop()
endFunction

function Fragment_19()

	Quest __temp = self as Quest
	cwescapecity kmyQuest = __temp as cwescapecity
	kmyQuest.CWCampaignObj.setStage(60)
	self.stop()
endFunction

; Skipped compiler generated GetState

function Fragment_16()

	Alias_ResolutionEscapeToggle.getReference().disable(false)
	if Alias_ClutterEnableToggle.getReference()
		Alias_ClutterEnableToggle.getReference().disable(false)
	endIf
	self.UnregisterForUpdate()
	Alias_FriendlySoldier1.GetActorReference().DeleteWhenAble()
	Alias_FriendlySoldier2.GetActorReference().DeleteWhenAble()
	Alias_FriendlySoldier3.GetActorReference().DeleteWhenAble()
	Alias_FriendlySoldier4.GetActorReference().DeleteWhenAble()
	Alias_FriendlySoldier5.GetActorReference().DeleteWhenAble()
	Alias_FriendlySoldier6.GetActorReference().DeleteWhenAble()
	Alias_FriendlySoldier7.GetActorReference().DeleteWhenAble()
	Alias_FriendlySoldier8.GetActorReference().DeleteWhenAble()
	Alias_FriendlySoldier9.GetActorReference().DeleteWhenAble()
	Alias_FriendlySoldier10.GetActorReference().DeleteWhenAble()
	Alias_FriendlySoldier11.GetActorReference().DeleteWhenAble()
	Alias_FriendlySoldier12.GetActorReference().DeleteWhenAble()
	Alias_EnemySoldier1.GetActorReference().DeleteWhenAble()
	Alias_EnemySoldier2.GetActorReference().DeleteWhenAble()
	Alias_EnemySoldier3.GetActorReference().DeleteWhenAble()
	Alias_EnemySoldier4.GetActorReference().DeleteWhenAble()
	Alias_EnemySoldier5.GetActorReference().DeleteWhenAble()
	Alias_EnemySoldier6.GetActorReference().DeleteWhenAble()
endFunction

function Fragment_0()

	Quest __temp = self as Quest
	cwescapecity kmyQuest = __temp as cwescapecity
	self.SetObjectiveDisplayed(10, 1 as Bool, false)
	kmyQuest.CWs.pacifyAliasForSurrender(Alias_Jarl)
	kmyQuest.CWs.pacifyAliasForSurrender(Alias_HouseCarl)
	kmyQuest.CWs.pacifyAliasForSurrender(Alias_Steward)
	Alias_Jarl.getReference().moveto(Alias_ResolutionEscapeJarlMarker.getReference(), 0.000000, 0.000000, 0.000000, true)
	Alias_HouseCarl.getReference().moveto(Alias_ResolutionEscapeHouseCarlMarker.getReference(), 0.000000, 0.000000, 0.000000, true)
	kmyQuest.CWs.getRikkeOrGalmar(-1).moveto(Alias_ResolutionEscapeFieldCOMarker.getReference(), 0.000000, 0.000000, 0.000000, true)
	Alias_ResolutionEscapeToggle.getReference().Enable(false)
	if Alias_ClutterEnableToggle.getReference()
		Alias_ClutterEnableToggle.getReference().Enable(false)
	endIf
	Alias_ImperialEnable.getReference().disable(false)
	Alias_SonsEnable.getReference().disable(false)
	Alias_ResolutionDefenderMarker1.getReference().Enable(false)
	Alias_ResolutionDefenderMarker2.getReference().Enable(false)
	Alias_ResolutionDefenderMarker3.getReference().Enable(false)
	Alias_ResolutionDefenderMarker4.getReference().Enable(false)
	Alias_ResolutionDefenderMarker5.getReference().Enable(false)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier1, Alias_ResolutionDefenderMarker1.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier2, Alias_ResolutionDefenderMarker2.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier3, Alias_ResolutionDefenderMarker3.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier4, Alias_ResolutionDefenderMarker4.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier5, Alias_ResolutionDefenderMarker5.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier6, Alias_ResolutionDefenderMarker6.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier7, Alias_ResolutionDefenderMarker7.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier8, Alias_ResolutionDefenderMarker8.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier9, Alias_ResolutionDefenderMarker9.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier10, Alias_ResolutionDefenderMarker10.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier11, Alias_ResolutionDefenderMarker11.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierAlly(Alias_FriendlySoldier12, Alias_ResolutionDefenderMarker12.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierEnemy(Alias_EnemySoldier1, Alias_SpawnAttacker1.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierEnemy(Alias_EnemySoldier2, Alias_SpawnAttacker1.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierEnemy(Alias_EnemySoldier3, Alias_SpawnAttacker1.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierEnemy(Alias_EnemySoldier4, Alias_SpawnAttacker2.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierEnemy(Alias_EnemySoldier5, Alias_SpawnAttacker2.getReference(), false, false, true, 4, none)
	kmyQuest.CreateAliasedSoldierEnemy(Alias_EnemySoldier6, Alias_SpawnAttacker2.getReference(), false, false, true, 4, none)
	self.RegisterForUpdate(10 as Float)
	((self as Quest) as cwsiegepollplayerlocation).RegisterBattleCenterMarkerAndLocation(Alias_BattleCenterMarker.getReference(), Alias_City.GetLocation())
endFunction

; Skipped compiler generated GotoState
