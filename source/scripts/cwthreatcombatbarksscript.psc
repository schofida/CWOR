scriptName CWThreatCombatBarksScript extends Quest conditional

;-- Properties --------------------------------------
referencealias property ImperialTowerMage auto
keyword property CW3MissileClose auto
referencealias property ImperialWallMage auto
referencealias property SonsTower auto
keyword property CW5MissileClose auto
referencealias property SonsWallArcher auto
keyword property CW4MissileClose auto
referencealias property ImperialWallArcher auto
keyword property CW3MissileWide auto
referencealias property SonsWallMage auto
referencealias property ImperialTower auto
referencealias property SonsTree auto
referencealias property ImperialWindowArcher auto
referencealias property ImperialBridge auto
referencealias property SonsWindowArcher auto
referencealias property ImperialWall auto
referencealias property SonsStables auto
keyword property CW1MeleeWide auto
referencealias property ImperialRock auto
referencealias property ImperialFence auto
cwscript property CWs auto
{BASE OBJECT - pointer to CWScript on CW quest}
referencealias property SonsWall auto
referencealias property SonsWindow auto
referencealias property ImperialWindow auto
keyword property CW5MissileWide auto
keyword property CW5MeleeWide auto
referencealias property SonsTowerMage auto
referencealias property ImperialTree auto
referencealias property ImperialWindowMage auto
referencealias property SonsFenceMage auto
keyword property CW1MissileClose auto
referencealias property ImperialHouse auto
keyword property CW4MeleeWide auto
referencealias property SonsRock auto
referencealias property ImperialFenceArcher auto
keyword property CW5MeleeClose auto
keyword property CW4MeleeClose auto
keyword property CW3MeleeWide auto
keyword property CW3MeleeClose auto
keyword property CW2MissileWide auto
keyword property CW2MissileClose auto
referencealias property SonsBridge auto
keyword property CW2MeleeClose auto
referencealias property ImperialFenceMage auto
referencealias property SonsTowerArcher auto
keyword property CW1MissileWide auto
keyword property CW1MeleeClose auto
referencealias property SonsWindowMage auto
referencealias property ImperialTowerArcher auto
referencealias property ImperialStables auto
keyword property CW2MeleeWide auto
referencealias property SonsFence auto
referencealias property SonsHouse auto
referencealias property SonsFenceArcher auto
keyword property CW4MissileWide auto

;-- Variables ---------------------------------------
Int BattlePhaseToStopBarking = 6

;-- Functions ---------------------------------------

