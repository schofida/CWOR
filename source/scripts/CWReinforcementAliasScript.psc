scriptName CWReinforcementAliasScript extends ReferenceAlias

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

; Skipped compiler generated GetState

function OnDeath(Actor akKiller)

	self.getreference().BlockActivation(true)
	(self.GetOwningQuest() as cwreinforcementcontrollerscript).registerDeath(self as ReferenceAlias)
endFunction
