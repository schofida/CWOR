scriptName CWFortSiegeScript extends CWSiegeScript
{Extends CWSiegeScript which extends Quest}

;-- Properties --------------------------------------
referencealias property Defender4 auto
referencealias property Barricade4 auto
locationalias property Fort auto
faction property CWOMission05Faction auto
referencealias property TriggerPhase3C auto
referencealias property InteriorSpawner10 auto hidden
referencealias property Defender1 auto
referencealias property InteriorDefender5 auto hidden
referencealias property Barricade1 auto
referencealias property TriggerPhase5E auto
referencealias property TriggerPhase3B auto
referencealias property InteriorDefender2 auto hidden
referencealias property InteriorSpawner14 auto hidden
Int property BarricadeDestructionStageToCheckFor = 4 auto hidden
referencealias property InteriorDefender9 auto hidden
referencealias property InteriorDefender1 auto hidden
referencealias property Attacker8 auto
referencealias property InteriorSpawner6 auto hidden
Bool property CWOTestForDone = false auto
referencealias property InteriorDefender8 auto hidden
referencealias property Barricade3 auto
referencealias property Defender7 auto
Int property QuestStageToCompleteOrFailMeetArmyObjective = 50 auto hidden
referencealias property InteriorSpawner2 auto hidden
referencealias property InteriorSpawner13 auto hidden
referencealias property Attacker7 auto
referencealias property InteriorSpawner5 auto hidden
referencealias property InteriorSpawner7 auto hidden
actorbase property CWFortSiegeImperial auto
activator property CWFortSiegePhase4Trigger auto
Int property QuestStageForPhase2 = 200 auto hidden
referencealias property InteriorSpawner1 auto hidden
referencealias property Attacker3 auto
referencealias property TriggerPhase2A auto
referencealias property TriggerPhase2D auto
referencealias property InteriorSpawner8 auto hidden
referencealias property Attacker10 auto
faction property CWPlayerEnemyFaction auto
referencealias property InteriorDefender11 auto hidden
referencealias property InteriorDefender3 auto hidden
formlist property CWOFortList auto
formlist property CWODoneBeenSiegedYo auto
referencealias property Attacker4 auto
keyword property CWODoneBeenSieged auto
Int property DistanceToArmyToCompleteObjective = 5000 auto hidden
referencealias property InteriorSpawner11 auto hidden
referencealias property Barricade5 auto
referencealias property Defender5 auto
scene property CWFortSiegeCapitalSurrenderScene auto
referencealias property TriggerPhase3A auto
referencealias property TriggerPhase5C auto
referencealias property TriggerPhase5B auto
referencealias property TriggerPhase5A auto
referencealias property TriggerPhase4E auto
referencealias property InteriorDefender4 auto hidden
referencealias property InteriorDefender10 auto hidden
referencealias property TriggerPhase4C auto
referencealias property TriggerPhase4B auto
referencealias property Attacker1 auto
referencealias property TriggerPhase4A auto
referencealias property Barricade2 auto
referencealias property TriggerPhase3E auto
referencealias property Defender6 auto
activator property CWFortSiegePhase2Trigger auto
referencealias property TriggerPhase5D auto
referencealias property TriggerPhase2E auto
globalvariable property CWOCapitalQuestRunning auto
referencealias property Defender3 auto
referencealias property InteriorSpawner9 auto hidden
referencealias property TriggerPhase2C auto
referencealias property TriggerPhase2B auto
referencealias property InteriorSpawner3 auto hidden
referencealias property Attacker5 auto
referencealias property InteriorDefender16 auto hidden
activator property CWFortSiegePhase1Trigger auto
referencealias property InteriorDefender15 auto hidden
referencealias property Attacker9 auto
referencealias property Defender8 auto
referencealias property InteriorDefender12 auto hidden
referencealias property InteriorDefender13 auto hidden
referencealias property Attacker6 auto
referencealias property InteriorSpawner15 auto hidden
referencealias property Attacker2 auto
referencealias property InteriorSpawner16 auto hidden
referencealias property Defender10 auto
activator property CWFortSiegePhase3Trigger auto
referencealias property Defender9 auto
referencealias property InteriorDefender14 auto hidden
referencealias property InteriorDefender7 auto hidden
referencealias property InteriorDefender6 auto hidden
referencealias property InteriorSpawner4 auto hidden
referencealias property TriggerPhase3D auto
actorbase property CWFortSiegeSons auto
activator property CWFortSiegePhase5Trigger auto
referencealias property InteriorSpawner12 auto hidden
referencealias property TriggerPhase4D auto
referencealias property Defender2 auto

