scriptName CWSiegeCityDoorScript extends ReferenceAlias
{Handles the City Door during the sieges.}

;-- Properties --------------------------------------
actor property HadvarRef auto
message property CWSiegeDoorDefendMessage auto
{message to show when activating the door and stage < DoorBlockedUntilStageDuringAttack}
actor property RalofRef auto
Int property DoorBlockedUntilStageDuringDefense auto
{Stage in CWSiegeAttackQuest it's okay to allow player to enter city on defense.}
Int property AttackQuestStageToSetOnEnter auto
{Stage in CWSiegeAttackQuest to set when player to enters city.}
message property CWSiegeDoorAttackMessage auto
{message to show when activating the door and stage < DoorBlockedUntilStageDuringAttack}
Int property DoorBlockedUntilStageDuringAttack auto
{Stage in CWSiegeAttackQuest it's okay to allow player to enter city on attack.}
cwscript property CWs auto
quest property CWAttackCity auto
{Pointer to CWAttackCity quest}
ReferenceAlias property CWAttackCityFriendAlias auto
{Friend alias in CWAttackCity Quest}

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

; Skipped compiler generated GetState

function onActivate(objectReference triggerRef)

	if self.GetOwningQuest().GetStage() > 0
		if (self.GetOwningQuest() as cwsiegescript).IsAttack()
			if self.GetOwningQuest().GetStage() < DoorBlockedUntilStageDuringAttack && triggerRef == game.GetPlayer() as objectReference
				cwsiegescript myQuestScript = self.GetOwningQuest() as cwsiegescript
				location myCity = myQuestScript.City.GetLocation()
				if myCity == CWs.RiftenLocation
					self.GetOwningQuest().setstage(50)
				elseIf CWSiegeDoorAttackMessage.show(0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000) == 1
					self.GetOwningQuest().setstage(50)
				endIf
			elseIf self.GetOwningQuest().GetStageDone(DoorBlockedUntilStageDuringAttack) == true
				if triggerRef == game.GetPlayer() as objectReference
					self.GetReference().BlockActivation(false)
					self.GetReference().Activate(triggerRef, true)
					self.GetOwningQuest().setstage(AttackQuestStageToSetOnEnter)
					Int waitedFor = 0
					cwsiegescript myquestscript = self.GetOwningQuest() as cwsiegescript
					location mycity = myquestscript.City.GetLocation()
					if( myCity == CWs.WhiterunLocation ) ;USLEEP 3.0.6 Bug #21161
						actor myFriend
						while CWAttackCity.IsRunning() == false && waitedFor < 60
							utility.wait(1 as Float)
							waitedFor += 1
						endWhile
						if CWs.PlayerAllegiance == CWs.iImperials
							myFriend = HadvarRef
						else
							myFriend = RalofRef
						endIf
						CWAttackCityFriendAlias.ForceRefTo(myFriend as objectReference)
						CWAttackCity.setstage(10)
					elseIf self.GetOwningQuest().GetStage() >= 40
						self.GetOwningQuest().setstage(50)
						self.GetReference().BlockActivation(false)
						self.GetReference().Activate(triggerRef, true)
						self.GetOwningQuest().setstage(AttackQuestStageToSetOnEnter)
						waitedFor = 0
						myquestscript = self.GetOwningQuest() as cwsiegescript
						mycity = myquestscript.City.GetLocation()
						if CWs.WhiterunLocation
							actor myfriend
							while CWAttackCity.IsRunning() == false && waitedFor < 60
								utility.wait(1 as Float)
								waitedFor += 1
							endWhile
							if CWs.PlayerAllegiance == CWs.iImperials
								myfriend = HadvarRef
							else
								myfriend = RalofRef
							endIf
							CWAttackCityFriendAlias.ForceRefTo(myfriend as objectReference)
							CWAttackCity.setstage(10)
						endIf
					endIf
				else
					self.GetOwningQuest().setstage(50)
					self.GetReference().BlockActivation(false)
					self.GetReference().Activate(triggerRef, true)
					self.GetOwningQuest().setstage(AttackQuestStageToSetOnEnter)
					Int waitedfor = 0
					cwsiegescript myquestscript = self.GetOwningQuest() as cwsiegescript
					location mycity = myquestscript.City.GetLocation()
					if CWs.WhiterunLocation
						actor myfriend
						while CWAttackCity.IsRunning() == false && waitedfor < 60
							utility.wait(1 as Float)
							waitedfor += 1
						endWhile
						if CWs.PlayerAllegiance == CWs.iImperials
							myfriend = HadvarRef
						else
							myfriend = RalofRef
						endIf
						CWAttackCityFriendAlias.ForceRefTo(myfriend as objectReference)
						CWAttackCity.setstage(10)
					endIf
				endIf
			endIf
		elseIf self.GetOwningQuest().GetStage() > 0 && self.GetOwningQuest().GetStage() < DoorBlockedUntilStageDuringDefense && triggerRef == game.GetPlayer() as objectReference
			CWSiegeDoorDefendMessage.show(0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		endIf
	endIf
endFunction