function ProcessTriggerActorLeaving(Actor TriggerActor)

	Int ActorAllegiance = CWs.GetActorAllgeiance(TriggerActor)
	if ActorAllegiance == CWs.iImperials
		self.ClearAliasIfActorIsInIt(ImperialBridge, TriggerActor, CWs.CWThreatBridgeImperial)
		self.ClearAliasIfActorIsInIt(ImperialFence, TriggerActor, CWs.CWThreatFenceImperial)
		self.ClearAliasIfActorIsInIt(ImperialFenceArcher, TriggerActor, CWs.CWThreatFenceImperialArcher)
		self.ClearAliasIfActorIsInIt(ImperialFenceMage, TriggerActor, CWs.CWThreatFenceImperialMage)
		self.ClearAliasIfActorIsInIt(ImperialHouse, TriggerActor, CWs.CWThreatHouseImperial)
		self.ClearAliasIfActorIsInIt(ImperialRock, TriggerActor, CWs.CWThreatRockImperial)
		self.ClearAliasIfActorIsInIt(ImperialStables, TriggerActor, CWs.CWThreatStablesImperial)
		self.ClearAliasIfActorIsInIt(ImperialTower, TriggerActor, CWs.CWThreatTowerImperial)
		self.ClearAliasIfActorIsInIt(ImperialTowerArcher, TriggerActor, CWs.CWThreatTowerImperialArcher)
		self.ClearAliasIfActorIsInIt(ImperialTowerMage, TriggerActor, CWs.CWThreatTowerImperialMage)
		self.ClearAliasIfActorIsInIt(ImperialTree, TriggerActor, CWs.CWThreatTreeImperial)
		self.ClearAliasIfActorIsInIt(ImperialWall, TriggerActor, CWs.CWThreatWallImperial)
		self.ClearAliasIfActorIsInIt(ImperialWallArcher, TriggerActor, CWs.CWThreatWallImperialArcher)
		self.ClearAliasIfActorIsInIt(ImperialWallMage, TriggerActor, CWs.CWThreatWallImperialMage)
		self.ClearAliasIfActorIsInIt(ImperialWindow, TriggerActor, CWs.CWThreatWindowImperial)
		self.ClearAliasIfActorIsInIt(ImperialWindowArcher, TriggerActor, CWs.CWThreatWindowImperialArcher)
		self.ClearAliasIfActorIsInIt(ImperialWindowMage, TriggerActor, CWs.CWThreatWindowImperialMage)
	elseIf ActorAllegiance == CWs.iSons
		self.ClearAliasIfActorIsInIt(SonsBridge, TriggerActor, CWs.CWThreatBridgeSons)
		self.ClearAliasIfActorIsInIt(SonsFence, TriggerActor, CWs.CWThreatFenceSons)
		self.ClearAliasIfActorIsInIt(SonsFenceArcher, TriggerActor, CWs.CWThreatFenceSonsArcher)
		self.ClearAliasIfActorIsInIt(SonsFenceMage, TriggerActor, CWs.CWThreatFenceSonsMage)
		self.ClearAliasIfActorIsInIt(SonsHouse, TriggerActor, CWs.CWThreatHouseSons)
		self.ClearAliasIfActorIsInIt(SonsRock, TriggerActor, CWs.CWThreatRockSons)
		self.ClearAliasIfActorIsInIt(SonsStables, TriggerActor, CWs.CWThreatStablesSons)
		self.ClearAliasIfActorIsInIt(SonsTower, TriggerActor, CWs.CWThreatTowerSons)
		self.ClearAliasIfActorIsInIt(SonsTowerArcher, TriggerActor, CWs.CWThreatTowerSonsArcher)
		self.ClearAliasIfActorIsInIt(SonsTowerMage, TriggerActor, CWs.CWThreatTowerSonsMage)
		self.ClearAliasIfActorIsInIt(SonsTree, TriggerActor, CWs.CWThreatTreeSons)
		self.ClearAliasIfActorIsInIt(SonsWall, TriggerActor, CWs.CWThreatWallSons)
		self.ClearAliasIfActorIsInIt(SonsWallArcher, TriggerActor, CWs.CWThreatWallSonsArcher)
		self.ClearAliasIfActorIsInIt(SonsWallMage, TriggerActor, CWs.CWThreatWallSonsMage)
		self.ClearAliasIfActorIsInIt(SonsWindow, TriggerActor, CWs.CWThreatWindowSons)
		self.ClearAliasIfActorIsInIt(SonsWindowArcher, TriggerActor, CWs.CWThreatWindowSonsArcher)
		self.ClearAliasIfActorIsInIt(SonsWindowMage, TriggerActor, CWs.CWThreatWindowSonsMage)
	endIf
endFunction

