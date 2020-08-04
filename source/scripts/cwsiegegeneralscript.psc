scriptName cwsiegegeneralscript extends ReferenceAlias

;-- Properties --------------------------------------
ReferenceAlias property Rikke auto
ReferenceAlias property Galmar auto
ReferenceAlias property Ulfric auto	; Reddit BugFix #14
ReferenceAlias property Tulius auto	; Reddit BugFix #14

;-- Variables ---------------------------------------
Int stageToSetAfterFightingForAwhile
Int secondsToFightForBeforeSettingStage
Bool FightingForAwhile
Int DistanceToPlayerNeeded = 500
Int countSecondsFighting
Int stageToSetWhenPlayerNear = 10

;-- Functions ---------------------------------------

function StartCheckingDistanceToPlayer()

	self.GotoState("CheckDistanceToPlayer")
	self.RegisterForUpdate(5 as Float)
endFunction

; Skipped compiler generated GotoState

function FightForAwhile(Int SecondsToFightFor, Int stageToSetWhenDoneFighting)

	objectreference selfRef = self.GetReference()
	self.GotoState("FightingForAwhile")
	secondsToFightForBeforeSettingStage = SecondsToFightFor
	stageToSetAfterFightingForAwhile = stageToSetWhenDoneFighting
	FightingForAwhile = true
	self.RegisterForUpdate(5 as Float)
endFunction

; Skipped compiler generated GetState

;-- State -------------------------------------------
state CheckDistanceToPlayer

	function OnUpdate()

		quest myOwningQuest = self.GetOwningQuest()
		objectreference selfRef = self.GetReference()
		if selfRef == Rikke.getactorreference() || SelfRef == Galmar.getactorreference() || selfRef == Ulfric.GetActorReference() || selfRef == Tulius.GetActorReference() 	; Reddit BugFix #14
			self.UnregisterForUpdate()
		else
			if selfRef.GetDistance(game.GetPlayer() as objectreference) <= DistanceToPlayerNeeded as Float
				myOwningQuest.setStage(stageToSetWhenPlayerNear)
				self.UnregisterForUpdate()
			endIf
			if myOwningQuest.GetStage() >= stageToSetWhenPlayerNear
				self.UnregisterForUpdate()
			endIf
		endIf
	endFunction
endState

;-- State -------------------------------------------
state FightingForAwhile

	function OnUpdate()

		quest myOwningQuest = self.GetOwningQuest()
		objectreference selfRef = self.GetReference()
		if myOwningQuest.GetStage() >= stageToSetAfterFightingForAwhile
			self.UnregisterForUpdate()
			FightingForAwhile = false
		endIf
		if myOwningQuest.GetStageDone(stageToSetAfterFightingForAwhile)
			FightingForAwhile = false
			self.UnregisterForUpdate()
		elseIf FightingForAwhile
			countSecondsFighting += 1
			if countSecondsFighting > secondsToFightForBeforeSettingStage
				FightingForAwhile = false
				self.UnregisterForUpdate()
				myOwningQuest.setStage(stageToSetAfterFightingForAwhile)
			endIf
		endIf
	endFunction
endState
