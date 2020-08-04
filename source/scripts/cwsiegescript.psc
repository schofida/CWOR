scriptName CWSiegeScript extends Quest conditional
{Extends Quest}

;-- Properties --------------------------------------
globalvariable property CWStateAttackStarted auto
scene property CWSiegeWhiterunDefendedScene auto
referencealias property CWSiegeObjObjective4A auto
objectreference property TextReplaceDEFENSE auto
objectreference property TextReplaceATTACK auto
explosion property CWCatapultExp auto
referencealias property CWSiegeObjObjective4B auto
Bool property WasThisAnAttack auto hidden
globalvariable property CWStateAttackerLowReinforcements auto
Int property CWOLeaderRandomizer auto
Bool property CWOAttack auto
referencealias property CWReservationsIrileth auto
Quest property CWPostWhiterunObj auto
locationalias property Hold auto
Quest property CWOArmorDisguises auto
Bool property IsSpecialGeneral auto
Int property AMBDistantBattleSoundInstance auto
{Don't assign a number, gets one when the sound is played as a way to refer to it}
leveledactor property CWOSonsList auto
Bool property AttackersHaveWon = false auto conditional
musictype property MUSCombatCivilWar auto
Int property CWOFailure auto
Int property CurrentCity auto conditional
{Gets set when CWSiege starts:
1 = Solitude
2 = Markarth
4 = Whiterun
8 = Windhelm
9 = Riften}
weather property WeatherSolitude auto
formlist property CWONonStandardList auto
referencealias property CWSiegeObjJarl auto
faction property DragonFaction auto
objectreference property WhiterunAmbExt01 auto
globalvariable property CWBattlePhase auto
referencealias property CWSiegeObjCityGate auto
cwscript property CWs auto
faction property CWSoldierPlayerEnemyFaction auto
scene property CWSiegeDefenderStartingScene auto
referencealias property CWSiegeObjObjective1A auto
scene property CWAttackerStartingScene auto
globalvariable property CWStateDefenderOutOfReinforcements auto
globalvariable property CWDistantCatapultsAMB auto
Quest property SolitudeOpening auto
referencealias property CWSiegeObjFieldCO auto
weather property WeatherWindhelm auto
locationalias property CWSiegeObjCity auto
referencealias property CWSiegeObjObjective2B auto
Quest property CWPrepareCity auto
referencealias property CWSiegeObjObjective1B auto
locationalias property City auto
Quest property MQ304 auto
Quest property DA08 auto
Quest property MQ106 auto
globalvariable property CWOPCChance auto
globalvariable property CWStateDefenderLastStand auto
Float property SonsReinforcements auto
Quest property CWSiegeObj auto
weather property WeatherWhiterun auto
referencealias property CWSiegeObjObjective2A auto
keyword property WIDragonsToggle auto
Int property AMBCloseBattleSoundInstance auto
{Don't assign a number, gets one when the sound is played as a way to refer to it}
Bool property DoneTurningOnAliases = false auto hidden
objectreference property WhiterunAmbExt03 auto
globalvariable property CWStateDefenderLowReinforcements auto
globalvariable property CWOWarBegun auto
Bool property DefendersHaveWon = false auto conditional
sound property AMBCombatSoundsLoop auto
weather property WeatherMarkarth auto
objectreference property WhiterunAmbExt02 auto
weather property WeatherRiften auto
referencealias property ObjAliasTextReplaceAttackDefend auto
Bool property DoneSettingUpAliases = false auto hidden
globalvariable property CWStateAttackerOutOfReinforcements auto
globalvariable property CWStateAttackerAtGate auto
referencealias property CWSiegeObjObjective3B auto
ms11questscript property MS11 auto
globalvariable property CWStateAttackerBrokeThrough auto
Float property ImperialReinforcements auto
globalvariable property CWStateDefenderFallingBack auto
referencealias property CWSiegeObjGeneral auto
scene property CWSiegeGeneralChargeScene auto
referencealias property CWSiegeObjObjective3A auto
referencealias property CWReservationsBalgruuf auto
referencealias property CWReservationsProventus auto
locationalias property CWSiegeObjHold auto
sound property AMBCivilWarBattleStart auto
sound property AMBCivilWarBattleStartDistant auto
sound property AMBCivilWarBattleDistantLP auto
Int property AMBDistantBattleStartInstance auto
{Don't assign a number, gets one when the sound is played as a way to refer to it}

;-- Variables ---------------------------------------
referencealias SonsDefender1
referencealias Defender4
referencealias GenericDefend29
referencealias Generic14
referencealias Generic29
referencealias Generic12
referencealias ImperialAttacker2
referencealias Defender8
referencealias Generic17
referencealias Attacker4
referencealias Defender7
referencealias SonsDefender4
referencealias ImperialAttacker8
referencealias GenericDefend27
referencealias GenericDefend9
referencealias Defender3
referencealias MapMarkerToDisable1
referencealias Generic11
referencealias MapMarkerToDisable6
referencealias GenericAttack10
referencealias GenericDefend4
referencealias GenericAttack14
referencealias MapMarkerToDisable16
referencealias GenericAttack25
referencealias GenericDefend10
referencealias GenericAttack7
referencealias MapMarkerToDisable13
referencealias MapMarkerToDisable10
referencealias GenericAttack4
referencealias Attacker3
referencealias GenericDefend7
referencealias SonsDefender6
referencealias Generic5
referencealias GenericAttack16
referencealias Generic20
referencealias GenericDefend12
referencealias Generic4
referencealias Generic9
referencealias GenericDefend26
referencealias GenericDefend2
referencealias Attacker6
referencealias SonsDefender9
referencealias MapMarkerToDisable15
referencealias GenericAttack13
referencealias MapMarkerToDisable14
referencealias ImperialAttacker10
referencealias GenericAttack19
referencealias MapMarkerToDisable11
referencealias MapMarkerToDisable9
referencealias GenericAttack28
referencealias Generic25
referencealias Attacker2
referencealias Attacker9
referencealias Defender2
referencealias MapMarkerToDisable8
referencealias GenericDefend1
referencealias SonsAttacker9
referencealias MapMarkerToDisable7
referencealias GenericAttack17
referencealias MapMarkerToDisable5
referencealias ImperialDefender8
referencealias GenericAttack20
referencealias SonsAttacker4
referencealias MapMarkerToDisable3
referencealias Generic3
referencealias Generic6
referencealias GenericAttack2
referencealias AttackerImperialCampMapMarker
referencealias SonsAttacker8
referencealias AttackerSonsCampMapMarker
referencealias Defender1
referencealias GenericDefend30
referencealias ImperialDefender5
referencealias GenericDefend28
referencealias GenericDefend17
referencealias GenericDefend25
referencealias SonsAttacker5
referencealias GenericDefend24
referencealias GenericDefend23
referencealias ImperialAttacker6
referencealias GenericDefend22
referencealias GenericDefend21
referencealias SonsAttacker7
referencealias GenericDefend20
referencealias Generic27
referencealias GenericAttack21
referencealias GenericDefend18
referencealias Generic8
referencealias SonsAttacker6
referencealias GenericDefend15
Int CombatSoundsLoopInstance
referencealias GenericDefend14
Bool DisabledFastTravel = false
referencealias ImperialDefender7
referencealias Attacker8
referencealias SonsAttacker10
referencealias GenericDefend13
referencealias GenericDefend11
referencealias GenericDefend8
referencealias SonsAttacker3
referencealias Generic2
referencealias ImperialDefender1
referencealias GenericAttack1
referencealias GenericAttack8
referencealias GenericDefend5
referencealias GenericDefend3
referencealias GenericAttack22
referencealias GenericAttack29
referencealias Generic7
referencealias GenericAttack27
referencealias ImperialAttacker4
referencealias GenericAttack26
referencealias ImperialDefender6
referencealias GenericAttack23
referencealias ImperialDefender3
referencealias Attacker1
referencealias GenericAttack30
referencealias GenericDefend19
referencealias MapMarkerToDisable4
referencealias ImperialAttacker7
referencealias MapMarkerToDisable12
referencealias GenericAttack18
referencealias GenericDefend16
referencealias Generic16
referencealias Attacker10
referencealias ImperialDefender9
referencealias GenericAttack12
referencealias SonsDefender10
referencealias GenericAttack11
referencealias Generic13
referencealias Defender10
referencealias Generic15
referencealias GenericDefend6
referencealias GenericAttack3
referencealias GenericAttack6
referencealias GenericAttack5
referencealias SonsDefender5
referencealias Generic30
referencealias Generic28
referencealias Generic19
referencealias Generic26
referencealias Generic24
referencealias Generic10
referencealias Generic23
referencealias Generic22
referencealias SonsAttacker2
referencealias MapMarkerToDisable2
referencealias GenericAttack9
referencealias GenericAttack15
referencealias ImperialAttacker9
referencealias Defender6
referencealias Attacker5
referencealias ImperialAttacker3
referencealias Attacker7
referencealias Generic18
referencealias SonsDefender7
referencealias Generic21
referencealias SonsDefender3
referencealias GenericAttack24
referencealias ImperialAttacker5
referencealias ImperialDefender10
referencealias Defender9
referencealias ImperialDefender2
referencealias SonsDefender2
referencealias SonsDefender8
referencealias Defender5
referencealias ImperialDefender4
referencealias ImperialAttacker1
referencealias Generic1
referencealias SonsAttacker1

;-- Functions ---------------------------------------

function TurnOnAliases(Bool isAttackQuest)

	DoneTurningOnAliases = false
	self.EnableAttackerDefenderAliases()
	self.ResetAttackerDefenderAliases()
	self.EnableGenericAliases()
	self.ResetGenericAliases()
	if isAttackQuest
		self.EnableGenericAttackAliases()
		self.ResetGenericAttackAliases()
	else
		self.EnableGenericDefendAliases()
		self.ResetGenericDefendAliases()
	endIf
	DoneTurningOnAliases = true
endFunction

function ToggleOffComplexWIInteractions(locationalias LocationAliasToToggle)

	CWs.ToggleOffComplexWIInteractions(LocationAliasToToggle)
endFunction

function ResetGenericDefendAliases()

	self.tryToResetAlias(GenericDefend1)
	self.tryToResetAlias(GenericDefend2)
	self.tryToResetAlias(GenericDefend3)
	self.tryToResetAlias(GenericDefend4)
	self.tryToResetAlias(GenericDefend5)
	self.tryToResetAlias(GenericDefend6)
	self.tryToResetAlias(GenericDefend7)
	self.tryToResetAlias(GenericDefend8)
	self.tryToResetAlias(GenericDefend9)
	self.tryToResetAlias(GenericDefend10)
	self.tryToResetAlias(GenericDefend11)
	self.tryToResetAlias(GenericDefend12)
	self.tryToResetAlias(GenericDefend13)
	self.tryToResetAlias(GenericDefend14)
	self.tryToResetAlias(GenericDefend15)
	self.tryToResetAlias(GenericDefend16)
	self.tryToResetAlias(GenericDefend17)
	self.tryToResetAlias(GenericDefend18)
	self.tryToResetAlias(GenericDefend19)
	self.tryToResetAlias(GenericDefend20)
	self.tryToResetAlias(GenericDefend21)
	self.tryToResetAlias(GenericDefend22)
	self.tryToResetAlias(GenericDefend23)
	self.tryToResetAlias(GenericDefend24)
	self.tryToResetAlias(GenericDefend25)
	self.tryToResetAlias(GenericDefend26)
	self.tryToResetAlias(GenericDefend27)
	self.tryToResetAlias(GenericDefend28)
	self.tryToResetAlias(GenericDefend29)
	self.tryToResetAlias(GenericDefend30)
endFunction

function LogAttackDefenderAliases()

	self.logAlias(Attacker1)
	self.logAlias(Attacker2)
	self.logAlias(Attacker3)
	self.logAlias(Attacker4)
	self.logAlias(Attacker5)
	self.logAlias(Attacker6)
	self.logAlias(Attacker7)
	self.logAlias(Attacker8)
	self.logAlias(Attacker9)
	self.logAlias(Attacker10)
	self.logAlias(Defender1)
	self.logAlias(Defender2)
	self.logAlias(Defender3)
	self.logAlias(Defender4)
	self.logAlias(Defender5)
	self.logAlias(Defender6)
	self.logAlias(Defender7)
	self.logAlias(Defender8)
	self.logAlias(Defender9)
	self.logAlias(Defender10)
endFunction

function tryToDisableAlias(referencealias AliasToTry)

	if AliasToTry
		objectreference AliasRef = AliasToTry.GetReference()
		if AliasRef
			AliasRef.Disable(false)
		endIf
	endIf
endFunction

function FailDefenseQuest(locationalias CityAlias)

	CWs.CWSiegeObj.setStage(8999)
	CWs.FailCWObj(Hold.GetLocation())
	CWs.ContestedHoldWinner = CWs.GetAttacker(CityAlias.GetLocation())
	while game.GetPlayer().IsInLocation(CityAlias.GetLocation())
		utility.wait(5 as Float)
	endWhile
	CWOArmorDisguises.Start()
	self.stop()
endFunction

function SetUpAliasesSonsAttacking()

	Attacker1.ForceRefTo(SonsAttacker1.GetReference())
	Attacker2.ForceRefTo(SonsAttacker2.GetReference())
	Attacker3.ForceRefTo(SonsAttacker3.GetReference())
	Attacker4.ForceRefTo(SonsAttacker4.GetReference())
	Attacker5.ForceRefTo(SonsAttacker5.GetReference())
	Attacker6.ForceRefTo(SonsAttacker6.GetReference())
	Attacker7.ForceRefTo(SonsAttacker7.GetReference())
	Attacker8.ForceRefTo(SonsAttacker8.GetReference())
	Attacker9.ForceRefTo(SonsAttacker9.GetReference())
	Attacker10.ForceRefTo(SonsAttacker10.GetReference())
	Defender1.ForceRefTo(ImperialDefender1.GetReference())
	Defender2.ForceRefTo(ImperialDefender2.GetReference())
	Defender3.ForceRefTo(ImperialDefender3.GetReference())
	Defender4.ForceRefTo(ImperialDefender4.GetReference())
	Defender5.ForceRefTo(ImperialDefender5.GetReference())
	Defender6.ForceRefTo(ImperialDefender6.GetReference())
	Defender7.ForceRefTo(ImperialDefender7.GetReference())
	Defender8.ForceRefTo(ImperialDefender8.GetReference())
	Defender9.ForceRefTo(ImperialDefender9.GetReference())
	Defender10.ForceRefTo(ImperialDefender10.GetReference())
endFunction

function DisableAllAliases()

	self.DisableImperialSonsAliases()
	self.DisableGenericAliases()
	self.DisableGenericAttackAliases()
	self.DisableGenericDefendAliases()
endFunction

function SetPoolDefenderOnCWReinforcementScript(Int BasePool, Float AttackDeltaMult, Float scaleMult, Bool InfinitePool)

	cwreinforcementcontrollerscript CWReinforcementControllerS = (self as Quest) as cwreinforcementcontrollerscript
	CWReinforcementControllerS.SetPoolDefender(BasePool, AttackDeltaMult, scaleMult, InfinitePool)
endFunction

function ToggleMapMarkersAndFastTravelStartBattle(Bool isAttackQuest)

	isAttackQuest = WasThisAnAttack
	DisabledFastTravel = false
	if isAttackQuest
		if CWs.PlayerAllegiance == 1
			AttackerImperialCampMapMarker.TryToEnable()
		elseIf CWs.PlayerAllegiance == 2
			AttackerSonsCampMapMarker.TryToEnable()
		endIf
		MapMarkerToDisable1.TryToDisable()
		MapMarkerToDisable2.TryToDisable()
		MapMarkerToDisable3.TryToDisable()
		MapMarkerToDisable4.TryToDisable()
		MapMarkerToDisable5.TryToDisable()
		MapMarkerToDisable6.TryToDisable()
		MapMarkerToDisable7.TryToDisable()
		MapMarkerToDisable8.TryToDisable()
		MapMarkerToDisable9.TryToDisable()
		MapMarkerToDisable10.TryToDisable()
		MapMarkerToDisable11.TryToDisable()
		MapMarkerToDisable12.TryToDisable()
		MapMarkerToDisable13.TryToDisable()
		MapMarkerToDisable14.TryToDisable()
		MapMarkerToDisable15.TryToDisable()
		MapMarkerToDisable16.TryToDisable()
	else
		game.EnableFastTravel(false)
		DisabledFastTravel = true
	endIf
endFunction

function RegisterGenericAliases(referencealias RefAlias1, referencealias RefAlias2, referencealias RefAlias3, referencealias RefAlias4, referencealias RefAlias5, referencealias RefAlias6, referencealias RefAlias7, referencealias RefAlias8, referencealias RefAlias9, referencealias RefAlias10, referencealias RefAlias11, referencealias RefAlias12, referencealias RefAlias13, referencealias RefAlias14, referencealias RefAlias15, referencealias RefAlias16, referencealias RefAlias17, referencealias RefAlias18, referencealias RefAlias19, referencealias RefAlias20, referencealias RefAlias21, referencealias RefAlias22, referencealias RefAlias23, referencealias RefAlias24, referencealias RefAlias25, referencealias RefAlias26, referencealias RefAlias27, referencealias RefAlias28, referencealias RefAlias29, referencealias RefAlias30)

	Generic1 = RefAlias1
	Generic2 = RefAlias2
	Generic3 = RefAlias3
	Generic4 = RefAlias4
	Generic5 = RefAlias5
	Generic6 = RefAlias6
	Generic7 = RefAlias7
	Generic8 = RefAlias8
	Generic9 = RefAlias9
	Generic10 = RefAlias10
	Generic11 = RefAlias11
	Generic12 = RefAlias12
	Generic13 = RefAlias13
	Generic14 = RefAlias14
	Generic15 = RefAlias15
	Generic16 = RefAlias16
	Generic17 = RefAlias17
	Generic18 = RefAlias18
	Generic19 = RefAlias19
	Generic20 = RefAlias20
	Generic21 = RefAlias21
	Generic22 = RefAlias22
	Generic23 = RefAlias23
	Generic24 = RefAlias24
	Generic25 = RefAlias25
	Generic26 = RefAlias26
	Generic27 = RefAlias27
	Generic28 = RefAlias28
	Generic29 = RefAlias29
	Generic30 = RefAlias30
endFunction

function TryToturnOffCatapultAlias(referencealias CatapultAlias)

	objectreference CatapultRef = CatapultAlias.GetReference()
	if CatapultRef
		(CatapultRef as cwcatapultscript).turnOff(true)
	endIf
endFunction

function DisableGenericDefendAliases()

	self.tryToDisableAlias(GenericDefend1)
	self.tryToDisableAlias(GenericDefend2)
	self.tryToDisableAlias(GenericDefend3)
	self.tryToDisableAlias(GenericDefend4)
	self.tryToDisableAlias(GenericDefend5)
	self.tryToDisableAlias(GenericDefend6)
	self.tryToDisableAlias(GenericDefend7)
	self.tryToDisableAlias(GenericDefend8)
	self.tryToDisableAlias(GenericDefend9)
	self.tryToDisableAlias(GenericDefend10)
	self.tryToDisableAlias(GenericDefend11)
	self.tryToDisableAlias(GenericDefend12)
	self.tryToDisableAlias(GenericDefend13)
	self.tryToDisableAlias(GenericDefend14)
	self.tryToDisableAlias(GenericDefend15)
	self.tryToDisableAlias(GenericDefend16)
	self.tryToDisableAlias(GenericDefend17)
	self.tryToDisableAlias(GenericDefend18)
	self.tryToDisableAlias(GenericDefend19)
	self.tryToDisableAlias(GenericDefend20)
	self.tryToDisableAlias(GenericDefend21)
	self.tryToDisableAlias(GenericDefend22)
	self.tryToDisableAlias(GenericDefend23)
	self.tryToDisableAlias(GenericDefend24)
	self.tryToDisableAlias(GenericDefend25)
	self.tryToDisableAlias(GenericDefend26)
	self.tryToDisableAlias(GenericDefend27)
	self.tryToDisableAlias(GenericDefend28)
	self.tryToDisableAlias(GenericDefend29)
	self.tryToDisableAlias(GenericDefend30)
endFunction

function ToggleOnComplexWIInteractions(locationalias LocationAliasToToggle)

	CWs.ToggleOnComplexWIInteractions(LocationAliasToToggle)
endFunction

function EnableGenericDefendAliases()

	self.tryToEnableAlias(GenericDefend1)
	self.tryToEnableAlias(GenericDefend2)
	self.tryToEnableAlias(GenericDefend3)
	self.tryToEnableAlias(GenericDefend4)
	self.tryToEnableAlias(GenericDefend5)
	self.tryToEnableAlias(GenericDefend6)
	self.tryToEnableAlias(GenericDefend7)
	self.tryToEnableAlias(GenericDefend8)
	self.tryToEnableAlias(GenericDefend9)
	self.tryToEnableAlias(GenericDefend10)
	self.tryToEnableAlias(GenericDefend11)
	self.tryToEnableAlias(GenericDefend12)
	self.tryToEnableAlias(GenericDefend13)
	self.tryToEnableAlias(GenericDefend14)
	self.tryToEnableAlias(GenericDefend15)
	self.tryToEnableAlias(GenericDefend16)
	self.tryToEnableAlias(GenericDefend17)
	self.tryToEnableAlias(GenericDefend18)
	self.tryToEnableAlias(GenericDefend19)
	self.tryToEnableAlias(GenericDefend20)
	self.tryToEnableAlias(GenericDefend21)
	self.tryToEnableAlias(GenericDefend22)
	self.tryToEnableAlias(GenericDefend23)
	self.tryToEnableAlias(GenericDefend24)
	self.tryToEnableAlias(GenericDefend25)
	self.tryToEnableAlias(GenericDefend26)
	self.tryToEnableAlias(GenericDefend27)
	self.tryToEnableAlias(GenericDefend28)
	self.tryToEnableAlias(GenericDefend29)
	self.tryToEnableAlias(GenericDefend30)
endFunction

function SetUpAttackerDefenderAliases(Location LocationOfSiege)

	if CWs.PlayerAllegiance == CWs.iImperials
		if CWs.IsPlayerAttacking(LocationOfSiege)
			self.SetUpAliasesImperialsAttacking()
		else
			self.SetUpAliasesSonsAttacking()
		endIf
	elseIf CWs.PlayerAllegiance == 2
		if CWs.IsPlayerAttacking(LocationOfSiege)
			self.SetUpAliasesSonsAttacking()
		else
			self.SetUpAliasesImperialsAttacking()
		endIf
	endIf
endFunction

function setupInteriorSiege(Location SiegeLocation, objectreference FieldCORef, objectreference CityCenterMarker)

	while CWs.CWFortSiegeCapital.IsStopped() == false
		Int waitingFor = waitingFor + 1
		utility.wait(1 as Float)
	endWhile
	CWs.CWFortSiegeSpecialStart.SendStoryEventAndWait(SiegeLocation, FieldCORef, CityCenterMarker, 3, 0)
	CWs.CWFinaleStart.SendStoryEvent(SiegeLocation, none, none, 0, 0)
endFunction

function RegisterSpawnAttackerAliasesWithCWReinforcementScript(referencealias Marker1Alias, referencealias Marker2Alias, referencealias Marker3Alias, referencealias Marker4Alias, referencealias FailSafeMarkerAlias)

	cwreinforcementcontrollerscript CWReinforcementControllerS = (self as Quest) as cwreinforcementcontrollerscript
	CWReinforcementControllerS.RegisterSpawnAttackerAliases(Marker1Alias, Marker2Alias, Marker3Alias, Marker4Alias, FailSafeMarkerAlias)
endFunction

function SetUpAliases(Location LocationOfSiege)

	DoneSettingUpAliases = false
	self.DisableImperialSonsAliases()
	self.SetUpAttackerDefenderAliases(LocationOfSiege)
	self.LogAttackDefenderAliases()
	DoneSettingUpAliases = true
endFunction

function RegisterAttackerAliases(referencealias RefAlias1, referencealias RefAlias2, referencealias RefAlias3, referencealias RefAlias4, referencealias RefAlias5, referencealias RefAlias6, referencealias RefAlias7, referencealias RefAlias8, referencealias RefAlias9, referencealias RefAlias10)

	Attacker1 = RefAlias1
	Attacker2 = RefAlias2
	Attacker3 = RefAlias3
	Attacker4 = RefAlias4
	Attacker5 = RefAlias5
	Attacker6 = RefAlias6
	Attacker7 = RefAlias7
	Attacker8 = RefAlias8
	Attacker9 = RefAlias9
	Attacker10 = RefAlias10
endFunction

function EnableGenericAliases()

	self.tryToEnableAlias(Generic1)
	self.tryToEnableAlias(Generic2)
	self.tryToEnableAlias(Generic3)
	self.tryToEnableAlias(Generic4)
	self.tryToEnableAlias(Generic5)
	self.tryToEnableAlias(Generic6)
	self.tryToEnableAlias(Generic7)
	self.tryToEnableAlias(Generic8)
	self.tryToEnableAlias(Generic9)
	self.tryToEnableAlias(Generic10)
	self.tryToEnableAlias(Generic11)
	self.tryToEnableAlias(Generic12)
	self.tryToEnableAlias(Generic13)
	self.tryToEnableAlias(Generic14)
	self.tryToEnableAlias(Generic15)
	self.tryToEnableAlias(Generic16)
	self.tryToEnableAlias(Generic17)
	self.tryToEnableAlias(Generic18)
	self.tryToEnableAlias(Generic19)
	self.tryToEnableAlias(Generic20)
	self.tryToEnableAlias(Generic21)
	self.tryToEnableAlias(Generic22)
	self.tryToEnableAlias(Generic23)
	self.tryToEnableAlias(Generic24)
	self.tryToEnableAlias(Generic25)
	self.tryToEnableAlias(Generic26)
	self.tryToEnableAlias(Generic27)
	self.tryToEnableAlias(Generic28)
	self.tryToEnableAlias(Generic29)
	self.tryToEnableAlias(Generic30)
endFunction

function StopCombatSoundsLoop()

	;USKP 2.0.2 - make sure this is valid first.
	if( CombatSoundsLoopInstance != 0 )
		Sound.StopInstance(CombatSoundsLoopInstance)
	EndIf
endFunction

Bool function IsAttack()

	return CWs.IsPlayerAttacking(City.GetLocation())
endFunction

function RegisterSonsAttackerAliases(referencealias RefAlias1, referencealias RefAlias2, referencealias RefAlias3, referencealias RefAlias4, referencealias RefAlias5, referencealias RefAlias6, referencealias RefAlias7, referencealias RefAlias8, referencealias RefAlias9, referencealias RefAlias10)

	SonsAttacker1 = RefAlias1
	SonsAttacker2 = RefAlias2
	SonsAttacker3 = RefAlias3
	SonsAttacker4 = RefAlias4
	SonsAttacker5 = RefAlias5
	SonsAttacker6 = RefAlias6
	SonsAttacker7 = RefAlias7
	SonsAttacker8 = RefAlias8
	SonsAttacker9 = RefAlias9
	SonsAttacker10 = RefAlias10
endFunction

function SucceedDefenseQuest(locationalias HoldAlias, locationalias CityAlias, referencealias MainGateExteriorAlias)

	MUSCombatCivilWar.Remove()
	MainGateExteriorAlias.GetReference().BlockActivation(false)
	CWs.CWStateAttackStarted.SetValue(0 as Float)
	CWs.CWStateAttackerBrokeThrough.SetValue(0 as Float)
	CWs.CWStateDefenderFallingBack.SetValue(0 as Float)
	CWs.CWStateDefenderLastStand.SetValue(0 as Float)
	CWs.CWStateAttackerAtGate.SetValue(0 as Float)
	CWs.CWStateAttackerOutOfReinforcements.SetValue(1 as Float)
	CWs.CWSiegeObj.setStage(9000)
	CWs.CompleteCWObj(Hold.GetLocation())
	CWs.ContestedHoldWinner = CWs.GetDefender(CityAlias.GetLocation())
	while game.GetPlayer().IsInLocation(CityAlias.GetLocation())
		utility.wait(5 as Float)
	endWhile
	CWOArmorDisguises.Start()
	self.stop()
endFunction

function tryToResetAlias(referencealias AliasToTry)

	if AliasToTry
		objectreference AliasRef = AliasToTry.GetReference()
		if AliasRef
			AliasRef.Reset(none)
		endIf
	endIf
endFunction

function ResetAttackerDefenderAliases()

	self.tryToResetAlias(Attacker1)
	self.tryToResetAlias(Attacker2)
	self.tryToResetAlias(Attacker3)
	self.tryToResetAlias(Attacker4)
	self.tryToResetAlias(Attacker5)
	self.tryToResetAlias(Attacker6)
	self.tryToResetAlias(Attacker7)
	self.tryToResetAlias(Attacker8)
	self.tryToResetAlias(Attacker9)
	self.tryToResetAlias(Attacker10)
	self.tryToResetAlias(Defender1)
	self.tryToResetAlias(Defender2)
	self.tryToResetAlias(Defender3)
	self.tryToResetAlias(Defender4)
	self.tryToResetAlias(Defender5)
	self.tryToResetAlias(Defender6)
	self.tryToResetAlias(Defender7)
	self.tryToResetAlias(Defender8)
	self.tryToResetAlias(Defender9)
	self.tryToResetAlias(Defender10)
endFunction

function SetPoolAttackerOnCWReinforcementScript(Int BasePool, Float AttackDeltaMult, Float scaleMult, Bool InfinitePool)

	cwreinforcementcontrollerscript CWReinforcementControllerS = (self as Quest) as cwreinforcementcontrollerscript
	CWReinforcementControllerS.SetPoolAttacker(BasePool, AttackDeltaMult, scaleMult, InfinitePool)
endFunction

function ResetGenericAttackAliases()

	self.tryToResetAlias(GenericAttack1)
	self.tryToResetAlias(GenericAttack2)
	self.tryToResetAlias(GenericAttack3)
	self.tryToResetAlias(GenericAttack4)
	self.tryToResetAlias(GenericAttack5)
	self.tryToResetAlias(GenericAttack6)
	self.tryToResetAlias(GenericAttack7)
	self.tryToResetAlias(GenericAttack8)
	self.tryToResetAlias(GenericAttack9)
	self.tryToResetAlias(GenericAttack10)
	self.tryToResetAlias(GenericAttack11)
	self.tryToResetAlias(GenericAttack12)
	self.tryToResetAlias(GenericAttack13)
	self.tryToResetAlias(GenericAttack14)
	self.tryToResetAlias(GenericAttack15)
	self.tryToResetAlias(GenericAttack16)
	self.tryToResetAlias(GenericAttack17)
	self.tryToResetAlias(GenericAttack18)
	self.tryToResetAlias(GenericAttack19)
	self.tryToResetAlias(GenericAttack20)
	self.tryToResetAlias(GenericAttack21)
	self.tryToResetAlias(GenericAttack22)
	self.tryToResetAlias(GenericAttack23)
	self.tryToResetAlias(GenericAttack24)
	self.tryToResetAlias(GenericAttack25)
	self.tryToResetAlias(GenericAttack26)
	self.tryToResetAlias(GenericAttack27)
	self.tryToResetAlias(GenericAttack28)
	self.tryToResetAlias(GenericAttack29)
	self.tryToResetAlias(GenericAttack30)
endFunction

function DisableImperialSonsAliases()

	self.tryToDisableAlias(ImperialAttacker1)
	self.tryToDisableAlias(ImperialAttacker2)
	self.tryToDisableAlias(ImperialAttacker3)
	self.tryToDisableAlias(ImperialAttacker4)
	self.tryToDisableAlias(ImperialAttacker5)
	self.tryToDisableAlias(ImperialAttacker6)
	self.tryToDisableAlias(ImperialAttacker7)
	self.tryToDisableAlias(ImperialAttacker8)
	self.tryToDisableAlias(ImperialAttacker9)
	self.tryToDisableAlias(ImperialAttacker10)
	self.tryToDisableAlias(ImperialDefender1)
	self.tryToDisableAlias(ImperialDefender2)
	self.tryToDisableAlias(ImperialDefender3)
	self.tryToDisableAlias(ImperialDefender4)
	self.tryToDisableAlias(ImperialDefender5)
	self.tryToDisableAlias(ImperialDefender6)
	self.tryToDisableAlias(ImperialDefender7)
	self.tryToDisableAlias(ImperialDefender8)
	self.tryToDisableAlias(ImperialDefender9)
	self.tryToDisableAlias(ImperialDefender10)
	self.tryToDisableAlias(SonsAttacker1)
	self.tryToDisableAlias(SonsAttacker2)
	self.tryToDisableAlias(SonsAttacker3)
	self.tryToDisableAlias(SonsAttacker4)
	self.tryToDisableAlias(SonsAttacker5)
	self.tryToDisableAlias(SonsAttacker6)
	self.tryToDisableAlias(SonsAttacker7)
	self.tryToDisableAlias(SonsAttacker8)
	self.tryToDisableAlias(SonsAttacker9)
	self.tryToDisableAlias(SonsAttacker10)
	self.tryToDisableAlias(SonsDefender1)
	self.tryToDisableAlias(SonsDefender2)
	self.tryToDisableAlias(SonsDefender3)
	self.tryToDisableAlias(SonsDefender4)
	self.tryToDisableAlias(SonsDefender5)
	self.tryToDisableAlias(SonsDefender6)
	self.tryToDisableAlias(SonsDefender7)
	self.tryToDisableAlias(SonsDefender8)
	self.tryToDisableAlias(SonsDefender9)
	self.tryToDisableAlias(SonsDefender10)
endFunction

function EnableGenericAttackAliases()

	self.tryToEnableAlias(GenericAttack1)
	self.tryToEnableAlias(GenericAttack2)
	self.tryToEnableAlias(GenericAttack3)
	self.tryToEnableAlias(GenericAttack4)
	self.tryToEnableAlias(GenericAttack5)
	self.tryToEnableAlias(GenericAttack6)
	self.tryToEnableAlias(GenericAttack7)
	self.tryToEnableAlias(GenericAttack8)
	self.tryToEnableAlias(GenericAttack9)
	self.tryToEnableAlias(GenericAttack10)
	self.tryToEnableAlias(GenericAttack11)
	self.tryToEnableAlias(GenericAttack12)
	self.tryToEnableAlias(GenericAttack13)
	self.tryToEnableAlias(GenericAttack14)
	self.tryToEnableAlias(GenericAttack15)
	self.tryToEnableAlias(GenericAttack16)
	self.tryToEnableAlias(GenericAttack17)
	self.tryToEnableAlias(GenericAttack18)
	self.tryToEnableAlias(GenericAttack19)
	self.tryToEnableAlias(GenericAttack20)
	self.tryToEnableAlias(GenericAttack21)
	self.tryToEnableAlias(GenericAttack22)
	self.tryToEnableAlias(GenericAttack23)
	self.tryToEnableAlias(GenericAttack24)
	self.tryToEnableAlias(GenericAttack25)
	self.tryToEnableAlias(GenericAttack26)
	self.tryToEnableAlias(GenericAttack27)
	self.tryToEnableAlias(GenericAttack28)
	self.tryToEnableAlias(GenericAttack29)
	self.tryToEnableAlias(GenericAttack30)
endFunction

function RegisterSonsDefenderAliases(referencealias RefAlias1, referencealias RefAlias2, referencealias RefAlias3, referencealias RefAlias4, referencealias RefAlias5, referencealias RefAlias6, referencealias RefAlias7, referencealias RefAlias8, referencealias RefAlias9, referencealias RefAlias10)

	SonsDefender1 = RefAlias1
	SonsDefender2 = RefAlias2
	SonsDefender3 = RefAlias3
	SonsDefender4 = RefAlias4
	SonsDefender5 = RefAlias5
	SonsDefender6 = RefAlias6
	SonsDefender7 = RefAlias7
	SonsDefender8 = RefAlias8
	SonsDefender9 = RefAlias9
	SonsDefender10 = RefAlias10
endFunction

function DisableGenericAttackAliases()

	self.tryToDisableAlias(GenericAttack1)
	self.tryToDisableAlias(GenericAttack2)
	self.tryToDisableAlias(GenericAttack3)
	self.tryToDisableAlias(GenericAttack4)
	self.tryToDisableAlias(GenericAttack5)
	self.tryToDisableAlias(GenericAttack6)
	self.tryToDisableAlias(GenericAttack7)
	self.tryToDisableAlias(GenericAttack8)
	self.tryToDisableAlias(GenericAttack9)
	self.tryToDisableAlias(GenericAttack10)
	self.tryToDisableAlias(GenericAttack11)
	self.tryToDisableAlias(GenericAttack12)
	self.tryToDisableAlias(GenericAttack13)
	self.tryToDisableAlias(GenericAttack14)
	self.tryToDisableAlias(GenericAttack15)
	self.tryToDisableAlias(GenericAttack16)
	self.tryToDisableAlias(GenericAttack17)
	self.tryToDisableAlias(GenericAttack18)
	self.tryToDisableAlias(GenericAttack19)
	self.tryToDisableAlias(GenericAttack20)
	self.tryToDisableAlias(GenericAttack21)
	self.tryToDisableAlias(GenericAttack22)
	self.tryToDisableAlias(GenericAttack23)
	self.tryToDisableAlias(GenericAttack24)
	self.tryToDisableAlias(GenericAttack25)
	self.tryToDisableAlias(GenericAttack26)
	self.tryToDisableAlias(GenericAttack27)
	self.tryToDisableAlias(GenericAttack28)
	self.tryToDisableAlias(GenericAttack29)
	self.tryToDisableAlias(GenericAttack30)
endFunction

function FailAttackQuest(locationalias CityAlias)

	CWs.CWSiegeObj.setStage(8999)
	CWs.FailCWObj(Hold.GetLocation())
	CWs.ContestedHoldWinner = CWs.GetDefender(CityAlias.GetLocation())
	while game.GetPlayer().IsInLocation(CityAlias.GetLocation())
		utility.wait(5 as Float)
	endWhile
	CWOArmorDisguises.Start()
	self.stop()
endFunction

function tryToEnableAlias(referencealias AliasToTry)

	if AliasToTry
		objectreference AliasRef = AliasToTry.GetReference()
		if AliasRef
			AliasRef.Enable(false)
		endIf
	endIf
endFunction

function logAlias(referencealias AliasToPrintToLog)

	; Empty function
endFunction

function RegisterGenericDefendAliases(referencealias RefAlias1, referencealias RefAlias2, referencealias RefAlias3, referencealias RefAlias4, referencealias RefAlias5, referencealias RefAlias6, referencealias RefAlias7, referencealias RefAlias8, referencealias RefAlias9, referencealias RefAlias10, referencealias RefAlias11, referencealias RefAlias12, referencealias RefAlias13, referencealias RefAlias14, referencealias RefAlias15, referencealias RefAlias16, referencealias RefAlias17, referencealias RefAlias18, referencealias RefAlias19, referencealias RefAlias20, referencealias RefAlias21, referencealias RefAlias22, referencealias RefAlias23, referencealias RefAlias24, referencealias RefAlias25, referencealias RefAlias26, referencealias RefAlias27, referencealias RefAlias28, referencealias RefAlias29, referencealias RefAlias30)

	GenericDefend1 = RefAlias1
	GenericDefend2 = RefAlias2
	GenericDefend3 = RefAlias3
	GenericDefend4 = RefAlias4
	GenericDefend5 = RefAlias5
	GenericDefend6 = RefAlias6
	GenericDefend7 = RefAlias7
	GenericDefend8 = RefAlias8
	GenericDefend9 = RefAlias9
	GenericDefend10 = RefAlias10
	GenericDefend11 = RefAlias11
	GenericDefend12 = RefAlias12
	GenericDefend13 = RefAlias13
	GenericDefend14 = RefAlias14
	GenericDefend15 = RefAlias15
	GenericDefend16 = RefAlias16
	GenericDefend17 = RefAlias17
	GenericDefend18 = RefAlias18
	GenericDefend19 = RefAlias19
	GenericDefend20 = RefAlias20
	GenericDefend21 = RefAlias21
	GenericDefend22 = RefAlias22
	GenericDefend23 = RefAlias23
	GenericDefend24 = RefAlias24
	GenericDefend25 = RefAlias25
	GenericDefend26 = RefAlias26
	GenericDefend27 = RefAlias27
	GenericDefend28 = RefAlias28
	GenericDefend29 = RefAlias29
	GenericDefend30 = RefAlias30
endFunction

function ResetGenericAliases()

	self.tryToResetAlias(Generic1)
	self.tryToResetAlias(Generic2)
	self.tryToResetAlias(Generic3)
	self.tryToResetAlias(Generic4)
	self.tryToResetAlias(Generic5)
	self.tryToResetAlias(Generic6)
	self.tryToResetAlias(Generic7)
	self.tryToResetAlias(Generic8)
	self.tryToResetAlias(Generic9)
	self.tryToResetAlias(Generic10)
	self.tryToResetAlias(Generic11)
	self.tryToResetAlias(Generic12)
	self.tryToResetAlias(Generic13)
	self.tryToResetAlias(Generic14)
	self.tryToResetAlias(Generic15)
	self.tryToResetAlias(Generic16)
	self.tryToResetAlias(Generic17)
	self.tryToResetAlias(Generic18)
	self.tryToResetAlias(Generic19)
	self.tryToResetAlias(Generic20)
	self.tryToResetAlias(Generic21)
	self.tryToResetAlias(Generic22)
	self.tryToResetAlias(Generic23)
	self.tryToResetAlias(Generic24)
	self.tryToResetAlias(Generic25)
	self.tryToResetAlias(Generic26)
	self.tryToResetAlias(Generic27)
	self.tryToResetAlias(Generic28)
	self.tryToResetAlias(Generic29)
	self.tryToResetAlias(Generic30)
endFunction

function EnableAttackerDefenderAliases()

	self.tryToEnableAlias(Attacker1)
	self.tryToEnableAlias(Attacker2)
	self.tryToEnableAlias(Attacker3)
	self.tryToEnableAlias(Attacker4)
	self.tryToEnableAlias(Attacker5)
	self.tryToEnableAlias(Attacker6)
	self.tryToEnableAlias(Attacker7)
	self.tryToEnableAlias(Attacker8)
	self.tryToEnableAlias(Attacker9)
	self.tryToEnableAlias(Attacker10)
	self.tryToEnableAlias(Defender1)
	self.tryToEnableAlias(Defender2)
	self.tryToEnableAlias(Defender3)
	self.tryToEnableAlias(Defender4)
	self.tryToEnableAlias(Defender5)
	self.tryToEnableAlias(Defender6)
	self.tryToEnableAlias(Defender7)
	self.tryToEnableAlias(Defender8)
	self.tryToEnableAlias(Defender9)
	self.tryToEnableAlias(Defender10)
endFunction

function DisableGenericAliases()

	self.tryToDisableAlias(Generic1)
	self.tryToDisableAlias(Generic2)
	self.tryToDisableAlias(Generic3)
	self.tryToDisableAlias(Generic4)
	self.tryToDisableAlias(Generic5)
	self.tryToDisableAlias(Generic6)
	self.tryToDisableAlias(Generic7)
	self.tryToDisableAlias(Generic8)
	self.tryToDisableAlias(Generic9)
	self.tryToDisableAlias(Generic10)
	self.tryToDisableAlias(Generic11)
	self.tryToDisableAlias(Generic12)
	self.tryToDisableAlias(Generic13)
	self.tryToDisableAlias(Generic14)
	self.tryToDisableAlias(Generic15)
	self.tryToDisableAlias(Generic16)
	self.tryToDisableAlias(Generic17)
	self.tryToDisableAlias(Generic18)
	self.tryToDisableAlias(Generic19)
	self.tryToDisableAlias(Generic20)
	self.tryToDisableAlias(Generic21)
	self.tryToDisableAlias(Generic22)
	self.tryToDisableAlias(Generic23)
	self.tryToDisableAlias(Generic24)
	self.tryToDisableAlias(Generic25)
	self.tryToDisableAlias(Generic26)
	self.tryToDisableAlias(Generic27)
	self.tryToDisableAlias(Generic28)
	self.tryToDisableAlias(Generic29)
	self.tryToDisableAlias(Generic30)
endFunction

function SetUpAliasesImperialsAttacking()

	Attacker1.ForceRefTo(ImperialAttacker1.GetReference())
	Attacker2.ForceRefTo(ImperialAttacker2.GetReference())
	Attacker3.ForceRefTo(ImperialAttacker3.GetReference())
	Attacker4.ForceRefTo(ImperialAttacker4.GetReference())
	Attacker5.ForceRefTo(ImperialAttacker5.GetReference())
	Attacker6.ForceRefTo(ImperialAttacker6.GetReference())
	Attacker7.ForceRefTo(ImperialAttacker7.GetReference())
	Attacker8.ForceRefTo(ImperialAttacker8.GetReference())
	Attacker9.ForceRefTo(ImperialAttacker9.GetReference())
	Attacker10.ForceRefTo(ImperialAttacker10.GetReference())
	Defender1.ForceRefTo(SonsDefender1.GetReference())
	Defender2.ForceRefTo(SonsDefender2.GetReference())
	Defender3.ForceRefTo(SonsDefender3.GetReference())
	Defender4.ForceRefTo(SonsDefender4.GetReference())
	Defender5.ForceRefTo(SonsDefender5.GetReference())
	Defender6.ForceRefTo(SonsDefender6.GetReference())
	Defender7.ForceRefTo(SonsDefender7.GetReference())
	Defender8.ForceRefTo(SonsDefender8.GetReference())
	Defender9.ForceRefTo(SonsDefender9.GetReference())
	Defender10.ForceRefTo(SonsDefender10.GetReference())
endFunction

function RegisterGenericAttackAliases(referencealias RefAlias1, referencealias RefAlias2, referencealias RefAlias3, referencealias RefAlias4, referencealias RefAlias5, referencealias RefAlias6, referencealias RefAlias7, referencealias RefAlias8, referencealias RefAlias9, referencealias RefAlias10, referencealias RefAlias11, referencealias RefAlias12, referencealias RefAlias13, referencealias RefAlias14, referencealias RefAlias15, referencealias RefAlias16, referencealias RefAlias17, referencealias RefAlias18, referencealias RefAlias19, referencealias RefAlias20, referencealias RefAlias21, referencealias RefAlias22, referencealias RefAlias23, referencealias RefAlias24, referencealias RefAlias25, referencealias RefAlias26, referencealias RefAlias27, referencealias RefAlias28, referencealias RefAlias29, referencealias RefAlias30)

	GenericAttack1 = RefAlias1
	GenericAttack2 = RefAlias2
	GenericAttack3 = RefAlias3
	GenericAttack4 = RefAlias4
	GenericAttack5 = RefAlias5
	GenericAttack6 = RefAlias6
	GenericAttack7 = RefAlias7
	GenericAttack8 = RefAlias8
	GenericAttack9 = RefAlias9
	GenericAttack10 = RefAlias10
	GenericAttack11 = RefAlias11
	GenericAttack12 = RefAlias12
	GenericAttack13 = RefAlias13
	GenericAttack14 = RefAlias14
	GenericAttack15 = RefAlias15
	GenericAttack16 = RefAlias16
	GenericAttack17 = RefAlias17
	GenericAttack18 = RefAlias18
	GenericAttack19 = RefAlias19
	GenericAttack20 = RefAlias20
	GenericAttack21 = RefAlias21
	GenericAttack22 = RefAlias22
	GenericAttack23 = RefAlias23
	GenericAttack24 = RefAlias24
	GenericAttack25 = RefAlias25
	GenericAttack26 = RefAlias26
	GenericAttack27 = RefAlias27
	GenericAttack28 = RefAlias28
	GenericAttack29 = RefAlias29
	GenericAttack30 = RefAlias30
endFunction

function StartCombatSoundsLoop()

	CombatSoundsLoopInstance = AMBCombatSoundsLoop.Play(game.GetPlayer() as objectreference)
	sound.SetInstanceVolume(CombatSoundsLoopInstance, 0.500000)
endFunction

function TryToTurnOnCatapultAlias(referencealias CatapultAlias)

	objectreference CatapultRef = CatapultAlias.GetReference()
	if CatapultRef
		(CatapultRef as cwcatapultscript).turnOn()
	endIf
endFunction

function RegisterDefenderAliases(referencealias RefAlias1, referencealias RefAlias2, referencealias RefAlias3, referencealias RefAlias4, referencealias RefAlias5, referencealias RefAlias6, referencealias RefAlias7, referencealias RefAlias8, referencealias RefAlias9, referencealias RefAlias10)

	Defender1 = RefAlias1
	Defender2 = RefAlias2
	Defender3 = RefAlias3
	Defender4 = RefAlias4
	Defender5 = RefAlias5
	Defender6 = RefAlias6
	Defender7 = RefAlias7
	Defender8 = RefAlias8
	Defender9 = RefAlias9
	Defender10 = RefAlias10
endFunction

function SetInfinitePoolsOnCWReinforcementScript()

	cwreinforcementcontrollerscript CWReinforcementControllerS = (self as Quest) as cwreinforcementcontrollerscript
	CWReinforcementControllerS.SetInfinitePools(true, true)
endFunction

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function ToggleMapMarkersAndFastTravelEndBattle(Bool isAttackQuest)

	isAttackQuest = WasThisAnAttack
	if isAttackQuest
		AttackerImperialCampMapMarker.TryToDisable()
		AttackerSonsCampMapMarker.TryToDisable()
		MapMarkerToDisable1.TryToEnable()
		MapMarkerToDisable2.TryToEnable()
		MapMarkerToDisable3.TryToEnable()
		MapMarkerToDisable4.TryToEnable()
		MapMarkerToDisable5.TryToEnable()
		MapMarkerToDisable6.TryToEnable()
		MapMarkerToDisable7.TryToEnable()
		MapMarkerToDisable8.TryToEnable()
		MapMarkerToDisable9.TryToEnable()
		MapMarkerToDisable10.TryToEnable()
		MapMarkerToDisable11.TryToEnable()
		MapMarkerToDisable12.TryToEnable()
		MapMarkerToDisable13.TryToEnable()
		MapMarkerToDisable14.TryToEnable()
		MapMarkerToDisable15.TryToEnable()
		MapMarkerToDisable16.TryToEnable()
	elseIf DisabledFastTravel == true
		game.EnableFastTravel(true)
		DisabledFastTravel = false
	endIf
endFunction

function RegisterAliasesWithCWReinforcementScript(Location SiegeLocationAttackPoint)

	cwreinforcementcontrollerscript CWReinforcementControllerS = (self as Quest) as cwreinforcementcontrollerscript
	CWReinforcementControllerS.RegisterAttackPoint(SiegeLocationAttackPoint)
	CWReinforcementControllerS.RegisterAlias(Attacker1)
	CWReinforcementControllerS.RegisterAlias(Attacker2)
	CWReinforcementControllerS.RegisterAlias(Attacker3)
	CWReinforcementControllerS.RegisterAlias(Attacker4)
	CWReinforcementControllerS.RegisterAlias(Attacker5)
	CWReinforcementControllerS.RegisterAlias(Attacker6)
	CWReinforcementControllerS.RegisterAlias(Attacker7)
	CWReinforcementControllerS.RegisterAlias(Attacker8)
	CWReinforcementControllerS.RegisterAlias(Attacker9)
	CWReinforcementControllerS.RegisterAlias(Attacker10)
	CWReinforcementControllerS.RegisterAlias(Defender1)
	CWReinforcementControllerS.RegisterAlias(Defender2)
	CWReinforcementControllerS.RegisterAlias(Defender3)
	CWReinforcementControllerS.RegisterAlias(Defender4)
	CWReinforcementControllerS.RegisterAlias(Defender5)
	CWReinforcementControllerS.RegisterAlias(Defender6)
	CWReinforcementControllerS.RegisterAlias(Defender7)
	CWReinforcementControllerS.RegisterAlias(Defender8)
	CWReinforcementControllerS.RegisterAlias(Defender9)
	CWReinforcementControllerS.RegisterAlias(Defender10)
endFunction

function RegisterMapMarkerAliases(referencealias AttackerSonsCampMapMarkerAlias, referencealias AttackerImperialCampMapMarkerAlias, referencealias MapMarkerToDisable1Alias, referencealias MapMarkerToDisable2Alias, referencealias MapMarkerToDisable3Alias, referencealias MapMarkerToDisable4Alias, referencealias MapMarkerToDisable5Alias, referencealias MapMarkerToDisable6Alias, referencealias MapMarkerToDisable7Alias, referencealias MapMarkerToDisable8Alias, referencealias MapMarkerToDisable9Alias, referencealias MapMarkerToDisable10Alias, referencealias MapMarkerToDisable11Alias, referencealias MapMarkerToDisable12Alias, referencealias MapMarkerToDisable13Alias, referencealias MapMarkerToDisable14Alias, referencealias MapMarkerToDisable15Alias, referencealias MapMarkerToDisable16Alias)

	AttackerSonsCampMapMarker = AttackerSonsCampMapMarkerAlias
	AttackerImperialCampMapMarker = AttackerImperialCampMapMarkerAlias
	MapMarkerToDisable1 = MapMarkerToDisable1Alias
	MapMarkerToDisable2 = MapMarkerToDisable2Alias
	MapMarkerToDisable3 = MapMarkerToDisable3Alias
	MapMarkerToDisable4 = MapMarkerToDisable4Alias
	MapMarkerToDisable5 = MapMarkerToDisable5Alias
	MapMarkerToDisable6 = MapMarkerToDisable6Alias
	MapMarkerToDisable7 = MapMarkerToDisable7Alias
	MapMarkerToDisable8 = MapMarkerToDisable8Alias
	MapMarkerToDisable9 = MapMarkerToDisable9Alias
	MapMarkerToDisable10 = MapMarkerToDisable10Alias
	MapMarkerToDisable11 = MapMarkerToDisable11Alias
	MapMarkerToDisable12 = MapMarkerToDisable12Alias
	MapMarkerToDisable13 = MapMarkerToDisable13Alias
	MapMarkerToDisable14 = MapMarkerToDisable14Alias
	MapMarkerToDisable15 = MapMarkerToDisable15Alias
	MapMarkerToDisable16 = MapMarkerToDisable16Alias
endFunction

function RegisterImperialAttackerAliases(referencealias RefAlias1, referencealias RefAlias2, referencealias RefAlias3, referencealias RefAlias4, referencealias RefAlias5, referencealias RefAlias6, referencealias RefAlias7, referencealias RefAlias8, referencealias RefAlias9, referencealias RefAlias10)

	ImperialAttacker1 = RefAlias1
	ImperialAttacker2 = RefAlias2
	ImperialAttacker3 = RefAlias3
	ImperialAttacker4 = RefAlias4
	ImperialAttacker5 = RefAlias5
	ImperialAttacker6 = RefAlias6
	ImperialAttacker7 = RefAlias7
	ImperialAttacker8 = RefAlias8
	ImperialAttacker9 = RefAlias9
	ImperialAttacker10 = RefAlias10
endFunction

function RegisterSpawnDefenderAliasesWithCWReinforcementScript(referencealias Marker1Alias, referencealias Marker2Alias, referencealias Marker3Alias, referencealias Marker4Alias, referencealias FailSafeMarkerAlias)

	cwreinforcementcontrollerscript CWReinforcementControllerS = (self as Quest) as cwreinforcementcontrollerscript
	CWReinforcementControllerS.RegisterSpawnDefenderAliases(Marker1Alias, Marker2Alias, Marker3Alias, Marker4Alias, FailSafeMarkerAlias)
endFunction

function RegisterImperialDefenderAliases(referencealias RefAlias1, referencealias RefAlias2, referencealias RefAlias3, referencealias RefAlias4, referencealias RefAlias5, referencealias RefAlias6, referencealias RefAlias7, referencealias RefAlias8, referencealias RefAlias9, referencealias RefAlias10)

	ImperialDefender1 = RefAlias1
	ImperialDefender2 = RefAlias2
	ImperialDefender3 = RefAlias3
	ImperialDefender4 = RefAlias4
	ImperialDefender5 = RefAlias5
	ImperialDefender6 = RefAlias6
	ImperialDefender7 = RefAlias7
	ImperialDefender8 = RefAlias8
	ImperialDefender9 = RefAlias9
	ImperialDefender10 = RefAlias10
endFunction
