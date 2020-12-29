;/ Decompiled by Champollion V1.0.1
Source   : DA02Script.psc
Modified : 2014-03-28 17:39:52
Compiled : 2014-03-28 17:40:13
User     : Slugman
Computer : SLUGMAN-PC
/;
scriptName DA02Script extends Quest conditional

;-- Properties --------------------------------------
scene property DA02BoethiahArmorWornScene auto
objectreference property ShrineOfBoethiahRef auto
armor property DA02Cuirass auto
referencealias property Cultist3 auto
scene property DA02BoethiahElisifScene auto
referencealias property GuardB auto
actor property CWOGuardB auto
Int property InWarnArea auto conditional hidden
objectreference property DA02PillarRef auto
key property SolitudeBluePalaceServantsKey auto
Int property GuardForcegreet auto conditional hidden
Int property ReasonGiven auto conditional hidden
locationreftype property DA02PalaceAttackTrigger auto
faction property DA02GuardsPlayerEnemy auto
faction property DA02CultistsAreEnemies auto
Quest property DA02KillObj auto
referencealias property BoethiahsConduit auto
Int property InOfflimitsArea auto conditional hidden
visualeffect property DA02SummonValorTargetFX auto
Int property FriendPresent auto hidden
Int property warnedChampion auto conditional hidden
scene property DA02SoundAlarmScene auto
objectreference property DA02BoethiahShrineMapMarker auto
Int property PillarTrappedVictim auto conditional
Quest property DA02Post auto
actor property CWOGuardA auto
referencealias property Fighter2 auto
Int property championDead auto conditional hidden
faction property DA02ElisifAfraidOfPlayer auto
imagespacemodifier property DA02ResurrectBlur auto
referencealias property Cultist4 auto
imagespacemodifier property DA02ResurrectBlurAnimated auto
scene property DA02BoethiahScene2 auto
Quest property DA02GuardWarn auto
book property DA02Book auto
referencealias property GuardD auto
referencealias property GuardA auto
Int property NearEscort auto conditional hidden
weapon property DA02Dagger auto
actor property CWOGuardC auto
Int property stage auto conditional
scene property DA02BoethiahScene1 auto
faction property WINoBodyCleanupFaction auto
referencealias property Champion auto
locationreftype property DA02PalaceFollowTrigger auto
referencealias property Cultist2 auto
referencealias property Cultist5 auto
Int property InFollowArea auto conditional hidden
scene property DA02PillarTrapScene auto
location property SolitudeBluePalaceLocation auto
Int property foundMail auto conditional hidden
referencealias property Fighter1 auto
referencealias property FriendEscort auto
referencealias property DeadFriend auto
scene property DA02BodyGuardScene auto
objectreference property FXShrineofBoethiaOrbRef auto
scene property DA02FightScene2 auto
referencealias property Cultist1 auto
actor property CWOGuardD auto
locationreftype property DA02PalaceWarnTrigger auto
referencealias property GuardC auto
Int property countCultists = 5 auto hidden
Int property countContenders = 3 auto hidden
scene property DA02FriendEscortScene auto
faction property DA02CulistsPlayerEnemy auto
scene property DA02GuardALostDetectionScene auto

;-- Variables ---------------------------------------
Int stageToStopPollingForDetection = 70
Bool PlayerKnownToBeInFollowArea
Int friendEscortDistance = 300
Int conduitAssistance
Int GuardDetectionPollingFrequency = 1
Int secondsWithoutDetectionAllowed = 10
Bool KilledFriend
Int conduitAggression
Int secondsWithoutDetection

;-- Functions ---------------------------------------

function killPreviousConduit()

	actor Conduit = BoethiahsConduit.GetActorReference()
	if Conduit
		Conduit.SetGhost(false)
		Conduit.kill(game.GetPlayer())
	endIf
endFunction

function givePlayerServantsKey(actor ActorGivingKey)

	ActorGivingKey.RemoveItem(SolitudeBluePalaceServantsKey as form, 1, false, none)
	game.GetPlayer().AddItem(SolitudeBluePalaceServantsKey as form, 1, false)
endFunction