function ProcessTriggerActor(Actor TriggerActor, Float BattlePhase, Bool Bridge, Bool Fence, Bool House, Bool Rock, Bool Stables, Bool Tower, Bool Tree, Bool Wall, Bool Window)
{Trigger calls this function, passing in it's reference. We decide what do to with it.}

	GlobalVariable FactionTypeRoleGlobal
	GlobalVariable FactionTypeGlobal
	referencealias FactionTypeRoleAlias
	referencealias FactionTypeAlias
	if BattlePhase >= BattlePhaseToStopBarking as Float
		return 
	endIf
	Int ActorAllegiance = CWs.GetActorAllgeiance(TriggerActor)
	if ActorAllegiance == CWs.iImperials
		if Bridge
			FactionTypeAlias = ImperialBridge
			FactionTypeGlobal = CWs.CWThreatBridgeImperial
		elseIf Fence
			FactionTypeAlias = ImperialFence
			FactionTypeGlobal = CWs.CWThreatFenceImperial
			FactionTypeRoleAlias = self.determineRoleAlias(TriggerActor, BattlePhase, ImperialFenceArcher, ImperialFenceMage)
			FactionTypeRoleGlobal = self.determineRoleGlobal(TriggerActor, BattlePhase, CWs.CWThreatFenceImperialArcher, CWs.CWThreatFenceImperialMage)
		elseIf House
			FactionTypeAlias = ImperialHouse
			FactionTypeGlobal = CWs.CWThreatHouseImperial
		elseIf Rock
			FactionTypeAlias = ImperialRock
			FactionTypeGlobal = CWs.CWThreatRockImperial
		elseIf Stables
			FactionTypeAlias = ImperialStables
			FactionTypeGlobal = CWs.CWThreatStablesImperial
		elseIf Tower
			FactionTypeAlias = ImperialTower
			FactionTypeGlobal = CWs.CWThreatTowerImperial
			FactionTypeRoleAlias = self.determineRoleAlias(TriggerActor, BattlePhase, ImperialTowerArcher, ImperialTowerMage)
			FactionTypeRoleGlobal = self.determineRoleGlobal(TriggerActor, BattlePhase, CWs.CWThreatTowerImperialArcher, CWs.CWThreatTowerImperialMage)
		elseIf Tree
			FactionTypeAlias = ImperialTree
			FactionTypeGlobal = CWs.CWThreatTreeImperial
		elseIf Wall
			FactionTypeAlias = ImperialWall
			FactionTypeGlobal = CWs.CWThreatWallImperial
			FactionTypeRoleAlias = self.determineRoleAlias(TriggerActor, BattlePhase, ImperialWallArcher, ImperialWallMage)
			FactionTypeRoleGlobal = self.determineRoleGlobal(TriggerActor, BattlePhase, CWs.CWThreatWallImperialArcher, CWs.CWThreatWallImperialMage)
		elseIf Window
			FactionTypeAlias = ImperialWindow
			FactionTypeGlobal = CWs.CWThreatWindowImperial
			FactionTypeRoleAlias = self.determineRoleAlias(TriggerActor, BattlePhase, ImperialWindowArcher, ImperialWindowMage)
			FactionTypeRoleGlobal = self.determineRoleGlobal(TriggerActor, BattlePhase, CWs.CWThreatWindowImperialArcher, CWs.CWThreatWindowImperialMage)
		endIf
	elseIf ActorAllegiance == CWs.iSons
		if Bridge
			FactionTypeAlias = SonsBridge
			FactionTypeGlobal = CWs.CWThreatBridgeSons
		elseIf Fence
			FactionTypeAlias = SonsFence
			FactionTypeGlobal = CWs.CWThreatFenceSons
			FactionTypeRoleAlias = self.determineRoleAlias(TriggerActor, BattlePhase, SonsFenceArcher, SonsFenceMage)
			FactionTypeRoleGlobal = self.determineRoleGlobal(TriggerActor, BattlePhase, CWs.CWThreatFenceSonsArcher, CWs.CWThreatFenceSonsMage)
		elseIf House
			FactionTypeAlias = SonsHouse
			FactionTypeGlobal = CWs.CWThreatHouseSons
		elseIf Rock
			FactionTypeAlias = SonsRock
			FactionTypeGlobal = CWs.CWThreatRockSons
		elseIf Stables
			FactionTypeAlias = SonsStables
			FactionTypeGlobal = CWs.CWThreatStablesSons
		elseIf Tower
			FactionTypeAlias = SonsTower
			FactionTypeGlobal = CWs.CWThreatTowerSons
			FactionTypeRoleAlias = self.determineRoleAlias(TriggerActor, BattlePhase, SonsTowerArcher, SonsTowerMage)
			FactionTypeRoleGlobal = self.determineRoleGlobal(TriggerActor, BattlePhase, CWs.CWThreatTowerSonsArcher, CWs.CWThreatTowerSonsMage)
		elseIf Tree
			FactionTypeAlias = SonsTree
			FactionTypeGlobal = CWs.CWThreatTreeSons
		elseIf Wall
			FactionTypeAlias = SonsWall
			FactionTypeGlobal = CWs.CWThreatWallSons
			FactionTypeRoleAlias = self.determineRoleAlias(TriggerActor, BattlePhase, SonsWallArcher, SonsWallMage)
			FactionTypeRoleGlobal = self.determineRoleGlobal(TriggerActor, BattlePhase, CWs.CWThreatWallSonsArcher, CWs.CWThreatWallSonsMage)
		elseIf Window
			FactionTypeAlias = SonsWindow
			FactionTypeGlobal = CWs.CWThreatWindowSons
			FactionTypeRoleAlias = self.determineRoleAlias(TriggerActor, BattlePhase, SonsWindowArcher, SonsWindowMage)
			FactionTypeRoleGlobal = self.determineRoleGlobal(TriggerActor, BattlePhase, CWs.CWThreatWindowSonsArcher, CWs.CWThreatWindowSonsMage)
		endIf
	endIf
	if BattlePhase == CWs.CWBattlePhase.GetValue()
		;USKP 2.0.4 - It appears possible for this TriggerActor to be NULL somehow.
		if( TriggerActor == None )
			debug.TraceStack( Self+" Error: TriggerActor is NULL. Please report to the USKP team with a copy of the log surrounding this notice." )
		ElseIf FactionTypeAlias
			FactionTypeAlias.ForceRefTo(TriggerActor)
			FactionTypeGlobal.setValue(1)
		EndIf
		if FactionTypeRoleAlias
			FactionTypeRoleAlias.ForceRefTo(TriggerActor as objectreference)
			FactionTypeRoleGlobal.setValue(1 as Float)
		endIf
	endIf
endFunction

; Skipped compiler generated GetState

Bool function isMage(Actor ActorToCheck, Float BattlePhase)

	Bool returnVal
	if BattlePhase == 1 as Float && (ActorToCheck.GetLinkedRef(CW1MissileClose) as Bool || ActorToCheck.GetLinkedRef(CW1MissileWide) as Bool)
		returnVal = true
	elseIf BattlePhase == 2 as Float && (ActorToCheck.GetLinkedRef(CW2MissileClose) as Bool || ActorToCheck.GetLinkedRef(CW2MissileWide) as Bool)
		returnVal = true
	elseIf BattlePhase == 3 as Float && (ActorToCheck.GetLinkedRef(CW3MissileClose) as Bool || ActorToCheck.GetLinkedRef(CW3MissileWide) as Bool)
		returnVal = true
	elseIf BattlePhase == 4 as Float && (ActorToCheck.GetLinkedRef(CW4MissileClose) as Bool || ActorToCheck.GetLinkedRef(CW4MissileWide) as Bool)
		returnVal = true
	elseIf BattlePhase == 5 as Float && (ActorToCheck.GetLinkedRef(CW5MissileClose) as Bool || ActorToCheck.GetLinkedRef(CW5MissileWide) as Bool)
		returnVal = true
	endIf
	return returnVal
endFunction

Bool function isArcher(Actor ActorToCheck, Float BattlePhase)

	Bool returnVal
	if BattlePhase == 1 as Float && (ActorToCheck.GetLinkedRef(CW1MissileClose) as Bool || ActorToCheck.GetLinkedRef(CW1MissileWide) as Bool)
		returnVal = true
	elseIf BattlePhase == 2 as Float && (ActorToCheck.GetLinkedRef(CW2MissileClose) as Bool || ActorToCheck.GetLinkedRef(CW2MissileWide) as Bool)
		returnVal = true
	elseIf BattlePhase == 3 as Float && (ActorToCheck.GetLinkedRef(CW3MissileClose) as Bool || ActorToCheck.GetLinkedRef(CW3MissileWide) as Bool)
		returnVal = true
	elseIf BattlePhase == 4 as Float && (ActorToCheck.GetLinkedRef(CW4MissileClose) as Bool || ActorToCheck.GetLinkedRef(CW4MissileWide) as Bool)
		returnVal = true
	elseIf BattlePhase == 5 as Float && (ActorToCheck.GetLinkedRef(CW5MissileClose) as Bool || ActorToCheck.GetLinkedRef(CW5MissileWide) as Bool)
		returnVal = true
	endIf
	return returnVal
endFunction

function ClearAliasIfActorIsInIt(referencealias AliasToCheck, Actor ActorToCheck, GlobalVariable GlobalToClear)

	if AliasToCheck.GetReference() == ActorToCheck as objectreference
		GlobalToClear.setValue(0 as Float)
		AliasToCheck.Clear()
	endIf
endFunction

function RegisterBattlePhaseChanged()

	CWs.CWThreatBridgeImperial.setValue(0 as Float)
	CWs.CWThreatBridgeSons.setValue(0 as Float)
	CWs.CWThreatFenceImperial.setValue(0 as Float)
	CWs.CWThreatFenceImperialArcher.setValue(0 as Float)
	CWs.CWThreatFenceImperialMage.setValue(0 as Float)
	CWs.CWThreatFenceSons.setValue(0 as Float)
	CWs.CWThreatFenceSonsArcher.setValue(0 as Float)
	CWs.CWThreatFenceSonsMage.setValue(0 as Float)
	CWs.CWThreatHouseImperial.setValue(0 as Float)
	CWs.CWThreatHouseSons.setValue(0 as Float)
	CWs.CWThreatRockImperial.setValue(0 as Float)
	CWs.CWThreatRockSons.setValue(0 as Float)
	CWs.CWThreatStablesImperial.setValue(0 as Float)
	CWs.CWThreatStablesSons.setValue(0 as Float)
	CWs.CWThreatTowerImperial.setValue(0 as Float)
	CWs.CWThreatTowerImperialArcher.setValue(0 as Float)
	CWs.CWThreatTowerImperialMage.setValue(0 as Float)
	CWs.CWThreatTowerSons.setValue(0 as Float)
	CWs.CWThreatTowerSonsArcher.setValue(0 as Float)
	CWs.CWThreatTowerSonsMage.setValue(0 as Float)
	CWs.CWThreatTreeImperial.setValue(0 as Float)
	CWs.CWThreatTreeSons.setValue(0 as Float)
	CWs.CWThreatWallImperial.setValue(0 as Float)
	CWs.CWThreatWallImperialArcher.setValue(0 as Float)
	CWs.CWThreatWallImperialMage.setValue(0 as Float)
	CWs.CWThreatWallSons.setValue(0 as Float)
	CWs.CWThreatWallSonsArcher.setValue(0 as Float)
	CWs.CWThreatWallSonsMage.setValue(0 as Float)
	CWs.CWThreatWindowImperial.setValue(0 as Float)
	CWs.CWThreatWindowImperialArcher.setValue(0 as Float)
	CWs.CWThreatWindowImperialMage.setValue(0 as Float)
	CWs.CWThreatWindowSons.setValue(0 as Float)
	CWs.CWThreatWindowSonsArcher.setValue(0 as Float)
	CWs.CWThreatWindowSonsMage.setValue(0 as Float)
	ImperialBridge.Clear()
	ImperialFence.Clear()
	ImperialFenceArcher.Clear()
	ImperialFenceMage.Clear()
	ImperialHouse.Clear()
	ImperialRock.Clear()
	ImperialStables.Clear()
	ImperialTower.Clear()
	ImperialTowerArcher.Clear()
	ImperialTowerMage.Clear()
	ImperialTree.Clear()
	ImperialWall.Clear()
	ImperialWallArcher.Clear()
	ImperialWallMage.Clear()
	ImperialWindow.Clear()
	ImperialWindowArcher.Clear()
	ImperialWindowMage.Clear()
	SonsBridge.Clear()
	SonsFence.Clear()
	SonsFenceArcher.Clear()
	SonsFenceMage.Clear()
	SonsHouse.Clear()
	SonsRock.Clear()
	SonsStables.Clear()
	SonsTower.Clear()
	SonsTowerArcher.Clear()
	SonsTowerMage.Clear()
	SonsTree.Clear()
	SonsWall.Clear()
	SonsWallArcher.Clear()
	SonsWallMage.Clear()
	SonsWindow.Clear()
	SonsWindowArcher.Clear()
	SonsWindowMage.Clear()
endFunction

GlobalVariable function determineRoleGlobal(Actor ActorToCheck, Float BattlePhase, GlobalVariable TypeArcherGlobal, GlobalVariable TypeMageGlobal)

	if self.isArcher(ActorToCheck, BattlePhase)
		return TypeArcherGlobal
	elseIf self.isMage(ActorToCheck, BattlePhase)
		return TypeMageGlobal
	else
		return none
	endIf
endFunction

; Skipped compiler generated GotoState

referencealias function determineRoleAlias(Actor ActorToCheck, Float BattlePhase, referencealias TypeArcherAlias, referencealias TypeMageAlias)

	if self.isArcher(ActorToCheck, BattlePhase)
		return TypeArcherAlias
	elseIf self.isMage(ActorToCheck, BattlePhase)
		return TypeMageAlias
	else
		return none
	endIf
endFunction