;-- Variables ---------------------------------------
Int QuestStageForPhase1 = 100
Int QuestStageToSetWhenBarricadesAreDestroyed = 300
Int QuestStageForPhase4 = 400
Bool BarricadesEnabled
Int QuestStageForPhase3 = 300
Int QuestStageForPhase5 = 500

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

function CheckBarricadesDestroyedThenSetStage()

	Bool AllDestroyed = true
	if Barricade1.GetReference() as Bool && Barricade1.GetReference().GetCurrentDestructionStage() < BarricadeDestructionStageToCheckFor
		AllDestroyed = false
	elseIf Barricade2.GetReference() as Bool && Barricade2.GetReference().GetCurrentDestructionStage() < BarricadeDestructionStageToCheckFor
		AllDestroyed = false
	elseIf Barricade3.GetReference() as Bool && Barricade3.GetReference().GetCurrentDestructionStage() < BarricadeDestructionStageToCheckFor
		AllDestroyed = false
	elseIf Barricade4.GetReference() as Bool && Barricade4.GetReference().GetCurrentDestructionStage() < BarricadeDestructionStageToCheckFor
		AllDestroyed = false
	elseIf Barricade5.GetReference() as Bool && Barricade5.GetReference().GetCurrentDestructionStage() < BarricadeDestructionStageToCheckFor
		AllDestroyed = false
	endIf
	if AllDestroyed
		self.setStage(QuestStageToSetWhenBarricadesAreDestroyed)
		self.pulseTriggers()
	endIf
endFunction

function tryToDeleteWhenAbleAlias(referencealias AliasToDeleteWhenAble)

	ObjectReference RefToDeleteWhenAble = AliasToDeleteWhenAble.GetReference()
	if RefToDeleteWhenAble
		RefToDeleteWhenAble.DeleteWhenAble()
	endIf
endFunction

function DeleteWhenAbleInteriorDefenders()

	self.tryToDeleteWhenAbleAlias(InteriorDefender1)
	self.tryToDeleteWhenAbleAlias(InteriorDefender2)
	self.tryToDeleteWhenAbleAlias(InteriorDefender3)
	self.tryToDeleteWhenAbleAlias(InteriorDefender4)
	self.tryToDeleteWhenAbleAlias(InteriorDefender5)
	self.tryToDeleteWhenAbleAlias(InteriorDefender6)
	self.tryToDeleteWhenAbleAlias(InteriorDefender7)
	self.tryToDeleteWhenAbleAlias(InteriorDefender8)
	self.tryToDeleteWhenAbleAlias(InteriorDefender9)
	self.tryToDeleteWhenAbleAlias(InteriorDefender10)
	self.tryToDeleteWhenAbleAlias(InteriorDefender11)
	self.tryToDeleteWhenAbleAlias(InteriorDefender12)
	self.tryToDeleteWhenAbleAlias(InteriorDefender13)
	self.tryToDeleteWhenAbleAlias(InteriorDefender14)
	self.tryToDeleteWhenAbleAlias(InteriorDefender15)
	self.tryToDeleteWhenAbleAlias(InteriorDefender16)
endFunction

function EnableInteriorDefenders()

	self.tryToEnableAlias(InteriorDefender1)
	self.tryToEnableAlias(InteriorDefender2)
	self.tryToEnableAlias(InteriorDefender3)
	self.tryToEnableAlias(InteriorDefender4)
	self.tryToEnableAlias(InteriorDefender5)
	self.tryToEnableAlias(InteriorDefender6)
	self.tryToEnableAlias(InteriorDefender7)
	self.tryToEnableAlias(InteriorDefender8)
	self.tryToEnableAlias(InteriorDefender9)
	self.tryToEnableAlias(InteriorDefender10)
	self.tryToEnableAlias(InteriorDefender11)
	self.tryToEnableAlias(InteriorDefender12)
	self.tryToEnableAlias(InteriorDefender13)
	self.tryToEnableAlias(InteriorDefender14)
	self.tryToEnableAlias(InteriorDefender15)
	self.tryToEnableAlias(InteriorDefender16)
