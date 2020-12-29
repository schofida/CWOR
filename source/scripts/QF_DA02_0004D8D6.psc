;/ Decompiled by Champollion V1.0.1
Source   : QF_DA02_0004D8D6.psc
Modified : 2014-03-28 17:39:55
Compiled : 2014-03-28 17:39:57
User     : Slugman
Computer : SLUGMAN-PC
/;
scriptName QF_DA02_0004D8D6 extends Quest hidden

;-- Properties --------------------------------------
referencealias property Alias_Enemy3 auto
referencealias property Alias_GuardBImperial auto
referencealias property Alias_BoethiahsVoiceXMarker auto
referencealias property Alias_PalaceFollowTriggerC auto
referencealias property Alias_Enemy14 auto
referencealias property Alias_Cultist4 auto
locationalias property Alias_BluePalace auto
referencealias property Alias_GuardBSons auto
referencealias property Alias_Cultist5SpawnMarker auto
referencealias property Alias_ShrineCenterMarker auto
referencealias property Alias_DeadFriend auto
referencealias property Alias_Enemy5 auto
referencealias property Alias_GuardMarkerB auto
referencealias property Alias_Fighter1 auto
referencealias property Alias_DungeonToggle auto
referencealias property Alias_DungeonMapMarker auto
referencealias property Alias_ElisifMarker auto
referencealias property Alias_GuardASons auto
referencealias property Alias_Fighter1Spawn auto
referencealias property Alias_Cultist3 auto
referencealias property Alias_Cultist5 auto
referencealias property Alias_BoethiahsConduit auto
referencealias property Alias_FriendEscort auto
referencealias property Alias_Fighter2 auto
referencealias property Alias_Enemy9 auto
referencealias property Alias_Fighter2Spawn auto
referencealias property Alias_GuardDSons auto
referencealias property Alias_Enemy13 auto
referencealias property Alias_GuardMarkerA auto
referencealias property Alias_PalaceFollowTriggerA auto
referencealias property Alias_Cultist2 auto
referencealias property Alias_BolgeirBearclaw auto
referencealias property Alias_Cultist1 auto
referencealias property Alias_Cultist3SpawnMarker auto
referencealias property Alias_Cultist2SpawnMarker auto
referencealias property Alias_GuardMarkerD auto
referencealias property Alias_GuardMarkerC auto
referencealias property Alias_PalaceFollowTriggerB auto
referencealias property Alias_Pillar auto
referencealias property Alias_PalaceWarnTrigger auto
referencealias property Alias_Cultist4SpawnMarker auto
referencealias property Alias_GuardCSons auto
referencealias property Alias_ElisifIsEssential auto
achievementsscript property AchievementsQuest auto
referencealias property Alias_PillarLookUpMarker auto
referencealias property Alias_Enemy8 auto
referencealias property Alias_Champion auto
referencealias property Alias_PalaceAttackTrigger auto
referencealias property Alias_GuardCImperial auto
referencealias property Alias_ElisifWelcomeTrigger auto
referencealias property Alias_Enemy11 auto
referencealias property Alias_GuardDImperial auto
referencealias property Alias_GuardAImperial auto
referencealias property Alias_Cultist1SpawnMarker auto
referencealias property Alias_Enemy6 auto
referencealias property Alias_Enemy1 auto
referencealias property Alias_ShrineApproachTrigger auto
referencealias property Alias_ElisifAfraidTrigger auto
referencealias property Alias_Enemy4 auto
referencealias property Alias_Enemy12 auto
referencealias property Alias_Enemy2 auto
referencealias property Alias_Elisif auto
referencealias property Alias_ElisifDoor auto
referencealias property Alias_Enemy10 auto
locationalias property Alias_Dungeon auto
referencealias property Alias_Enemy7 auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_37()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 6
	Alias_Fighter1.GetActorRef().SetGhost(false)
	Alias_Fighter2.GetActorRef().SetGhost(false)
endFunction

function Fragment_40()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 11
	self.SetObjectiveCompleted(10, true)
	kmyQuest.DA02FightScene2.stop()
	Alias_Fighter1.GetActorReference().StopCombat()
	Alias_Fighter2.GetActorReference().StopCombat()
	Alias_Fighter1.GetActorRef().SetGhost(false)
	Alias_Fighter2.GetActorRef().SetGhost(false)
	kmyQuest.resurrectCounduit(none)
	kmyQuest.DA02BoethiahScene1.Start()
