Scriptname CWFinaleScript extends Quest Conditional

CWScript Property CWs  Auto  

CWFortSiegeScript Property CWFortSiegeS Auto

ReferenceAlias Property Leader Auto
ReferenceAlias Property Second Auto

ReferenceAlias Property EnemyLeader Auto
ReferenceAlias Property EnemySecond Auto

ReferenceAlias Property Door1 Auto
ReferenceAlias Property Door2 Auto
ReferenceAlias Property Door3 Auto
ReferenceAlias Property Door4 Auto
ReferenceAlias Property Door5 Auto

ReferenceAlias Property CrowdMarker1 Auto
ReferenceAlias Property CrowdMarker2 Auto
ReferenceAlias Property CrowdMarker3 Auto
ReferenceAlias Property CrowdMarker4 Auto
ReferenceAlias Property CrowdMarker5 Auto
ReferenceAlias Property CrowdMarker6 Auto
ReferenceAlias Property CrowdMarker7 Auto
ReferenceAlias Property CrowdMarker8 Auto
ReferenceAlias Property CrowdMarker9 Auto
ReferenceAlias Property CrowdMarker10 Auto
ReferenceAlias Property CrowdMarker11 Auto
ReferenceAlias Property CrowdMarker12 Auto
ReferenceAlias Property CrowdMarker13 Auto
ReferenceAlias Property CrowdMarker14 Auto
ReferenceAlias Property CrowdMarker15 Auto

ReferenceAlias Property CrowdMember1 Auto
ReferenceAlias Property CrowdMember2 Auto
ReferenceAlias Property CrowdMember3 Auto
ReferenceAlias Property CrowdMember4 Auto
ReferenceAlias Property CrowdMember5 Auto
ReferenceAlias Property CrowdMember6 Auto
ReferenceAlias Property CrowdMember7 Auto
ReferenceAlias Property CrowdMember8 Auto
ReferenceAlias Property CrowdMember9 Auto
ReferenceAlias Property CrowdMember10 Auto
ReferenceAlias Property CrowdMember11 Auto
ReferenceAlias Property CrowdMember12 Auto
ReferenceAlias Property CrowdMember13 Auto
ReferenceAlias Property CrowdMember14 Auto
ReferenceAlias Property CrowdMember15 Auto

LocationAlias Property AliasLocation Auto

Location Property SolitudeLocation Auto
Location Property WindhelmLocation Auto

Scene Property CWFinaleSolitudeSceneA Auto
Scene Property CWFinaleSolitudeSceneB Auto
Scene Property CWFinaleSolitudeSceneC Auto
Scene Property CWFinaleSolitudeSceneD Auto

Scene Property CWFinaleWindhelmSceneA Auto
Scene Property CWFinaleWindhelmSceneB Auto
Scene Property CWFinaleWindhelmSceneC Auto
Scene Property CWFinaleWindhelmSceneD Auto


ActorBase Property CWFinaleSoldierImperial Auto
ActorBase Property CWFinaleSoldierSons Auto

Faction Property CWImperialFactionNPC Auto
Faction Property CWSonsFactionNPC Auto

Faction Property CrimeFactionHaafingar Auto
Faction Property CrimeFactionEastmarch Auto

float Property PauseBeforeScene = 0.1 Auto

int Property ExecutePrompt Auto	Conditional hidden	;set stage 210, set in scene phase result script, used to conditionalize dialogue on Leader asking player to slay EnemyLeader

LeveledItem Property CWFinaleFactionLeaderSwordList Auto

Faction Property CWFinaleTemporaryAllies  Auto  

;CWO
leveleditem property CWOFinaleFactionLeaderSwordListSons auto
faction property CWOTemporaryAllies auto
leveleditem property CWOFinaleFactionLeaderSwordListImperial auto
globalvariable property CWOStillABetterEndingGlobal auto
faction property CWPlayerEnemyFaction auto
;Schofida - Add extra doors in case mods add extra doors to Castle Dour/Palace of Kings
ReferenceAlias Property Door6  Auto  
ReferenceAlias Property Door7  Auto  
ReferenceAlias Property Door8  Auto  
ReferenceAlias Property Door9  Auto  
ReferenceAlias Property Door10  Auto  
;CWO