endFunction

; Skipped compiler generated GotoState

function SetNewOwnerOfFort(Int StageThatMeansDefendersLost, Int StageThatMeansAttackersLost)
	;schofida - So this function was jank AF which triggered when losing war.
	;OCW disables this. I tried to fix but it does not seem to be doing anything
	;good so I am disabling as well now.
	return
	Int DefendingFaction
	Int AttackingFaction
	if (self.IsPlayerAttacking() && CWs.PlayerAllegiance == CWs.iImperials) || (!self.IsPlayerAttacking() && CWs.PlayerAllegiance == CWs.iSons)
		AttackingFaction = CWs.iImperials
		DefendingFaction = CWs.iSons
	else
		AttackingFaction = CWs.iSons
		DefendingFaction = CWs.iImperials
	endIf
	if self.GetStageDone(StageThatMeansDefendersLost)
		CWs.SetOwner(Fort.GetLocation(), AttackingFaction, none, none, none, none, none, none, none, true)
	elseIf self.GetStageDone(StageThatMeansAttackersLost)
		CWs.SetOwner(Fort.GetLocation(), DefendingFaction, none, none, none, none, none, none, none, true)
	endIf
endFunction

function EnableBarricades()

	ObjectReference Barricade1Ref = Barricade1.GetReference()
	ObjectReference Barricade2Ref = Barricade2.GetReference()
	ObjectReference Barricade3Ref = Barricade3.GetReference()
	ObjectReference Barricade4Ref = Barricade4.GetReference()
	ObjectReference Barricade5Ref = Barricade5.GetReference()
	if Barricade1Ref
		Barricade1Ref.ClearDestruction() ; Reddit Bugfix #15
		Barricade1Ref.Reset(none)
		Barricade1Ref.Enable(false)
	endIf
	if Barricade2Ref
		Barricade1Ref.ClearDestruction() ; Reddit Bugfix #15
		Barricade2Ref.Reset(none)
		Barricade2Ref.Enable(false)
	endIf
	if Barricade3Ref
		Barricade1Ref.ClearDestruction() ; Reddit Bugfix #15
		Barricade3Ref.Reset(none)
		Barricade3Ref.Enable(false)
	endIf
	if Barricade4Ref
		Barricade1Ref.ClearDestruction() ; Reddit Bugfix #15
		Barricade4Ref.Reset(none)
		Barricade4Ref.Enable(false)
	endIf
	if Barricade5Ref
		Barricade1Ref.ClearDestruction() ; Reddit Bugfix #15
		Barricade5Ref.Reset(none)
		Barricade5Ref.Enable(false)
	endIf
	BarricadesEnabled = true
endFunction

function FailDefenseQuest(locationalias CityAlias)

	CWs.FailCWObj(Hold.GetLocation())
	CWs.ContestedHoldWinner = CWs.GetAttacker(CityAlias.GetLocation())
	while game.GetPlayer().IsInLocation(CityAlias.GetLocation())
		utility.wait(5 as Float)
	endWhile
	self.stop()
endFunction