function PillarTrap(objectreference akActionRef)

	(akActionRef as actor).setRestrained(true)
	ShrineOfBoethiahRef.playAnimation("playanim01")
	FXShrineofBoethiaOrbRef.playAnimation("playanim02")
	(DA02PillarRef as defaultsoundcontrolscript).playSoundByName("BubbleActivate", none)
	DeadFriend.ForceRefTo(akActionRef)
	PillarTrappedVictim = 1
	DA02PillarTrapScene.start()
endFunction

function PillarKill(actor Victim)

	if KilledFriend == false
		KilledFriend = true
		Victim.kill(game.GetPlayer())
		Victim.AddToFaction(WINoBodyCleanupFaction)
		DA02PillarRef.playAnimation("playanim02")
		(DA02PillarRef as defaultsoundcontrolscript).playSoundByName("ShrineSurge", none)
		ShrineOfBoethiahRef.playAnimation("playanim04")
		utility.wait(3 as Float)
		self.killPreviousConduit()
		BoethiahsConduit.ForceRefTo(Victim as objectreference)
		ShrineOfBoethiahRef.playAnimation("playanim05")
		self.SetStage(11)
	endIf
endFunction

function releaseConduit()
{Unpacifies, unghosts the conduit, and kills it.}

	actor Conduit = BoethiahsConduit.GetActorReference()
	Conduit.SetGhost(false)
	if Conduit.IsEssential()
		Conduit.GetActorBase().SetEssential(false)
	endIf
	Conduit.kill(game.GetPlayer())
	Conduit.SetAv("Aggression", conduitAggression as Float)
	Conduit.SetAv("Assistance", conduitAssistance as Float)
	(BoethiahsConduit as da02boethiahsconduitscript).stopIMODs(true)
endFunction

function processPalaceTrigger(objectreference TriggerRef, Bool IsEntering)

	debug.notification("Trigger processed")
	if IsEntering
		InFollowArea += 1
	else
		InFollowArea -= 1
	endIf
	if TriggerRef.HasRefType(DA02PalaceWarnTrigger)
		if IsEntering
			InWarnArea += 1
		else
			InWarnArea -= 1
		endIf
	endIf
	if TriggerRef.HasRefType(DA02PalaceAttackTrigger)
		if IsEntering
			InOfflimitsArea += 1
		else
			InOfflimitsArea -= 1
		endIf
	endIf
	self.TestGuardDetection()
endFunction

; Skipped compiler generated GotoState

function TestGuardDetection()

	if self.GetStage() >= stageToStopPollingForDetection
		return 
	endIf
	actor GuardActorA = CWOGuardA
	actor GuardActorB = CWOGuardB
	actor GuardActorC = CWOGuardC
	actor GuardActorD = CWOGuardD
	actor PlayerActor = game.GetPlayer()
	actor FriendEscortActor = FriendEscort.GetActorReference()
	if FriendEscortActor != none && PlayerActor.GetDistance(FriendEscortActor as objectreference) <= friendEscortDistance as Float
		NearEscort = 1
	else
		NearEscort = 0
		if PlayerActor.IsDetectedBy(GuardActorA) || PlayerActor.IsDetectedBy(GuardActorB) || PlayerActor.IsDetectedBy(GuardActorC) || PlayerActor.IsDetectedBy(GuardActorD)
			secondsWithoutDetection = 0
			if InFollowArea
				PlayerKnownToBeInFollowArea = true
			else
				PlayerKnownToBeInFollowArea = false
			endIf
			if InWarnArea
				DA02GuardWarn.start()
			endIf
			if InOfflimitsArea
				DA02SoundAlarmScene.start()
			endIf
		elseIf PlayerKnownToBeInFollowArea
			secondsWithoutDetection += 1
			if secondsWithoutDetection > secondsWithoutDetectionAllowed
				DA02SoundAlarmScene.start()
			elseIf DA02GuardALostDetectionScene.IsPlaying() == false
				DA02GuardALostDetectionScene.start()
			endIf
		endIf
	endIf
	GuardActorA.EvaluatePackage()
	GuardActorB.EvaluatePackage()
	GuardActorC.EvaluatePackage()
	GuardActorD.EvaluatePackage()
	self.RegisterForSingleUpdate(GuardDetectionPollingFrequency as Float)
endFunction

