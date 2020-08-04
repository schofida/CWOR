scriptName QF_CWOAddPerksQuest_02035BDD extends Quest hidden

;-- Properties --------------------------------------

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

function Fragment_0()

	Quest __temp = self as Quest
	cwoaddperksscript kmyQuest = __temp as cwoaddperksscript
	kmyQuest.PlayerRef.AddPerk(kmyQuest.Perk1)
	kmyQuest.PlayerRef.AddPerk(kmyQuest.Perk2)
	kmyQuest.PlayerRef.AddPerk(kmyQuest.Perk3)
	kmyQuest.PlayerRef.AddPerk(kmyQuest.Perk4)
	kmyQuest.PlayerRef.AddPerk(kmyQuest.Perk5)
endFunction

; Skipped compiler generated GotoState
