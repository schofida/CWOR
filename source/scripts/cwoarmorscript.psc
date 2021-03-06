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
globalvariable property CWODisguiseGameType auto

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
	if CWODisguiseGameType.GetValueInt() == 2
		CWODisguiseGlobal.SetValueInt(1)
		ReturnEnemyFaction().SetEnemy(PlayerFaction, true, true)
		return
	endif
	WhatArmor = PlayerRef.GetWornForm(4)
	if (CWFinale as cwfinalescript).CWs.playerAllegiance == (CWFinale as cwfinalescript).CWs.iSons && PeaceTreaty == false
		if CWODisguiseGameType.GetValueInt() == 1
			if WhatArmor.HasKeyword(SonsKeyword) || WhatArmor.HasKeyword(SonsKeyword2)
				CWODisguiseGlobal.SetValueInt(0)
				CWImperialFactionNPC.SetEnemy(PlayerFaction, false, false)
			else
				CWODisguiseGlobal.SetValueInt(1)
				CWImperialFactionNPC.SetEnemy(PlayerFaction, true, true)
			endIf
		else
			if WhatArmor.HasKeyword(ImperialKeyword) || WhatArmor.HasKeyword(ImperialKeyword2) || WhatArmor.HasKeyword(ImperialKeyword3)
				CWODisguiseGlobal.SetValueInt(1)
				CWImperialFactionNPC.SetEnemy(PlayerFaction, true, true)
			else
				CWODisguiseGlobal.SetValueInt(0)
				CWImperialFactionNPC.SetEnemy(PlayerFaction, false, false)
			endIf
		endif
	elseIf (CWFinale as cwfinalescript).CWs.playerAllegiance == (CWFinale as cwfinalescript).CWs.iImperials && PeaceTreaty == false
		if CWODisguiseGameType.GetValueInt() == 1
			if WhatArmor.HasKeyword(ImperialKeyword) || WhatArmor.HasKeyword(ImperialKeyword2) || WhatArmor.HasKeyword(ImperialKeyword3)
				CWODisguiseGlobal.SetValueInt(0)
				CWSonsFactionNPC.SetEnemy(PlayerFaction, false, false)
			else
				CWODisguiseGlobal.SetValueInt(1)
				CWSonsFactionNPC.SetEnemy(PlayerFaction, true, true)
			endIf
		else
			if WhatArmor.HasKeyword(SonsKeyword) || WhatArmor.HasKeyword(SonsKeyword2)
				CWSonsFactionNPC.SetEnemy(PlayerFaction, true, true)
				CWODisguiseGlobal.SetValueInt(1)
			else
				CWSonsFactionNPC.SetEnemy(PlayerFaction, false, false)
				CWODisguiseGlobal.SetValueInt(0)
			endIf
		endif
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
		CWODisguiseGlobal.SetValueInt(0)
		self.GetOwningQuest().Stop()
	endIf
	if MQ302.IsRunning()
		if MQ302.GetStage() > 30
			PeaceTreaty = true
			self.ReturnEnemyFaction().SetEnemy(PlayerFaction, true, true)
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

	if (CWFinale as cwfinalescript).CWs.playerAllegiance == (CWFinale as cwfinalescript).CWs.iSons
		return CWImperialFactionNPC
	elseIf (CWFinale as cwfinalescript).CWs.playerAllegiance == (CWFinale as cwfinalescript).CWs.iImperials
		return CWSonsFactionNPC
	endIf
endFunction

; Skipped compiler generated GotoState
