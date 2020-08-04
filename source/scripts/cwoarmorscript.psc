scriptName CWOArmorScript extends ReferenceAlias

;-- Properties --------------------------------------
keyword property ImperialKeyword auto
globalvariable property CWODisguiseGlobal auto
faction property PlayerFaction auto
formlist property ImperialArmor auto
keyword property SonsKeyword2 auto
quest property MQ302 auto
formlist property SonsArmor auto
keyword property ImperialKeyword3 auto
keyword property ImperialKeyword2 auto
globalvariable property CWPlayerAllegiance auto
keyword property SonsKeyword auto
faction property CWSonsFactionNPC auto
quest property CWFinale auto
Bool property PeaceTreaty auto
faction property CWImperialFactionNPC auto

globalvariable property CWOStillABetterEndingGlobal auto

;-- Variables ---------------------------------------
Bool IsNowImperial
Actor PlayerRef
Bool WeTookItOff
Form WhatArmor
Bool isWorn
Bool wasSons
Bool IsNowSons
Bool wasImperial

;-- Functions ---------------------------------------
; Reddit BugFix #8
function EquipmentUpdate()
	WhatArmor = PlayerRef.GetWornForm(4)
	if PlayerRef.IsInFaction(CWSonsFactionNPC) && PeaceTreaty == false
		if WhatArmor.HasKeyword(ImperialKeyword) || WhatArmor.HasKeyword(ImperialKeyword2) || WhatArmor.HasKeyword(ImperialKeyword3)
			CWODisguiseGlobal.SetValueInt(1)
			PlayerFaction.SetAlly(CWImperialFactionNPC, false, false)
		else
			CWODisguiseGlobal.SetValueInt(0)
			PlayerFaction.SetEnemy(CWImperialFactionNPC, false, false)
		endIf
	elseIf PlayerRef.IsInFaction(CWImperialFactionNPC) && PeaceTreaty == false
		if WhatArmor.HasKeyword(SonsKeyword) || WhatArmor.HasKeyword(SonsKeyword2)
			PlayerFaction.SetAlly(CWSonsFactionNPC, false, false)
			CWODisguiseGlobal.SetValueInt(1)
		else
			PlayerFaction.SetEnemy(CWSonsFactionNPC, false, false)
			CWODisguiseGlobal.SetValueInt(0)
		endIf
	endIf
endFunction
; Reddit BugFix #8
event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	EquipmentUpdate()
endEvent
; Reddit BugFix #8
event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
	EquipmentUpdate()
endEvent
; Reddit BugFix #8
event OnLocationChange(Location akOldLoc, Location akNewLoc)
	EquipmentUpdate()
	if CWFinale.IsRunning() && CWOStillABetterEndingGlobal.GetValueInt() < 1
		PlayerRef.RemoveFromFaction(CWImperialFactionNPC)
		PlayerRef.RemoveFromFaction(CWSonsFactionNPC)
		CWODisguiseGlobal.SetValueInt(0)
		self.GetOwningQuest().Stop()
	endIf
	if MQ302.IsRunning()
		if MQ302.GetStage() > 30
			PeaceTreaty = true
			PlayerFaction.SetAlly(self.ReturnEnemyFaction(), false, false)
		else
			PeaceTreaty = false
		endIf
	else
		PeaceTreaty = false
	endIf
	; self.RegisterforSingleUpdate(10 as Float) ; Reddit BugFix #8
endEvent

; Skipped compiler generated GetState

function OnInit()

	PlayerRef = game.GetPlayer()
	PeaceTreaty = false
	; self.RegisterforSingleUpdate(10 as Float) ; Reddit BugFix #8
endFunction

faction function ReturnEnemyFaction()

	if PlayerRef.IsInFaction(CWSonsFactionNPC)
		return CWImperialFactionNPC
	elseIf PlayerRef.IsInFaction(CWImperialFactionNPC)
		return CWSonsFactionNPC
	endIf
endFunction

; Skipped compiler generated GotoState