function StartFinalCityInteriorBattle()

	CWBattlePhase.setValue(1 as Float)
	CWs.CWThreatCombatBarksS.RegisterBattlePhaseChanged()
	Attacker1.TryToEvaluatePackage()
	Attacker2.TryToEvaluatePackage()
	Attacker3.TryToEvaluatePackage()
	Attacker4.TryToEvaluatePackage()
	Attacker5.TryToEvaluatePackage()
	Attacker6.TryToEvaluatePackage()
	Attacker7.TryToEvaluatePackage()
	Attacker8.TryToEvaluatePackage()
	Attacker9.TryToEvaluatePackage()
	Attacker10.TryToEvaluatePackage()
	Defender1.TryToEvaluatePackage()
	Defender2.TryToEvaluatePackage()
	Defender3.TryToEvaluatePackage()
	Defender4.TryToEvaluatePackage()
	Defender5.TryToEvaluatePackage()
	Defender6.TryToEvaluatePackage()
	Defender7.TryToEvaluatePackage()
	Defender8.TryToEvaluatePackage()
	Defender9.TryToEvaluatePackage()
	Defender10.TryToEvaluatePackage()
	Attacker1.GetActorReference().MoveToPackageLocation()
	Attacker2.GetActorReference().MoveToPackageLocation()
	Attacker3.GetActorReference().MoveToPackageLocation()
	Attacker4.GetActorReference().MoveToPackageLocation()
	Attacker5.GetActorReference().MoveToPackageLocation()
	Attacker6.GetActorReference().MoveToPackageLocation()
	Attacker7.GetActorReference().MoveToPackageLocation()
	Attacker8.GetActorReference().MoveToPackageLocation()
	Attacker9.GetActorReference().MoveToPackageLocation()
	Attacker10.GetActorReference().MoveToPackageLocation()
	Defender1.GetActorReference().MoveToPackageLocation()
	Defender2.GetActorReference().MoveToPackageLocation()
	Defender3.GetActorReference().MoveToPackageLocation()
	Defender4.GetActorReference().MoveToPackageLocation()
	Defender5.GetActorReference().MoveToPackageLocation()
	Defender6.GetActorReference().MoveToPackageLocation()
	Defender7.GetActorReference().MoveToPackageLocation()
	Defender8.GetActorReference().MoveToPackageLocation()
	Defender9.GetActorReference().MoveToPackageLocation()
	Defender10.GetActorReference().MoveToPackageLocation()
endFunction

Bool function IsPlayerIsNearAFriendly(Bool PlayerIsAttacking)

	ObjectReference PlayerRef = game.GetPlayer() as ObjectReference
	if PlayerIsAttacking
		return PlayerRef.GetDistance(Attacker1.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Attacker2.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Attacker3.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Attacker4.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Attacker5.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Attacker6.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Attacker7.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Attacker8.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Attacker9.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Attacker10.GetReference()) < DistanceToArmyToCompleteObjective as Float
	else
		return PlayerRef.GetDistance(Defender1.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Defender2.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Defender3.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Defender4.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Defender5.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Defender6.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Defender7.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Defender8.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Defender9.GetReference()) < DistanceToArmyToCompleteObjective as Float || PlayerRef.GetDistance(Defender10.GetReference()) < DistanceToArmyToCompleteObjective as Float
	endIf
endFunction

function tryToPulseTrigger(referencealias TriggerAliasToTry)

	ObjectReference TriggerRef = TriggerAliasToTry.GetReference()
	if TriggerRef
		TriggerRef.Disable(false)
		TriggerRef.Enable(false)
	endIf
endFunction

Bool function IsPlayerAttacking()

	Int owner = CWs.GetOwner(Fort.GetLocation())
	if owner != CWs.iImperials && owner != CWs.iSons
		
	endIf
	if CWs.PlayerAllegiance != CWs.iImperials && CWs.PlayerAllegiance != CWs.iSons
		
	endIf
	if owner == CWs.PlayerAllegiance
		return false
	else
		return true
	endIf
endFunction

function pulseTriggers()

	self.tryToPulseTrigger(TriggerPhase2A)
	self.tryToPulseTrigger(TriggerPhase2B)
	self.tryToPulseTrigger(TriggerPhase2C)
	self.tryToPulseTrigger(TriggerPhase2D)
	self.tryToPulseTrigger(TriggerPhase2E)
	self.tryToPulseTrigger(TriggerPhase3A)
	self.tryToPulseTrigger(TriggerPhase3B)
	self.tryToPulseTrigger(TriggerPhase3C)
	self.tryToPulseTrigger(TriggerPhase3D)
	self.tryToPulseTrigger(TriggerPhase3E)
	self.tryToPulseTrigger(TriggerPhase4A)
	self.tryToPulseTrigger(TriggerPhase4B)
	self.tryToPulseTrigger(TriggerPhase4C)
	self.tryToPulseTrigger(TriggerPhase4D)
	self.tryToPulseTrigger(TriggerPhase4E)
	self.tryToPulseTrigger(TriggerPhase5A)
	self.tryToPulseTrigger(TriggerPhase5B)
	self.tryToPulseTrigger(TriggerPhase5C)
	self.tryToPulseTrigger(TriggerPhase5D)
	self.tryToPulseTrigger(TriggerPhase5E)