function unlockDoors()
	UnlockMe(Door1)
	UnlockMe(Door2)
	UnlockMe(Door3)
	UnlockMe(Door4)
	UnlockMe(Door5)
	;schofida
	UnlockMe(Door6)
	UnlockMe(Door7)
	UnlockMe(Door8)
	UnlockMe(Door9)
	UnlockMe(Door10)

EndFunction

;schofida - helper function
function lockDoors()
	lockMe(Door1)
	lockMe(Door2)
	lockMe(Door3)
	lockMe(Door4)
	lockMe(Door5)
	;schofida
	lockMe(Door6)
	lockMe(Door7)
	lockMe(Door8)
	lockMe(Door9)
	lockMe(Door10)
endfunction

function EnemySecondDied()
 	CWScript.Log("CWFinaleScript", self + "EnemySecondDied() waiting for leader to be in bleedout, then will stop combat and start scene.")
	
	int waitingFor
	
	Actor EnemyLeaderActor = EnemyLeader.GetActorReference()
	
	while EnemyLeaderActor.isBleedingOut() == False && CWOStillABetterEndingGlobal.GetValueInt() < 1 ;schofida - this will trigger in losing battle when leader is killed off screen
		Utility.wait(1)
		waitingFor += 1
 		CWScript.Log("CWFinaleScript", self + "EnemySecondDied() waiting for leader to be in bleedout. Waiting for " + waitingFor)
	
	EndWhile


	setStage(200)

	Actor PlayerActor = Game.GetPlayer()
	
	EnemyLeader.TryToRemoveFromFaction(CrimeFactionHaafingar)
	EnemyLeader.TryToRemoveFromFaction(CrimeFactionEastmarch)
	
	EnemyLeaderActor.RemoveFromFaction(CWImperialFactionNPC)
	EnemyLeaderActor.RemoveFromFaction(CWSonsFactionNPC)
	
	makeMeStopCombat(Leader)
	makeMeStopCombat(Second)
	makeMeStopCombat(EnemyLeader)
	
	PlayerActor.StopCombat()
	PlayerActor.StopCombatAlarm()

	CWFinaleSolitudeSceneA.stop()
	
	Utility.Wait(PauseBeforeScene)
	
	startSceneB()
	
EndFunction

function startSceneA()
	Location myLocation = AliasLocation.GetLocation()
	
	if myLocation == SolitudeLocation
		CWFinaleSolitudeSceneA.start()
		
	Else	;we'll assume it's windhelm
		CWFinaleWindhelmSceneA.start()
	
	EndIf

EndFunction

function UnlockMe(referencealias DoorToUnlock, Int UnlockLevel = 255)

	objectreference DoorRef = DoorToUnlock.GetReference()
	;USKP 2.0.2 - These doors can be optional.
	if( DoorRef )
		DoorRef.lock(false)
	EndIf
endFunction

function RemoveCrowd()

 	CWScript.Log("CWFinaleScript", self + "MakeCrowd() will delete crowd aliases.")

	CrowdMember1.GetReference().Delete()
	CrowdMember2.GetReference().Delete()
	CrowdMember3.GetReference().Delete()
	CrowdMember4.GetReference().Delete()
	CrowdMember5.GetReference().Delete()
	CrowdMember6.GetReference().Delete()
	CrowdMember7.GetReference().Delete()
	CrowdMember8.GetReference().Delete()
	CrowdMember9.GetReference().Delete()
	CrowdMember10.GetReference().Delete()
	CrowdMember11.GetReference().Delete()
	CrowdMember12.GetReference().Delete()
	CrowdMember13.GetReference().Delete()
	CrowdMember14.GetReference().Delete()
	CrowdMember15.GetReference().Delete()
	

EndFunction

function lockMe(referencealias DoorToLock, Int lockLevel = 255)

	objectreference DoorRef = DoorToLock.GetReference()
	;USKP 2.0.2 - These doors can be optional.
	if( DoorRef )
		DoorRef.SetLockLevel(lockLevel)
		DoorRef.Lock()
	EndIf
endFunction

