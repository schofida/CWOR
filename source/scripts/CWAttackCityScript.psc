scriptName CWAttackCityScript extends CWMissionScript conditional
{Extends CWMissionScript which extends Quest}

;-- Properties --------------------------------------
outfit property JarlClothesBalgruuf auto
outfit property ArmorBalgruufSteelPlateNoHelmetOutfit auto
scene property CWAttackCityConfrontationScene auto
locationalias property City auto
referencealias property CWOBattleGalmar auto
scene property CWAttackCityJarlBleedingOutScene auto
musictype property MUSCombatCivilWar auto
referencealias property CWOTullius auto
Int property jarlHasSurrendered auto conditional hidden
scene property CWAttackCitySurrenderScene auto
faction property CWSoldierPlayerEnemy auto
referencealias property CWOBattleRikke auto
actorbase property CWSiegeSonsSoldier auto
actorbase property CWSiegeWhiterunImperialSoldier auto
quest property CWSiegeObj auto
referencealias property CWOUlfric auto
referencealias property CWSiegeObjJarl auto
{Alias Jarl in CWSiegeObj quest}
weather property SkyrimOvercastWar auto
cwsiegescript property CWSiegeS auto
Int property jarlWillSurrender auto conditional hidden

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

; Skipped compiler generated GetState

function OnUpdate()

	while game.GetPlayer().IsInLocation(City.GetLocation())
		utility.wait(5 as Float)
	endWhile
	CWSiegeS.Stop()
	self.Stop()
endFunction