endFunction

function RegisterInteriorDefenderAliases(referencealias RefAlias1, referencealias RefAlias2, referencealias RefAlias3, referencealias RefAlias4, referencealias RefAlias5, referencealias RefAlias6, referencealias RefAlias7, referencealias RefAlias8, referencealias RefAlias9, referencealias RefAlias10, referencealias RefAlias11, referencealias RefAlias12, referencealias RefAlias13, referencealias RefAlias14, referencealias RefAlias15, referencealias RefAlias16)

	InteriorDefender1 = RefAlias1
	InteriorDefender2 = RefAlias2
	InteriorDefender3 = RefAlias3
	InteriorDefender4 = RefAlias4
	InteriorDefender5 = RefAlias5
	InteriorDefender6 = RefAlias6
	InteriorDefender7 = RefAlias7
	InteriorDefender8 = RefAlias8
	InteriorDefender9 = RefAlias9
	InteriorDefender10 = RefAlias10
	InteriorDefender11 = RefAlias11
	InteriorDefender12 = RefAlias12
	InteriorDefender13 = RefAlias13
	InteriorDefender14 = RefAlias14
	InteriorDefender15 = RefAlias15
	InteriorDefender16 = RefAlias16
endFunction

function DisableInteriorDefenders()

	self.tryToDisableAlias(InteriorDefender1)
	self.tryToDisableAlias(InteriorDefender2)
	self.tryToDisableAlias(InteriorDefender3)
	self.tryToDisableAlias(InteriorDefender4)
	self.tryToDisableAlias(InteriorDefender5)
	self.tryToDisableAlias(InteriorDefender6)
	self.tryToDisableAlias(InteriorDefender7)
	self.tryToDisableAlias(InteriorDefender8)
	self.tryToDisableAlias(InteriorDefender9)
	self.tryToDisableAlias(InteriorDefender10)
	self.tryToDisableAlias(InteriorDefender11)
	self.tryToDisableAlias(InteriorDefender12)
	self.tryToDisableAlias(InteriorDefender13)
	self.tryToDisableAlias(InteriorDefender14)
	self.tryToDisableAlias(InteriorDefender15)
	self.tryToDisableAlias(InteriorDefender16)
endFunction

function EnableBarricadesIfIsPlayerAttacking()

	if self.IsPlayerAttacking()
		self.EnableBarricades()
	endIf
endFunction

function tryToDisableAlias(referencealias AliasToDisable)

	if AliasToDisable
		ObjectReference RefToDisable = AliasToDisable.GetReference()
		if RefToDisable
			RefToDisable.Disable(false)
		endIf
	endIf
endFunction

function SetStageBasedOnTrigger(ObjectReference TriggerRef)

	form TriggerBase = TriggerRef.GetBaseObject()
	if self.GetStageDone(QuestStageToCompleteOrFailMeetArmyObjective) == false
		self.setStage(QuestStageToCompleteOrFailMeetArmyObjective)
	endIf
	if self.IsPlayerAttacking() || self.GetStageDone(QuestStageToSetWhenBarricadesAreDestroyed)
		if TriggerBase == CWFortSiegePhase1Trigger as form
			self.setStage(QuestStageForPhase1)
		elseIf TriggerBase == CWFortSiegePhase2Trigger as form
			self.setStage(QuestStageForPhase2)
		elseIf TriggerBase == CWFortSiegePhase3Trigger as form
			self.setStage(QuestStageForPhase3)
		elseIf TriggerBase == CWFortSiegePhase4Trigger as form
			self.setStage(QuestStageForPhase4)
		elseIf TriggerBase == CWFortSiegePhase5Trigger as form
			self.setStage(QuestStageForPhase5)
		endIf
	elseIf TriggerBase == CWFortSiegePhase1Trigger as form || TriggerBase == CWFortSiegePhase2Trigger as form
		
	else
		if BarricadesEnabled == false
			self.EnableBarricades()
		endIf
		if self.GetStageDone(QuestStageForPhase2) == false
			self.setStage(QuestStageForPhase2)
		endIf
	endIf
endFunction