endFunction

function Fragment_11()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 17
	if kmyQuest.DA02BoethiahScene2.IsPlaying()
		kmyQuest.DA02BoethiahScene2.stop()
		Int WaitingFor = 0
		while kmyQuest.DA02BoethiahScene2.IsPlaying()
			utility.wait(1 as Float)
			WaitingFor += 1
		endWhile
	endIf
	kmyQuest.resurrectCounduit(none)
	Alias_BoethiahsConduit.GetActorReference().EvaluatePackage()
	if self.getStageDone(15)
		self.SetObjectiveCompleted(15, true)
	endIf
	self.setObjectiveDisplayed(101, true, false)
endFunction

function Fragment_48()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 21
	kmyQuest.warnedChampion = 1
endFunction

function Fragment_57()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 9
	self.setstage(10)
	self.SetObjectiveCompleted(101, true)
	kmyQuest.releaseConduit()
endFunction

; Skipped compiler generated GotoState

function Fragment_55()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 60
	Alias_Elisif.GetActorReference().AddToFaction(kmyQuest.DA02ElisifAfraidOfPlayer)
	Alias_Elisif.GetActorReference().SetAV("Aggression", 2 as Float)
	Alias_Elisif.GetActorReference().SetAV("Confidence", 0 as Float)
endFunction

function Fragment_36()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 4
	kmyQuest.DA02FightScene2.Start()
	Alias_Fighter1.GetActorRef().SetGhost(true)
	Alias_Fighter2.GetActorRef().SetGhost(true)
endFunction

function Fragment_58()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 41
endFunction

function Fragment_30()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 1
	self.setObjectiveDisplayed(1, true, false)
	kmyQuest.DA02BoethiahShrineMapMarker.AddToMap(false)
endFunction

function Fragment_27()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 100
	kmyQuest.resurrectCounduit(Alias_Elisif)
	kmyQuest.DA02BoethiahElisifScene.Start()
endFunction

function Fragment_32()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 10
	self.SetObjectiveCompleted(5, true)
	self.setObjectiveDisplayed(10, true, false)
	objectreference PlayerRef = game.GetPlayer() as objectreference
	PlayerRef.AddItem(kmyQuest.DA02Dagger as form, 1, false)
	if PlayerRef.GetItemCount(kmyQuest.DA02Book as form) < 1
		PlayerRef.AddItem(kmyQuest.DA02Book as form, 1, false)
	endIf
endFunction

function Fragment_2()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 7
endFunction

function Fragment_54()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 81
	(Alias_ElisifDoor as da02elisifdoorscript).UnlockDoor()
	kmyQuest.DA02BodyGuardScene.Start()
endFunction

function Fragment_52()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 80
	kmyQuest.DA02FriendEscortScene.Start()
endFunction

function Fragment_35()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 5
	self.SetObjectiveCompleted(1, true)
	self.setObjectiveDisplayed(5, true, false)
endFunction

function Fragment_12()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 20
	Alias_DungeonMapMarker.GetReference().AddToMap(false)
	self.SetObjectiveCompleted(15, true)
	self.setObjectiveDisplayed(20, true, false)
	kmyQuest.releaseConduit()
	kmyQuest.PillarStop()
	if self.IsObjectiveDisplayed(100) && self.IsObjectiveCompleted(100) == false
		self.SetObjectiveCompleted(100, true)
	endIf
	if self.IsObjectiveDisplayed(101) && self.IsObjectiveCompleted(101) == false
		self.SetObjectiveCompleted(101, true)
	endIf
	Alias_Champion.GetReference().Enable(false)
	Alias_Enemy1.TryToReset()
	Alias_Enemy2.TryToReset()
	Alias_Enemy3.TryToReset()
	Alias_Enemy4.TryToReset()
	Alias_Enemy5.TryToReset()
	Alias_Enemy6.TryToReset()
	Alias_Enemy7.TryToReset()
	Alias_Enemy8.TryToReset()
	Alias_Enemy9.TryToReset()
	Alias_Enemy10.TryToReset()
	Alias_Enemy11.TryToReset()
	Alias_Enemy12.TryToReset()
	Alias_Enemy13.TryToReset()
	Alias_Enemy14.TryToReset()
	Alias_DungeonToggle.GetReference().disable(false)
	if Alias_Champion.GetActorReference().isDead()
		if self.getStageDone(30) == 0 as Bool
			self.setstage(30)
		else
			self.setstage(31)
		endIf
	endIf
