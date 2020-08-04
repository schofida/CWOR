scriptName CWMission04Script extends CWMissionScript conditional
{Extends CWMissionScript which extends Quest}

;-- Properties --------------------------------------
referencealias property Prisoner2 auto
referencealias property Friend auto
Int property followState auto conditional hidden
outfit property CWMission04OutfitSons auto
referencealias property PrisonerDoor1 auto
musictype property MUSCombatCivilWar auto
faction property CWMission04PrisonerFreedFaction auto
referencealias property Friendly3 auto
referencealias property AttackMarker auto
referencealias property Prisoner4 auto
referencealias property Prisoner3 auto
outfit property CWMission04OutfitImperial auto
locationalias property AttackPoint auto
referencealias property Prisoner1 auto
formlist property CWODoneBeenSiegedYo auto
faction property CWJobFortJailorFaction auto
referencealias property Friendly2 auto
referencealias property Friendly1 auto
topic property CWMission04PrisonerThanksTopic auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function moveFriendliesToAttackMarker()

	objectreference AttackMarkerRef = AttackMarker.GetReference()
	Friend.GetReference().moveto(AttackMarkerRef, 0.000000, 0.000000, 0.000000, true)
	Friendly1.GetReference().moveto(AttackMarkerRef, 0.000000, 0.000000, 0.000000, true)
	Friendly2.GetReference().moveto(AttackMarkerRef, 0.000000, 0.000000, 0.000000, true)
	Friendly3.GetReference().moveto(AttackMarkerRef, 0.000000, 0.000000, 0.000000, true)
endFunction

function checkAllPrisonersKill()

	Actor Prisoner1Actor = Prisoner1.GetActorReference()
	Actor Prisoner2Actor = Prisoner2.GetActorReference()
	Actor Prisoner3Actor = Prisoner3.GetActorReference()
	Actor Prisoner4Actor = Prisoner4.GetActorReference()
	if self.GetStageDone(20) == false && Prisoner1Actor.IsDead() && Prisoner2Actor.IsDead() && Prisoner3Actor.IsDead() && Prisoner1Actor.IsDead()
		self.setStage(21)
	endIf
	self.checkForVictory()
endFunction

function PrisonerGearUp(Actor Prisoner)

	Prisoner.SetFactionRank(CWMission04PrisonerFreedFaction, 1)
	if Prisoner.IsInFaction(CWs.CWImperialFaction)
		Prisoner.SetOutfit(CWMission04OutfitImperial, false)
		Prisoner.AddItem(CWs.CWSoldierImperialGear as form, 1, false)
	else
		Prisoner.SetOutfit(CWMission04OutfitSons, false)
		Prisoner.AddItem(CWs.CWSoldierSonsGear as form, 1, false)
	endIf
	;followState = 1 ;<-- Commented out by USKP 1.3.1. If you told the prisoners to wait, this causes them to ignore your order and attack anyway.
	Prisoner.EvaluatePackage()
endFunction

function checkAllPrisonersFreed()

	Actor Prisoner1Actor = Prisoner1.GetActorReference()
	Actor Prisoner2Actor = Prisoner2.GetActorReference()
	Actor Prisoner3Actor = Prisoner3.GetActorReference()
	Actor Prisoner4Actor = Prisoner4.GetActorReference()
	if (Prisoner1Actor.IsDead() == true || Prisoner1Actor.IsInFaction(CWMission04PrisonerFreedFaction)) && (Prisoner2Actor.IsDead() == true || Prisoner2Actor.IsInFaction(CWMission04PrisonerFreedFaction)) && (Prisoner3Actor.IsDead() == true || Prisoner3Actor.IsInFaction(CWMission04PrisonerFreedFaction)) && (Prisoner4Actor.IsDead() == true || Prisoner4Actor.IsInFaction(CWMission04PrisonerFreedFaction))
		self.setStage(20)
	endIf
	self.checkForVictory()
endFunction

function AddPrisonKey(Actor ActorToAddKeyTo)

	if ActorToAddKeyTo.IsInFaction(CWJobFortJailorFaction) && ActorToAddKeyTo.IsDead() == false
		ActorToAddKeyTo.AddKeyIfNeeded(PrisonerDoor1.GetReference())
	endIf
endFunction

function combatStarted(Actor Soldier, Actor akTarget, Int aeCombatState)

	if Soldier.IsInInterior() == false
		if akTarget == game.GetPlayer() || Prisoner1.GetActorReference() as Bool || Prisoner2.GetActorReference() as Bool || Prisoner3.GetActorReference() as Bool || Prisoner4.GetActorReference() as Bool
			self.setStage(30)
		endIf
	endIf
endFunction

function ForceAliasIntoFortJobAlias(referencealias AliasToCheck, referencealias GatekeeperAlias, referencealias JailorAlias, referencealias ExteriorPatrollerAlias)

	Actor ActorRef = AliasToCheck.GetActorReference()
	
	;USKP 2.0.1 - Check for None, otherwise a whole lot of errors get thrown and nothing productive happens.
	if( ActorRef == None )
		Return
	EndIf
	
	if CWs.IsPlayerInMyFaction(ActorRef) == false
		if ActorRef.IsInFaction(CWs.CWJobFortGatekeeperFaction)
			GatekeeperAlias.ForceRefTo(AliasToCheck.GetReference())
		elseIf ActorRef.IsInFaction(CWs.CWJobFortJailorFaction)
			JailorAlias.ForceRefTo(AliasToCheck.GetReference())
		elseIf ActorRef.IsInFaction(CWs.CWJobFortPatrolExteriorFaction)
			ExteriorPatrollerAlias.ForceRefTo(AliasToCheck.GetReference())
		endIf
	endIf
endFunction

; Skipped compiler generated GotoState

function checkForVictory()

	if self.GetStageDone(20) && AttackPoint.GetLocation().GetRefTypeAliveCount(CWs.CWSoldier) == 0
		self.setStage(50)
	endIf
endFunction

; Skipped compiler generated GetState