function tryToCreateInteriorDefender(location FortLocation, referencealias InteriorSpawner, referencealias InteriorDefender)

	actorbase DefenderActorBase
	ObjectReference InteriorSpawnerRef = InteriorSpawner.GetReference()
	if CWs.GetDefender(FortLocation) == CWs.iImperials
		DefenderActorBase = CWFortSiegeImperial
	elseIf CWs.GetDefender(FortLocation) == CWs.iSons
		DefenderActorBase = CWFortSiegeSons
	endIf
	if InteriorSpawnerRef
		ObjectReference DefenderRef = InteriorSpawnerRef.PlaceActorAtMe(DefenderActorBase, 4, none) as ObjectReference
		InteriorDefender.ForceRefTo(DefenderRef)
	endIf
endFunction

function CreateInteriorDefenders(location FortLocation)

	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner1, InteriorDefender1)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner2, InteriorDefender2)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner3, InteriorDefender3)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner4, InteriorDefender4)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner5, InteriorDefender5)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner6, InteriorDefender6)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner7, InteriorDefender7)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner8, InteriorDefender8)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner9, InteriorDefender9)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner10, InteriorDefender10)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner11, InteriorDefender11)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner12, InteriorDefender12)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner13, InteriorDefender13)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner14, InteriorDefender14)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner15, InteriorDefender15)
	self.tryToCreateInteriorDefender(FortLocation, InteriorSpawner16, InteriorDefender16)
endFunction

function RegisterInteriorSpawnerAliases(referencealias RefAlias1, referencealias RefAlias2, referencealias RefAlias3, referencealias RefAlias4, referencealias RefAlias5, referencealias RefAlias6, referencealias RefAlias7, referencealias RefAlias8, referencealias RefAlias9, referencealias RefAlias10, referencealias RefAlias11, referencealias RefAlias12, referencealias RefAlias13, referencealias RefAlias14, referencealias RefAlias15, referencealias RefAlias16)

	InteriorSpawner1 = RefAlias1
	InteriorSpawner2 = RefAlias2
	InteriorSpawner3 = RefAlias3
	InteriorSpawner4 = RefAlias4
	InteriorSpawner5 = RefAlias5
	InteriorSpawner6 = RefAlias6
	InteriorSpawner7 = RefAlias7
	InteriorSpawner8 = RefAlias8
	InteriorSpawner9 = RefAlias9
	InteriorSpawner10 = RefAlias10
	InteriorSpawner11 = RefAlias11
	InteriorSpawner12 = RefAlias12
	InteriorSpawner13 = RefAlias13
	InteriorSpawner14 = RefAlias14
	InteriorSpawner15 = RefAlias15
	InteriorSpawner16 = RefAlias16
endFunction

function tryToEnableAlias(referencealias AliasToEnable)

	if AliasToEnable
		ObjectReference RefToEnable = AliasToEnable.GetReference()
		if RefToEnable
			RefToEnable.Enable(false)
			actor actorToEnable = RefToEnable as actor
			if actorToEnable
				actorToEnable.MoveToPackageLocation()
			endIf
		endIf
	endIf
endFunction

function DisableBarricades()

	ObjectReference Barricade1Ref = Barricade1.GetReference()
	ObjectReference Barricade2Ref = Barricade2.GetReference()
	ObjectReference Barricade3Ref = Barricade3.GetReference()
	ObjectReference Barricade4Ref = Barricade4.GetReference()
	ObjectReference Barricade5Ref = Barricade5.GetReference()
	if Barricade1Ref
		Barricade1Ref.Disable(false)
	endIf
	if Barricade2Ref
		Barricade2Ref.Disable(false)
	endIf
	if Barricade3Ref
		Barricade3Ref.Disable(false)
	endIf
	if Barricade4Ref
		Barricade4Ref.Disable(false)
	endIf
	if Barricade5Ref
		Barricade5Ref.Disable(false)
	endIf
endFunction

Event OnStoryEvent(Keyword akKeyword, Location akLocation = none, ObjectReference akRef1 = none, ObjectReference akRef2 = none, int aiValue1 = 0, int aiValue2 = 0)
	if aiValue1 > 0
		SetStage(aiValue1)
	endif
endevent