endFunction

; Skipped compiler generated GetState

function Fragment_38()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 15
	self.SetObjectiveCompleted(5, true)
	self.SetObjectiveCompleted(10, true)
	self.setObjectiveDisplayed(15, true, false)
	kmyQuest.releaseConduit()
	kmyQuest.DA02FightScene2.stop()
	kmyQuest.DA02BoethiahScene1.stop()
	Alias_Cultist1.GetActorRef().AddToFaction(kmyQuest.DA02CultistsAreEnemies)
	Alias_Cultist2.GetActorRef().AddToFaction(kmyQuest.DA02CultistsAreEnemies)
	Alias_Cultist3.GetActorRef().AddToFaction(kmyQuest.DA02CultistsAreEnemies)
	Alias_Cultist4.GetActorRef().AddToFaction(kmyQuest.DA02CultistsAreEnemies)
	Alias_Cultist5.GetActorRef().AddToFaction(kmyQuest.DA02CultistsAreEnemies)
	Alias_Fighter1.GetActorRef().AddToFaction(kmyQuest.DA02CultistsAreEnemies)
	Alias_Fighter2.GetActorRef().AddToFaction(kmyQuest.DA02CultistsAreEnemies)
	Alias_Cultist1.GetActorRef().SetAV("Aggression", 3 as Float)
	Alias_Cultist2.GetActorRef().SetAV("Aggression", 3 as Float)
	Alias_Cultist3.GetActorRef().SetAV("Aggression", 3 as Float)
	Alias_Cultist4.GetActorRef().SetAV("Aggression", 3 as Float)
	Alias_Cultist5.GetActorRef().SetAV("Aggression", 3 as Float)
	Alias_Fighter1.GetActorRef().SetAV("Aggression", 3 as Float)
	Alias_Fighter2.GetActorRef().SetAV("Aggression", 3 as Float)
endFunction

function Fragment_43()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 30
	if self.getStageDone(20)
		self.SetObjectiveCompleted(20, true)
		self.setObjectiveDisplayed(30, true, false)
	endIf
	if game.GetPlayer().IsEquipped(kmyQuest.DA02Cuirass as form)
		self.setstage(40)
	endIf
endFunction

function Fragment_46()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 40
	self.SetObjectiveCompleted(30, true)
	AchievementsQuest.IncDaedricArtifacts()
	Alias_BoethiahsVoiceXMarker.GetReference().MoveTo(game.GetPlayer() as objectreference, 0.000000, 0.000000, 0.000000, true)
	Alias_BoethiahsConduit.ForceRefTo(Alias_BoethiahsVoiceXMarker.GetReference())
	kmyQuest.DA02BoethiahArmorWornScene.Start()
	(Alias_BoethiahsConduit as da02boethiahsconduitscript).startIMODs()
endFunction

function Fragment_50()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 70
	kmyQuest.soundAlarm(game.GetPlayer() as objectreference)
endFunction

function Fragment_42()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 12
	kmyQuest.FXShrineofBoethiaOrbRef.playAnimation("playanim01")
	kmyQuest.DA02FightScene2.stop()
	kmyQuest.DA02BoethiahScene1.stop()
	kmyQuest.DA02BoethiahScene2.Start()
	kmyQuest.PillarTrappedVictim = 2
endFunction

function Fragment_59()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 30
	if self.getStageDone(20)
		self.SetObjectiveCompleted(20, true)
		self.setObjectiveDisplayed(30, true, false)
	endIf
	if game.GetPlayer().IsEquipped(kmyQuest.DA02Cuirass as form)
		self.setstage(40)
	endIf
endFunction

function Fragment_29()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 200
	kmyQuest.DA02KillObj.setstage(200)
	kmyQuest.releaseConduit()
	kmyQuest.DA02Post.Start()
	self.stop()
endFunction

function Fragment_47()

	Quest __temp = self as Quest
	da02script kmyQuest = __temp as da02script
	kmyQuest.stage = 50
	AchievementsQuest.IncDaedricQuests()
	(Alias_BoethiahsConduit as da02boethiahsconduitscript).stopIMODs(true)
	self.stop()
endFunction