function decrementCountCultists(referencealias DeadCultistAlias)

	countCultists -= 1
	self.checkDeadAndSetStage(DeadCultistAlias)
endFunction

function OnUpdate()

	if game.GetPlayer().GetCurrentLocation() == SolitudeBluePalaceLocation
		self.TestGuardDetection()
		self.RegisterForSingleUpdate(3 as Float)
	endIf
endFunction

function resurrectCounduit(referencealias AliasToMakeConduit)
{Sets up the conduit as ghost and so it won't try to kill the player when resurrected}

	if AliasToMakeConduit
		BoethiahsConduit.ForceRefTo(AliasToMakeConduit.GetActorReference() as objectreference)
	endIf
	actor Conduit = BoethiahsConduit.GetActorReference()
	Conduit.SetGhost(true)
	Conduit.StopCombat()
	Conduit.StopCombatAlarm()
	conduitAggression = Conduit.GetAv("Aggression") as Int
	conduitAssistance = Conduit.GetAv("Assistance") as Int
	Conduit.SetAv("Aggression", 0 as Float)
	Conduit.SetAv("Assistance", 0 as Float)
	DA02ResurrectBlurAnimated.Apply(1.00000)
	if Conduit.GetDistance(game.GetPlayer() as objectreference) > 1000 as Float
		Conduit.MoveTo(game.GetPlayer() as objectreference, 0.000000, 0.000000, 0.000000, true)
	endIf
	utility.wait(1 as Float)
	DA02SummonValorTargetFX.play(Conduit as objectreference, 10 as Float, none)
	utility.wait(0.500000)
	Conduit.Resurrect()
	(BoethiahsConduit as da02boethiahsconduitscript).startIMODs()
endFunction

function checkDeadAndSetStage(referencealias DeadCultistAlias)

	if countCultists == 0
		if (Fighter1.GetActorReference().IsDead() || Fighter1.GetActorReference().GetDistance(game.GetPlayer() as objectreference) > 5000 as Float) && (Fighter2.GetActorReference().IsDead() || Fighter2.GetActorReference().GetDistance(game.GetPlayer() as objectreference) > 5000 as Float)
			self.killPreviousConduit()
			BoethiahsConduit.ForceRefTo(DeadCultistAlias.GetReference())
			self.SetStage(17)
		endIf
	endIf
endFunction

function promoteToFriendEscort(actor FriendActor)

	FriendEscort.ForceRefTo(FriendActor as objectreference)
endFunction

function soundAlarm(objectreference ObjectAtWhichToCreateDetectionEvent)

	GuardA.GetActorReference().AddToFaction(DA02GuardsPlayerEnemy)
	GuardB.GetActorReference().AddToFaction(DA02GuardsPlayerEnemy)
	GuardC.GetActorReference().AddToFaction(DA02GuardsPlayerEnemy)
	GuardD.GetActorReference().AddToFaction(DA02GuardsPlayerEnemy)
	ObjectAtWhichToCreateDetectionEvent.CreateDetectionEvent(game.GetPlayer(), 100)
endFunction

function PillarStop()

	ShrineOfBoethiahRef.playAnimation("playanim03")
	DA02PillarRef.playAnimation("playanim03")
	FXShrineofBoethiaOrbRef.playAnimation("playanim01")
	(DA02PillarRef as defaultsoundcontrolscript).stopSoundByName("ShrineSurge", none)
endFunction

; Skipped compiler generated GetState

function MakeCultistsAggressive()

	DA02FightScene2.stop()
	self.SetStage(6)
	Fighter1.GetActorReference().AddToFaction(DA02CulistsPlayerEnemy)
	Fighter2.GetActorReference().AddToFaction(DA02CulistsPlayerEnemy)
	Cultist1.GetActorReference().AddToFaction(DA02CulistsPlayerEnemy)
	Cultist2.GetActorReference().AddToFaction(DA02CulistsPlayerEnemy)
	Cultist3.GetActorReference().AddToFaction(DA02CulistsPlayerEnemy)
	Cultist4.GetActorReference().AddToFaction(DA02CulistsPlayerEnemy)
	Cultist5.GetActorReference().AddToFaction(DA02CulistsPlayerEnemy)
endFunction
