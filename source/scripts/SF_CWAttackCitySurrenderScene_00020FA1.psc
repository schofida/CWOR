scriptName SF_CWAttackCitySurrenderScene_00020FA1 extends Scene hidden

;-- Properties --------------------------------------
idle property pa_2HMKillMoveDecapSlash auto
faction property CWSurrenderTemporaryAllies auto
referencealias property FieldCO auto
referencealias property Justiciar auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

function Fragment_4()

	Justiciar.getactorreference().SetAV("Health", 1 as Float)
endFunction

function Fragment_1()

	FieldCO.getactorreference().StopCombatAlarm()
endFunction

function Fragment_14()

	Justiciar.getactorreference().GetActorBase().setessential(false)
endFunction

function Fragment_11()

	Justiciar.getactorreference().GetActorBase().setessential(true)
endFunction

function Fragment_9()

	Justiciar.getactorreference().setactorvalue("Health", 1 as Float)
endFunction

function Fragment_0()

	if self.GetOwningQuest().GetStage() < 50
		self.GetOwningQuest().SetStage(50)
	endIf
endFunction

; Skipped compiler generated GetState
