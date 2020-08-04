scriptName SABETME3FactionScript extends ActiveMagicEffect

;-- Properties --------------------------------------
faction property CWImperialFactionNPC auto
actor property PlayerRef auto
faction property CWSoldierPlayerEnemyFaction auto
faction property PlayerFaction auto
faction property CWSonsFactionNPC auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function OnInit()

	PlayerRef.RemoveFromFaction(PlayerFaction)
	PlayerRef.RemoveFromFaction(CWImperialFactionNPC)
	PlayerRef.RemoveFromFaction(CWSonsFactionNPC)
endFunction