Function PlayerEnteredCastle()
	setStage(100)
	
	Actor PlayerActor = Game.GetPlayer()

 	CWScript.Log("CWFinaleScript", self + "PlayerEnteredCastle() Moving actors, setting up scene, and locking doors.")
	
	 ;schofida - call helper function instead
	LockDoors()
	
	makeMeStopCombat(Leader)
	makeMeStopCombat(Second)
	makeMeStopCombat(EnemyLeader)
	makeMeStopCombat(EnemySecond)
	
	PlayerActor.StopCombat()
	PlayerActor.StopCombatAlarm()

	if CWOStillABetterEndingGlobal.GEtValueInt() == 1 ;CWO
		Leader.TryToMoveTo(PlayerActor as objectreference) ;CWO
		Second.TryToMoveTo(PlayerActor as objectreference) ;CWO
	else ;CWO
		Leader.TryToMoveTo(EnemyLeader.GetActorReference() as objectreference)
		Second.TryToMoveTo(EnemySecond.GetActorReference() as objectreference)
	endIf
	
	EnemyLeader.TryToRemoveFromFaction(CrimeFactionHaafingar)
	EnemyLeader.TryToRemoveFromFaction(CrimeFactionEastmarch)

	EnemySecond.TryToRemoveFromFaction(CrimeFactionHaafingar)
	EnemySecond.TryToRemoveFromFaction(CrimeFactionEastmarch)
	
	MakeCrowd()	;THIS MUST HAPPEN BEFORE YOU START THE SCENE as it reevals actors in running scenes, and can break the scene
	
	;wait before scene otherwise you miss the first bit of dialogue about locking the door
	;Game.DisablePlayerControls() - CWO Comment Out
	Utility.Wait(PauseBeforeScene)
	
	startSceneA()
	
	;TURN OFF THE FORT SIEGE
	CWFortSiegeS.DisableAllAliases()
	
; 	CWScript.Log("CWFinaleScript", "PlayerEnteredCastle() calling stop() on CWFortSiege")
	CWFortSiegeS.stop()	;this doesn't finish shutting down until after the player leaves.
	
	
EndFunction

function MakeCrowd()
 	CWScript.Log("CWFinaleScript", self + "MakeCrowd() will create crowd aliases.")
	
	MakeCrowdMember(CrowdMarker1, CrowdMember1)
	MakeCrowdMember(CrowdMarker2, CrowdMember2)
	MakeCrowdMember(CrowdMarker3, CrowdMember3)
	MakeCrowdMember(CrowdMarker4, CrowdMember4)
	MakeCrowdMember(CrowdMarker5, CrowdMember5)
	MakeCrowdMember(CrowdMarker6, CrowdMember6)
	MakeCrowdMember(CrowdMarker7, CrowdMember7)
	MakeCrowdMember(CrowdMarker8, CrowdMember8)
	MakeCrowdMember(CrowdMarker9, CrowdMember9)
	MakeCrowdMember(CrowdMarker10, CrowdMember10)
	MakeCrowdMember(CrowdMarker11, CrowdMember11)
	MakeCrowdMember(CrowdMarker12, CrowdMember12)
	MakeCrowdMember(CrowdMarker13, CrowdMember13)
	MakeCrowdMember(CrowdMarker14, CrowdMember14)
	MakeCrowdMember(CrowdMarker15, CrowdMember15)
	
EndFunction

function startSceneB()
	Location myLocation = AliasLocation.GetLocation()
	
	if myLocation == SolitudeLocation
		CWFinaleSolitudeSceneB.start()
		
	Else	;we'll assume it's windhelm
		CWFinaleWindhelmSceneB.start()
	
	EndIf

EndFunction

Function MakeCrowdMember(ReferenceAlias MarkerAlias, ReferenceAlias MemberAlias)
	ObjectReference MarkerRef = MarkerAlias.GetReference()
	
	if MarkerRef
	
		if CWs.PlayerAllegiance == CWs.iImperials
			MemberAlias.ForceRefTo(MarkerRef.PlaceActorAtMe(CWFinaleSoldierImperial))
		
		Elseif CWs.PlayerAllegiance == CWs.iSons
			MemberAlias.ForceRefTo(MarkerRef.PlaceActorAtMe(CWFinaleSoldierSons))
			
		Else
 			CWScript.Log("CWFinaleScript", self + "MakeCrowdMember() found unexpect PlayerAllegiance, expected 1 or 2. Got " + CWs.PlayerAllegiance)
		EndIf
		
	EndIf

EndFunction

function makeMeStopCombat(ReferenceAlias ActorAliasToChillOut)

	Actor ActorToChillOut = ActorAliasToChillOut.GetActorReference()

	ActorToChillOut.EvaluatePackage()	;should eval to a ignore combat package	
	ActorToChillOut.stopCombat()
	ActorToChillOut.StopCombatAlarm()

	

EndFunction