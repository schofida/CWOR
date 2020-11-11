scriptName CWScript extends Quest conditional
{Main script for the Civil War, holds many "global" properties for the system.}

;-- Properties --------------------------------------
globalvariable property CWThreatHouseImperial auto
Int property countWinReachSons auto conditional hidden
referencealias property ExiledImperialMarker auto
referencealias property Alias_FieldCOSonsWinterholdHQ auto
leveleditem property CWRank2RewardSons auto
leveleditem property CWMissionReward auto
globalvariable property CWBattlePhase auto
globalvariable property CWOImperialReinforcements auto
globalvariable property CWOCapitalQuestRunning auto
location property BattleBornFarmLocation auto
objectreference property CWFieldCOMapTableMarkerFalkreathCampImperial auto
referencealias property Alias_FieldCOSonsPaleHQ auto
actorbase property CWPrisonerSonsD auto
Int property strEastmarchImperial auto conditional hidden
location property DawnstarLocation auto
keyword property CW4PrioritySpawn auto
keyword property CWFort auto
globalvariable property CWThreatFenceImperialArcher auto
Int property countCampaigns auto conditional hidden
faction property CWFieldCOPotentialMission2Faction auto
Int property countWinHjaalmarchImperials auto conditional hidden
globalvariable property CWObjHjaalmarch auto
Int property strPaleImperial auto conditional hidden
Int property iWinterhold = 7 auto hidden
Int property strAttacker auto conditional hidden
Quest property CWCitizensFlee auto
location property RoriksteadLocation auto
package property CWRikkeAtCampWhiterun auto
Int property OwnerWinterhold auto conditional hidden
Quest property CW01B auto
Quest property CWPrepareCity auto
leveleditem property CWCourierDocumentsSons auto
faction property CWRewardFactionFalkreath auto
referencealias property Alias_FieldCOSonsReachHQ auto
location property IvarsteadLocation auto
referencealias property Alias_FieldCOSonsHjaalmarchCamp auto
location property WinterholdHoldLocation auto
globalvariable property CWObjReach auto
location property MilitaryCampFalkreathImperialLocation auto
leveleditem property CWRank2RewardImperial auto
package property CWRikkeAtCampEastmarch auto
package property CWRikkeAtCampPale auto
Int property TutorialMissionComplete auto conditional hidden
globalvariable property CWThreatWindowSonsMage auto
Float property attackerCoinToss auto conditional hidden
faction property CWJobFortPatrolExteriorFaction auto
faction property CWBuddies auto
location property RiverwoodLocation auto
message property CWCampaignWonWinterholdImperials auto
keyword property CWFortSiegeSpecialStart auto
message property CWCampaignOutcomeWonDefenseMsgSons auto
Int property strWinterholdSons auto conditional hidden
leveleditem property CWSoldierImperialGear auto
leveleditem property CWRank1RewardSons auto
Int property countWinWhiterunImperials auto conditional hidden
location property WhiterunLocation auto
Quest property CWMiscObj auto
objectreference property MilitaryCampHjaalmarchImperialMapMarker auto
leveleditem property CWSoldierSonsGear auto
keyword property CWFortSiegeMinorCapitalStart auto
Int property StrValueHjaalmarch auto hidden
Float property resolutionDieRoll auto conditional hidden
Int property OwnerRift auto conditional hidden
location property MilitaryCampWhiterunImperialLocation auto
objectreference property CWFieldCOMapTableMarkerWinterholdCampSons auto
globalvariable property CWThreatWallSons auto
keyword property CW3PrioritySpawn auto
location property ReachHoldLocation auto
objectreference property CWFieldCOMapTableMarkerWhiterunCampSons auto
Int property OwnerWhiterun auto conditional hidden
package property CWGalmarAtCampWinterhold auto
globalvariable property CWStateDefenderOutOfReinforcements auto
Int property campaignRunning auto conditional hidden
globalvariable property CWThreatWindowImperialArcher auto
Int property previousAttacker auto conditional hidden
referencealias property Alias_FieldCOSonsWhiterunHQ auto
Int property StrValueHaafingar auto hidden
actorbase property CWSoldierImperial auto
Int property iHaafingar = 1 auto hidden
location property HaafingarHoldLocation auto
location property AngasMillLocation auto
location property PaleHoldLocation auto
Int property previousContestedHold auto conditional hidden
message property CWCampaignWonWhiterunSons auto
Bool property resolutionForced auto conditional hidden
keyword property CWSiegeRunning auto
leveleditem property CWRank3RewardSons auto
globalvariable property CWObjPale auto
location property DragonBridgeLocation auto
globalvariable property CWDefender auto
Bool property WaitingForCWResetGarrisonQuest2 auto hidden
Int property OwnerPale auto conditional hidden
location property LoreiusFarmLocation auto
keyword property CWOEnderCallKey auto
faction property CrimeFactionSons auto
keyword property CW3ForcedSpawn auto
objectreference property CWFieldCOMapTableMarkerHaafingarCampSons auto
location property FalkreathHoldLocation auto
location property MilitaryCampRiftImperialLocation auto
Int property countWinReachImperials auto conditional hidden
globalvariable property CWThreatHouseSons auto
location property ShorsStoneLocation auto
globalvariable property CWStateAttackStarted auto
package property CWGalmarAtCampFalkreath auto
leveleditem property CWRank4RewardSons auto
actorbase property CWPrisonerSonsC auto
faction property CWFieldCOSuccessfulMissionFaction auto
Int property countWinWinterholdSons auto conditional hidden
location property MixwaterMillLocation auto
location property MilitaryCampHjaalmarchSonsLocation auto
Quest property CWFortSiegeCapital auto
faction property CrimeFactionReach auto
objectreference property CWFieldCOMapTableMarkerRiftCampSons auto
Int property strDefender auto conditional hidden
keyword property CW5PrioritySpawn auto
Int property CWMission03Done auto conditional hidden
Int property strFalkreathSons auto conditional hidden
Bool property WaitingForCWResetGarrisonQuest3 auto hidden
globalvariable property CWThreatFenceSonsMage auto
location property MilitaryCampWhiterunSonsLocation auto
Int property strReachImperial auto conditional hidden
keyword property CWGarrisonDefenderOnly auto
Int property PlayerGotIntro auto conditional hidden
faction property CrimeFactionEastmarch auto
globalvariable property CWObjWinterhold auto
Int property OwnerHaafingar auto conditional hidden
globalvariable property CWThreatWindowSonsArcher auto
actorbase property CWPrisonerSonsA auto
Quest property CWResetGarrison2 auto
Quest property CWOIncImperialReinforcements auto
Bool property WinHoldAndSetOwnerAlreadySetKeyword auto hidden
Int property attacker auto conditional hidden
faction property CrimeFactionHaafingar auto
globalvariable property CWThreatWindowSons auto
referencealias property Alias_FieldCOImperialHaafingarCamp auto
objectreference property MilitaryCampPaleImperialMapMarker auto
keyword property CWDiplomaticVictory auto
Quest property CWResetGarrison7 auto
globalvariable property CWThreatStablesImperial auto
location property ChillfurrowFarmLocation auto
faction property CWSoldierMageFaction auto
faction property CWDialogueSoldierFaction auto
objectreference property CWGarrisonEnableMarkerImperialCampEastmarch auto
objectreference property CWCampaignStartMarkerWinterhold auto
keyword property CWResetGarrisonStart2 auto
favordialoguescript property DialogueFavorGenericS auto
globalvariable property CWThreatFenceImperial auto
globalvariable property CWPercentPoolRemainingAttacker auto
Int property iCostNonContestable auto hidden
keyword property CW2ForcedSpawn auto
globalvariable property CWStateAttackerOutOfReinforcements auto
Bool property WaitingForCWResetGarrisonQuest5 auto hidden
Int property strHaafingarSons auto conditional hidden
Int property countWinRiftSons auto conditional hidden
faction property CWJobFortCommanderFaction auto
package property CWGalmarAtCampHjaalmarch auto
globalvariable property CWOStillABetterEndingGlobal auto
location property LastLocAttackedBySons auto hidden
keyword property CWSiegeStart auto
actorbase property CWSoldierSonsNonNPCFaction auto
faction property CWFieldCOFailedMissionFaction auto
globalvariable property CWAttacker auto
Quest property CWFortSiegeFort auto
message property CWCampaignOutcomeLostDefenseMsgSons auto
faction property CWSonsFactionNPC auto
objectreference property CWGarrisonEnableMarkerSonsCampHaafingar auto
referencealias property Alias_FieldCOImperialPaleCamp auto
globalvariable property GameDaysPassed auto
keyword property CWResetGarrisonStart6 auto
Int property countHoldsImperial auto conditional hidden
Float property resolutionResult auto conditional hidden
Quest property CW00B auto
Quest property CWMission07 auto
objectreference property CWFieldCOMapTableMarkerEastmarchCampImperial auto
referencealias property Alias_FieldCOImperialHaafingarHQ auto
faction property CWSoldierArcherFaction auto
message property CWCampaignOutcomeWonAttackMsgSons auto
cwcampaignscript property CWCampaignS auto
globalvariable property CWPlayerAllegiance auto
Int property playerJoinedCampaginReach auto conditional hidden
referencealias property Alias_FieldCOSonsWhiterunCamp auto
actorbase property CWSoldierImperialNonNPCFaction auto
keyword property CWEventHappening auto
faction property CrimeFactionWinterhold auto
keyword property CWCampSons auto
Int property playerAllegiance auto conditional hidden
location property MilitaryCampReachImperialLocation auto
Int property countWinWinterholdImperials auto conditional hidden
globalvariable property CWODefendingActive auto
location property HollyfrostFarmLocation auto
location property WindhelmLocation auto
package property CWRikkeAtCampRift auto
referencealias property Alias_FieldCOSonsHaafingarHQ auto
referencealias property Alias_FieldCOSonsHjaalmarchHQ auto
location property KatlasFarmLocation auto
globalvariable property CWOAttackerReinforcements auto
keyword property CWResetGarrisonStart5 auto
keyword property CWCampImperial auto
location property HeartwoodMillLocation auto
referencealias property Alias_FieldCOImperialWinterholdHQ auto
objectreference property CWFieldCOMapTableMarkerWinterholdCampImperial auto
referencealias property Alias_FieldCOImperialFalkreathCamp auto
leveleditem property CWRank4RewardImperial auto
objectreference property MilitaryCampWhiterunSonsMapMarker auto
globalvariable property CWOCapitalReinforcements auto
message property CWCampaignWonRiftImperials auto
package property CWRikkeAtCampReach auto
cwalliesscript property CWAlliesS auto
Int property strWinterholdImperial auto conditional hidden
Float property SalaryMultRank4 auto hidden
Int property iCostPatrol auto hidden
Int property iCostSmall auto hidden
faction property CWSoldierDefenderFaction auto
objectreference property CWFieldCOMapTableMarkerReachCampImperial auto
message property CWCampaignWonFalkreathSons auto
Int property playerJoinedCampaginWhiterun auto conditional hidden
Int property iRift = 9 auto hidden
globalvariable property CWThreatTreeSons auto
faction property IsGuardFaction auto
keyword property CWOwner auto
faction property CWFieldCOHooksAcceptedFaction auto
Int property countWinPaleImperials auto conditional hidden
location property PelagiaFarmLocation auto
referencealias property ImperialFactionHQMarker auto
globalvariable property CWThreatTowerImperial auto
Bool property WinningHoldAndSettingOwnerPleaseWait auto hidden
actorbase property CWPrisonerSonsB auto
objectreference property CWGarrisonEnableMarkerSonsCampFalkreath auto
keyword property CWResetGarrisonStart1 auto
objectreference property CWFieldCOMapTableMarkerRiftCampImperial auto
Quest property CWResetGarrison1 auto
Int property iImperials = 1 auto hidden
location property HlaaluFarmLocation auto
Bool property WhiterunSiegeFinished auto conditional hidden
Quest property CW01A auto
message property CWCampaignOutcomeWonAttackMsgImperial auto
Int property StrValueWhiterun auto hidden
Int property PlayerJoinedCurrentCampaign auto hidden
actorbase property CWSoldierSonsNotGuardNonNPCFaction auto
locationreftype property CWResolutionJarlGuardMarker auto
outfit property CWSoldierImperialSoldierOutfit auto
faction property CrimeFactionWhiterun auto
Int property iCostLarge auto hidden
globalvariable property CWMissionsForRank4 auto
objectreference property MilitaryCampHaafingarSonsMapMarker auto
actorbase property CWSoldierImperialNotGuardNonNPCFaction auto
Int property iCostMedium auto hidden
globalvariable property CWThreatWindowImperialMage auto
keyword property CWAttackCityStart auto
leveleditem property CWBearArmorPlayerReward auto
message property CWCampaignTruce auto
Bool property WaitingForCWResetGarrisonQuest1 auto hidden
faction property CWSonsFaction auto
actorbase property CWSoldierImperialNotGuard auto
Int property CountMissionSuccess auto conditional hidden
globalvariable property CWThreatWallSonsArcher auto
objectreference property CWFieldCOMapTableMarkerWhiterunCampImperial auto
objectreference property CWFieldCOMapTableMarkerPaleCampSons auto
keyword property CWResetGarrisonStart8 auto
objectreference property MilitaryCampReachSonsMapMarker auto
Int property consecutiveAttacks auto conditional hidden
globalvariable property CWOFirstMissionGlobal auto
Int property debugStartingCampaignPhase auto conditional hidden
Int property iCurrentOwner = -999 auto hidden
referencealias property Alias_FieldCOSonsEastmarchCamp auto
keyword property CWCitizensFleeStart auto
location property DarkwaterCrossingLocation auto
globalvariable property CWCountMissionsDone auto
location property SarethiFarmLocation auto
globalvariable property TimeScale auto
Float property SalaryMultRank1 auto hidden
Quest property CWResetGarrison5 auto
faction property CrimeFactionFalkreath auto
Int property strRiftSons auto conditional hidden
objectreference property CWFieldCOMapTableMarkerHjaalmarchCampSons auto
Int property AttackDelta auto conditional hidden
Int property init auto hidden
globalvariable property CWThreatBridgeImperial auto
globalvariable property CWMissionsForRank1 auto
globalvariable property CWCountHoldsImperial auto
Int property debugTreatCityCapitalsAsTowns auto conditional hidden
Bool property EastmarchFortBattleComplete auto hidden
message property CWCampaignWonHjaalmarchImperials auto
globalvariable property CWThreatFenceSons auto
location property FortGreymoorLocation auto
Int property strHaafingarImperial auto conditional hidden
Int property StrValueFalkreath auto hidden
globalvariable property CWThreatRockSons auto
referencealias property Alias_FieldCOImperialEastmarchHQ auto
referencealias property Alias_FieldCOImperialRiftCamp auto
Int property choosingHold auto conditional hidden
keyword property CWEscapeCityStart auto
Int property iSons = 2 auto hidden
Quest property CWSiegeDefendObj auto
globalvariable property CWThreatFenceImperialMage auto
package property CWGalmarAtCampWhiterun auto
actorbase property CWSoldierSons auto
keyword property CWCost auto
Int property StrValuePale auto hidden
Int property iCostFort auto hidden
location property HalfmoonMillLocation auto
globalvariable property CWThreatWallSonsMage auto
objectreference property CWFieldCOMapTableMarkerFalkreathCampSons auto
Int property iBothFactions = 3 auto hidden
Int property strWhiterunSons auto conditional hidden
message property CWCampaignOutcomeLostAttackMsgSons auto
message property CWCampaignOutcomeLostDefenseMsgImperial auto
leveleditem property CWRank3RewardImperial auto
globalvariable property CWODontRunQuests auto
referencealias property Alias_FieldCOImperialRiftHQ auto
Int property strWhiterunImperial auto conditional hidden
Int property PlayerRank auto conditional hidden
referencealias property Alias_FieldCOImperialHjaalmarchCamp auto
keyword property CWMissionStart auto
keyword property CWResolution01Start auto
Int property defender auto conditional hidden
Int property strRiftImperial auto conditional hidden
keyword property CWGarrison auto
objectreference property CWCampaignStartMarkerHaafingar auto
package property CWGalmarAtCampPale auto
referencealias property AliasFactionLeader auto
location property StonehillsLocation auto
globalvariable property CWThreatFenceSonsArcher auto
Int property debugAllowNonAdjacentHolds auto conditional hidden
referencealias property Alias_FieldCOImperialReachCamp auto
Int property countWinFalkreathImperials auto conditional hidden
location property MilitaryCampHjaalmarchImperialLocation auto
globalvariable property CWThreatStablesSons auto
Quest property CWResetGarrison6 auto
cwsiegescript property CWSiegeS auto
globalvariable property CWThreatTreeImperial auto
package property CWGalmarAtCampHaafingar auto
package property CWGalmarAtCampReach auto
referencealias property Alias_FieldCOSonsWinterholdCamp auto
referencealias property Alias_FieldCOImperialFalkreathHQ auto
leveleditem property CWRank1RewardImperial auto
location property FortDunstadLocation auto
globalvariable property CWOHijackYes auto
locationreftype property CWResolutionJarlMarker auto
locationalias property CWFortSiegeCapitalFort auto
Quest property CWSiege auto
keyword property CWOMission05Key auto
Quest property CWMission05 auto
message property CWCampaignWonPaleSons auto
package property CWGalmarAtCampRift auto
location property HjaalmarchHoldLocation auto
globalvariable property CWOCourierSentGlobal auto
globalvariable property CWObjFalkreath auto
Quest property CWOStillABetterEndingObjective auto
spell property CWOStillABetterEndingAbility auto
Quest property CW00A auto
keyword property CWCampaignStart auto
globalvariable property CWOWhatAreWeRunning auto
location property WhistlingMineLocation auto
Quest property CWOStillABetterEndingMonitor auto
Quest property CWOStilABetterEndingMonitor auto
Quest property CWOIncSonsReinforcements auto
Int property countWinWhiterunSons auto conditional hidden
globalvariable property CWODefenderReinforcements auto
Quest property CWReset auto
Int property playerJoinedCampaginRift auto conditional hidden
globalvariable property CWStateAttackerLowReinforcements auto
Bool property EnemyFortsAddedBackToWar auto conditional hidden
globalvariable property CWObjHaafingar auto
globalvariable property CWOSonsReinforcements auto
location property FalkreathLocation auto
objectreference property MilitaryCampWinterholdSonsMapMarker auto
keyword property cwopartycrasher auto
globalvariable property CWThreatTowerSonsArcher auto
referencealias property FieldCO auto
referencealias property Ulfric auto
location property FortAmolLocation auto
message property CWCampaignWonWinterholdSons auto
message property CWCampaignWonWhiterunImperials auto
message property CWCampaignWonRiftSons auto
Int property strHjaalmarchSons auto conditional hidden
message property CWCampaignWonReachSons auto
message property CWCampaignWonReachImperials auto
Int property CWMission06Done auto conditional hidden
globalvariable property CWThreatTowerSons auto
location property SolitudeSawmillLocation auto
message property CWCampaignWonHjaalmarchSons auto
Int property iEastmarch = 8 auto hidden
referencealias property Alias_FieldCOSonsEastmarchHQ auto
globalvariable property CWMissionsForRank3 auto
Quest property CWCampaignObj auto
globalvariable property CWThreatWallImperial auto
faction property CWDialogueSoldierWaitingToDefendFaction auto
keyword property CW4ForcedSpawn auto
faction property CWRewardFactionWinterhold auto
locationreftype property CWSoldier auto
keyword property CWResolution02Start auto
globalvariable property CWThreatTowerImperialMage auto
referencealias property Alias_FieldCOImperialEastmarchCamp auto
globalvariable property CWObjWhiterun auto
Int property OwnerReach auto conditional hidden
referencealias property Alias_FieldCOSonsFalkreathCamp auto
location property MilitaryCampPaleSonsLocation auto
keyword property CWFinaleStart auto
keyword property LocTypeCity auto
objectreference property CWCampaignStartMarkerEastmarch auto
location property SalviusFarmLocation auto
keyword property CW5ForcedSpawn auto
actorbase property CWPrisonerImperialA auto
keyword property CW1ForcedSpawn auto
keyword property CW2PrioritySpawn auto
Int property strEastmarchSons auto conditional hidden
faction property CrimeFactionPale auto
keyword property CW1PrioritySpawn auto
keyword property CWPrepareCityStart auto
keyword property CWResetGarrisonStart7 auto
keyword property CWResetGarrisonStart4 auto
faction property GovSons auto
objectreference property CWFieldCOMapTableMarkerPaleCampImperial auto
package property CWRikkeAtCampWinterhold auto
location property RiftenLocation auto
keyword property CWCapital auto
Int property strReachSons auto conditional hidden
Int property strContestedHoldSons auto conditional hidden
keyword property CWGovernmentStart auto
Int property WarIsActive auto conditional hidden
spell property CWOSABETME3Ability auto
globalvariable property CWOBeholdThefuture auto
location property LastLocAttackedByImperials auto hidden
objectreference property MilitaryCampWinterholdImperialMapMarker auto
objectreference property MilitaryCampWhiterunImperialMapMarker auto
objectreference property MilitaryCampEastmarchImperialMapMarker auto
objectreference property MilitaryCampRiftSonsMapMarker auto
objectreference property MilitaryCampRiftImperialMapMarker auto
objectreference property CWFieldCOMapTableMarkerHjaalmarchCampImperial auto
Int property countWinPaleSons auto conditional hidden
objectreference property CWCampaignStartMarkerFalkreath auto
objectreference property MilitaryCampPaleSonsMapMarker auto
objectreference property MilitaryCampHjaalmarchSonsMapMarker auto
globalvariable property CWObjEastmarch auto
faction property CWSurrenderTemporaryAllies auto
objectreference property MilitaryCampFalkreathSonsMapMarker auto
globalvariable property CWObjRift auto
actor property UlfricRef auto
Int property strPaleSons auto conditional hidden
location property MorthalLocation auto
objectreference property CWCampaignStartMarkerRift auto
objectreference property CWCampaignStartMarkerPale auto
location property FortNeugradLocation auto
objectreference property CWCampaignStartMarkerWhiterun auto
objectreference property CWCampaignStartMarkerHjaalmarch auto
actorbase property CWPrisonerImperial auto
Quest property CWCampaign auto
objectreference property CWCampaignStartMarkerReach auto
actor property RalofRef auto
actor property HadvarRef auto
globalvariable property CWDebugForceHold auto
Int property strContestedHoldImperial auto conditional hidden
globalvariable property CWStateAttackerAtGate auto
miscobject property Gold001 auto
Int property countWinSons auto conditional hidden
globalvariable property debugOn auto conditional
{Pointer to Global CWDebugOn, used to toggle on trace spam}
Float property SalaryMultRank3 auto hidden
globalvariable property CWDebugForceAttacker auto
Int property OwnerFalkreath auto conditional hidden
Int property strFalkreathImperial auto conditional hidden
referencealias property Alias_FieldCOSonsRiftHQ auto
globalvariable property CWThreatTowerSonsMage auto
message property CWCampaignOutcomeLostAttackMsgImperial auto
location property MilitaryCampRiftSonsLocation auto
actorbase property CWCourierSons auto
Int property iFalkreath = 5 auto hidden
globalvariable property CWDebugAllowCampaignsInFinalHolds auto
actor property GeneralTulliusRef auto
Int property CWMission07Done auto conditional hidden
globalvariable property CWThreatRockImperial auto
location property CidhnaMineLocation auto
Int property countWinImperials auto conditional hidden
globalvariable property CWThreatWallImperialArcher auto
location property SolitudeLocation auto
objectreference property MilitaryCampFalkreathImperialMapMarker auto
Bool property WaitingForCWResetGarrisonQuest6 auto hidden
referencealias property Alias_FieldCOSonsPaleCamp auto
Quest property CWResetGarrison4 auto
objectreference property MilitaryCampReachImperialMapMarker auto
location property MilitaryCampEastmarchImperialLocation auto
globalvariable property CWThreatBridgeSons auto
Int property OwnerHjaalmarch auto conditional hidden
globalvariable property CWCountHoldsSons auto
location property MilitaryCampWinterholdSonsLocation auto
Int property iWhiterun = 4 auto hidden
globalvariable property CWOFortReinforcements auto
faction property CWRewardFactionRift auto
faction property CWRewardFactionReach auto
Int property playerInvolved auto conditional hidden
location property MerryfairFarmLocation auto
globalvariable property CWReinforcementPoolAttacker auto
referencealias property ExiledSonsMarker auto
Int property strHjaalmarchImperial auto conditional hidden
keyword property CWResetGarrisonStart3 auto
Int property StrValueRift auto hidden
cwthreatcombatbarksscript property CWThreatCombatBarksS auto
globalvariable property CWStateDefenderFallingBack auto
Bool property WaitingForCWResetGarrisonQuest8 auto hidden
Bool property WaitingForCWResetGarrisonQuest4 auto hidden
leveleditem property CWCourierDocumentsImperial auto
location property OldHroldanLocation auto
referencealias property Alias_FieldCOImperialPaleHQ auto
faction property CWDialogueSoldierWaitingToAttackFaction auto
faction property CWRewardFactionPale auto
actorbase property CWPrisonerImperialB auto
Int property StrValueWinterhold auto hidden
location property KarthwastenLocation auto
Int property CWMission05Done auto conditional hidden
actorbase property CWSoldierSonsNotGuard auto
location property KolskeggrMineLocation auto
Quest property CWSiegeObj auto
location property LastLocAttacked auto hidden
faction property CrimeFactionImperial auto
Int property debugDBTraces auto conditional hidden
faction property CWImperialFaction auto
referencealias property Alias_FieldCOSonsFalkreathHQ auto
globalvariable property CWODisguiseGlobal auto
referencealias property Alias_FieldCOImperialWhiterunCamp auto
Float property SalaryMultRank2 auto hidden
referencealias property Alias_FieldCOImperialReachHQ auto
referencealias property Alias_FieldCOImperialWinterholdCamp auto
globalvariable property CWStateAttackerBrokeThrough auto
globalvariable property CWThreatTowerImperialArcher auto
Quest property CWObj auto
actorbase property CWPrisonerSons auto
faction property FavorAllowBribeFaction auto
globalvariable property CWPercentPoolRemainingDefender auto
globalvariable property CWMissionsForRank2 auto
globalvariable property CWMissionFailDay auto
keyword property CWODefendingStart auto
referencealias property SonsFactionHQMarker auto
location property MarkarthLocation auto
location property MilitaryCampPaleImperialLocation auto
Int property debugForceOffscreenResult auto conditional hidden
location property MilitaryCampWinterholdImperialLocation auto
Int property countWinRiftImperials auto conditional hidden
location property MilitaryCampReachSonsLocation auto
actorbase property CWCourierImperial auto
Bool property HaafingarFortBattleComplete auto hidden
globalvariable property CWStateDefenderLastStand auto
Quest property CWMission04 auto
package property CWRikkeAtCampHjaalmarch auto
Int property ownerContestedHold auto conditional hidden
location property FortGreenwallLocation auto
Quest property CWMission03 auto
Quest property CWOPartyCrasherCageMatch auto
objectreference property CWFieldCOMapTableMarkerReachCampSons auto
location property FortKastavLocation auto
actorbase property CWPrisonerImperialD auto
faction property CrimeFactionRift auto
faction property CWSoldierAttackerFaction auto
Bool property WhiterunSiegeStarted auto hidden
globalvariable property CWContestedHold auto
globalvariable property CWOSiegeReinforcements auto
faction property CWFieldCOPotentialMission1Faction auto
Int property PurchaseDelta auto conditional hidden
Quest property CWResetGarrison3 auto
wifunctionsscript property WIs auto
{Pointer to WIFunctionsScript attached to WI quest}
message property CWCampaignWonPaleImperials auto
Int property countWinFalkreathSons auto conditional hidden
referencealias property Alias_FieldCOImperialWhiterunHQ auto
locationalias property CWObjQuestNameLocation auto
referencealias property AliasTullius auto
Quest property CWFinale auto
faction property CWFieldCOActiveMissionFaction auto
Int property StrValueReach auto hidden
referencealias property Tullius auto
message property CWCampaignOutcomeWonDefenseMsgImperial auto
referencealias property Galmar auto
faction property GovImperial auto
referencealias property Alias_FieldCOSonsReachCamp auto
Int property StrValueEastmarch auto hidden
referencealias property AliasUlfric auto
faction property CWRewardFactionHjaalmarch auto
message property CWCampaignWonFalkreathImperials auto
locationreftype property CWResolutionHouseCarlMarker auto
referencealias property Alias_FieldCOSonsHaafingarCamp auto
faction property CWDisaffectedSoldierFaction auto
referencealias property Alias_FieldCOSonsRiftCamp auto
referencealias property Alias_FieldCOImperialHjaalmarchHQ auto
locationalias property CWSiegeCity auto
faction property PlayerFaction auto
actorbase property CWPrisonerImperialC auto
location property BrandyMugFarmLocation auto
Int property contestedHold auto conditional hidden
Quest property CWResetGarrison8 auto
Int property Salary auto conditional hidden
Float property resolutionAttackDeltaMultiplier auto conditional hidden
faction property CrimeFactionHjaalmarch auto
Int property OwnerEastmarch auto conditional hidden
Bool property WaitingForCWResetGarrisonQuest7 auto hidden
referencealias property Rikke auto
location property SnowShodFarmLocation auto
globalvariable property CWThreatWallImperialMage auto
globalvariable property CWOCurrentHold auto
faction property CWJobFortJailorFaction auto
Int property countHoldsSons auto conditional hidden
globalvariable property CWMaxConsecutiveAttacks auto
location property EastmarchHoldLocation auto
Int property iHjaalmarch = 3 auto hidden
Int property playerReport auto conditional hidden
Float property baseSalary auto hidden
Quest property CWOSendForPlayer auto
Int property contestedHoldWinner auto conditional hidden
Quest property CWSiegeAttackObj auto
location property MilitaryCampHaafingarSonsLocation auto
location property FortSungardLocation auto
globalvariable property CWReinforcementPoolDefender auto
Quest property CWFin auto
Int property iReach = 2 auto hidden
location property LeftHandMineLocation auto
Quest property CW03 auto
Int property contestedHoldWinType auto conditional hidden
location property FortSnowhawkLocation auto
location property FortHraggstadLocation auto
globalvariable property CWStateDefenderLowReinforcements auto
location property WhiterunHoldLocation auto
package property CWRikkeAtCampFalkreath auto
Int property debugSkipSetOwnerCalls auto hidden
location property HelgenLocation auto
Int property iPale = 6 auto hidden
faction property CWImperialFactionNPC auto
Quest property MQ302 auto
faction property CWRewardFactionWhiterun auto
globalvariable property CWThreatWindowImperial auto
faction property CWJobFortGatekeeperFaction auto
location property KynesgroveLocation auto
Bool property BuddyDialogueAllowed auto conditional hidden
Int property MaxAttackDelta auto conditional hidden
location property RiftHoldLocation auto
keyword property CWODoneBeenSieged auto
keyword property CWFortSiegeStart auto
location property MilitaryCampFalkreathSonsLocation auto
Int property countWinHjaalmarchSons auto conditional hidden
location property WinterholdLocation auto
Int property CWMission04Done auto conditional hidden
outfit property CWSoldierSonsSoldierOutfit auto

actor property PlayerRef auto
globalvariable property CWOTroopPoolGameType auto
;-- Variables ---------------------------------------
Int welost = 0

;-- Functions ---------------------------------------

function log(string fileName, string stringToPrint, int severity = 0, bool AlwaysPrintLog = false, bool AlwaysPrintToMainLog = false) Global
{Will print to main papyrus log and the specified file if CWDebugOn global is true, or optional pararms are true}

;	bool success 
;	int debugMode = (Game.GetForm(0X0003F7D2) as GlobalVariable).GetValue() as Int	;this is the CWDebugOn global variable in the ESM.
			
	;print to specified log	

;	if debugMode == 1 || AlwaysPrintLog 
;		debug.OpenUserLog(fileName) 
	
;		success = debug.traceUser(fileName, " " + stringToPrint, severity)
	
;		if success == False
;			debug.trace("CWScript  WARNING: log() Failed to print to " + FileName + ": " + stringToPrint, 2)
;		EndIf
		
;	EndIf
	
	;print to main log
;	if debugMode == 1 || AlwaysPrintToMainLog
;		debug.trace(fileName + "-> " + stringToPrint, severity)
;	EndIf
	
EndFunction

function SetCountWins()
{Sets various count variables for keeping track of how many times each faction won each hold... calls SetCountWinsImperials() and SetCountWinsSons()}

	if contestedHoldWinner == iImperials
		self.SetCountWinsImperials()
	elseIf contestedHoldWinner == iSons
		self.SetCountWinsSons()
	endIf
endFunction

Bool function IsPlayerAttacking(location LocationToCheck)

	Bool returnVal
	if LocationToCheck.GetKeywordData(CWOwner) == playerAllegiance as Float
		returnVal = false
	else
		returnVal = true
	endIf
	CWScript.log("CWScript", "IsPlayerAttacking(" + LocationToCheck as String + ") RETURNING: " + returnVal as String, 0, false, false)
	return returnVal
endFunction

function CWOCreateMissions(location HoldLocation, objectreference CurrentFieldCO, Bool ForceFinalSiege, objectreference CampaignStartMarker)

	if CWODefendingActive.getvalueint() == 1
		return 
	endIf
	if WarIsActive == -1
		return 
	endIf
	if CWODontRunQuests.GetValue() > 0 as Float
		return 
	endIf
	if CWOStillABetterEndingGlobal.GetValue() as Int != 1
		if CWOCurrentHold.getvalueint() != self.GetHoldID(HoldLocation)
			if CWODefendingActive.getvalueint() == 0
				return 
			endIf
		endIf
		if CWOCapitalQuestRunning.getvalueint() == 1 && ForceFinalSiege == false
			return 
		endIf
	endIf
	self.GetRikkeOrGalmar(-1).Enable(false)
	Bool CWOCMWhileLoop = false
	CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ", " + CurrentFieldCO as String + ") creating story events.", 0, false, false)
	Int HoldID = CWOCurrentHold.getvalueint()
	globalvariable myCWObjGlobal = self.GetCWObjGlobal(HoldID)
	if CWOCurrentHold.getvalueint() == 1 && HaafingarFortBattleComplete as Bool
		CWScript.log("CWScript", "CreateMissions() HaafingarHoldLocation and HaafingarFortBattleComplete, setting CWObjHaafingar to 99", 0, false, false)
		myCWObjGlobal.setValue(99 as Float)
	elseIf CWOCurrentHold.getvalueint() == 8 && EastmarchFortBattleComplete as Bool
		CWScript.log("CWScript", "CreateMissions() EastmarchHoldLocation and EastmarchFortBattleComplete, setting CWObjEastmarch to 99", 0, false, false)
		myCWObjGlobal.setValue(99 as Float)
	else
		CWScript.log("CWScript", "CreateMissions() Not a final hold, or not ready for final battle, setting CWObjxxx to 0", 0, false, false)
		myCWObjGlobal.setValue(0 as Float)
	endIf
	self.CWOMissionPicker(CurrentFieldCO, ForceFinalSiege, CampaignStartMarker)
endFunction

Bool function ImperialsAreAttacking(location LocationToCheck)

	CWScript.log("CWScript", "ImperialsAreAttacking()", 0, false, false)
	Bool returnVal = self.GetAttacker(LocationToCheck) == iImperials
	CWScript.log("CWScript", "ImperialsAreAttacking() returning: " + returnVal as String, 0, false, false)
	return returnVal
endFunction

Bool function CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(actor ActorToCheck, package PackageToCheck, location LocationToCheck, objectreference MarkerToMoveTo)

	Bool returnVal
	CWScript.log("CWScript", "CheckRikkeGalmarNotAtCampPackageLocation(" + ActorToCheck as String + PackageToCheck as String + LocationToCheck as String + ")", 0, false, false)
	if ActorToCheck.GetCurrentPackage() == PackageToCheck && ActorToCheck.IsInLocation(LocationToCheck) == false
		CWScript.log("CWScript", "CheckRikkeGalmarNotAtCampPackageLocation MOVING ACTOR and Returning TRUE because is in package but not in location", 0, false, false)
		ActorToCheck.MoveTo(MarkerToMoveTo, 0.000000, 0.000000, 0.000000, true)
		returnVal = true
	else
		CWScript.log("CWScript", "CheckRikkeGalmarNotAtCampPackageLocation Returning FALSE because is either not in package, or in package and in location.", 0, false, false)
		returnVal = false
	endIf
	return returnVal
endFunction

function setContestedHoldWinType()
{Sets the ContestedHoldWinType variable}

	if ownerContestedHold == contestedHoldWinner
		contestedHoldWinType = 2
		CWScript.log("CWScript", "SetContestedHoldWinType() set contestedHoldWinType to 2 (defender)", 0, false, false)
	else
		contestedHoldWinType = 1
		CWScript.log("CWScript", "SetContestedHoldWinType() set contestedHoldWinType to 1 (attacker))", 0, false, false)
	endIf
endFunction

objectreference function GetReferenceCampFieldCOForHold(location Hold, Int FactionToCheck)

	CWScript.log("CWScript", "GetReferenceCampFieldCOForHold(" + Hold as String + ") calling GetAliasCampFieldCOForHold()", 0, false, false)
	objectreference returnVar = self.GetAliasCampFieldCOForHold(Hold, FactionToCheck).GetReference()
	CWScript.log("CWScript", "GetReferenceCampFieldCOForHold(" + Hold as String + ") calling GetAliasCampFieldCOForHold() RETURN:" + returnVar as String, 0, false, false)
	return returnVar
endFunction

function setAttackDelta()
{Sets the attack delta based on current strAttacker and strDefender}

	AttackDelta = strAttacker - strDefender
	CWScript.log("CWScript", "AttackDelta (" + AttackDelta as String + " ) = StrAttack (" + strAttacker as String + ") - StrDefender (" + strDefender as String + ")", 0, false, false)
	if math.abs(AttackDelta as Float) > MaxAttackDelta as Float
		if AttackDelta > 0
			AttackDelta = MaxAttackDelta
		else
			AttackDelta = -MaxAttackDelta
		endIf
		CWScript.log("CWScript", "|AttackDelta| is larger than MaxAttackDelta, constraining AttackDelta(" + AttackDelta as String + ") to MaxAttackDelta (" + MaxAttackDelta as String + ")", 0, false, false)
	endIf
endFunction

function SetOwnerEastmarch(Int FactionToOwn, Bool DiplomaticVictory)

	CWScript.log("CWScript", "CW Script setOwnerEastmarch() started." + "FactionToOwn: " + FactionToOwn as String + ", DiplomaticVictory: " + DiplomaticVictory as String, 0, false, false)
	if DiplomaticVictory
		EastmarchHoldLocation.SetKeywordData(CWDiplomaticVictory, 1 as Float)
		self.ClearHoldCrimeGold(EastmarchHoldLocation)
	endIf
	if FactionToOwn != iCurrentOwner
		OwnerEastmarch = FactionToOwn
		EastmarchHoldLocation.SetKeywordData(CWOwner, FactionToOwn as Float)
	endIf
	self.setCountHoldProperties()
	self.setOwner(FortAmolLocation, FactionToOwn, MilitaryCampEastmarchImperialLocation, none, none, none, none, none, none, false)
	self.setOwner(WindhelmLocation, FactionToOwn, BrandyMugFarmLocation, HlaaluFarmLocation, HollyfrostFarmLocation, KynesgroveLocation, DarkwaterCrossingLocation, MixwaterMillLocation, none, false)
	CWScript.log("CWScript", "CW Script setOwnerEastmarch() finished.", 0, false, false)
endFunction

function stopSiegeQuests()

	CWScript.log("CWScript", "CW Script: stopSiegeQuests() NEED TO SHUT DOWN AND CLEAN UP SIEGE QUESTS", 1, false, false)
	debug.messageBox("CW Script: stopSiegeQuests() NEED TO SHUT DOWN AND CLEAN UP SIEGE QUESTS")
endFunction

function StartCWCitizensFlee(location locationOfBattle)

	CWScript.log("CWScript", "StartCWCitizensFlee(" + locationOfBattle as String + ")", 0, false, false)
	Int waitTime = 0
	Bool bailOut = false
	if CWCitizensFlee.IsStopped() == false
		CWScript.log("CWScript", " WARNING: StartCWCitizensFlee() the CWCitizensFlee quest is currently running, stopping it and starting a new one.", 2, true, true)
		CWCitizensFlee.stop()
		while CWCitizensFlee.IsStopped() == false && bailOut == false
			CWScript.log("CWScript", " WARNING: StartCWCitizensFlee() the CWCitizensFlee quest is currently running, waiting for it to stop completely. Have been waiting for " + waitTime as String, 1, false, false)
			utility.wait(1 as Float)
			waitTime += 1
			if waitTime > 30
				CWScript.log("CWScript", " WARNING: StartCWCitizensFlee() the CWCitizensFlee quest is currently running, have been waiting too long. Bailing out.", 1, false, false)
				bailOut = true
			endIf
		endWhile
	endIf
	CWCitizensFleeStart.SendStoryEvent(locationOfBattle, none, none, 0, 0)
endFunction

function setCountHoldsImperial()
{Sets CountHoldsImperial property and associated CWCountHoldsImperial global... note, call this AFTER setting any new ownerXXX property values, such as in the setOwnerXXX() function.}

	Int count = 0
	if OwnerHaafingar == iImperials
		count += 1
	endIf
	if OwnerReach == iImperials
		count += 1
	endIf
	if OwnerHjaalmarch == iImperials
		count += 1
	endIf
	if OwnerWhiterun == iImperials
		count += 1
	endIf
	if OwnerFalkreath == iImperials
		count += 1
	endIf
	if OwnerPale == iImperials
		count += 1
	endIf
	if OwnerWinterhold == iImperials
		count += 1
	endIf
	if OwnerEastmarch == iImperials
		count += 1
	endIf
	if OwnerRift == iImperials
		count += 1
	endIf
	countHoldsImperial = count
	CWCountHoldsImperial.value = count as Float
endFunction

objectreference function GetExiledMarkerForActor(actor ActorToCheck)
{Returns the marker in the alias corresponding to the ExiledMarker based on whether the actor is in GovImperial or GovSons factions.}

	objectreference ExileMarker
	if ActorToCheck.IsInFaction(GovImperial)
		ExileMarker = ExiledImperialMarker.GetReference()
	elseIf ActorToCheck.IsInFaction(GovSons)
		ExileMarker = ExiledSonsMarker.GetReference()
	else
		CWScript.log("CWScript", " WARNING: GetExiledMarkerForActor() can't determine which faction this actor belongs to:" + ActorToCheck as String, 2, false, false)
	endIf
	CWScript.log("CWScript", "GetExiledMarkerForActor(" + ActorToCheck as String + ") returning " + ExileMarker as String, 0, false, false)
	return ExileMarker
endFunction

function setInitialGarrisonCostsFalkreath()

	self.SetGarrisonCost(FalkreathLocation, iCostNonContestable)
	self.SetGarrisonCost(HelgenLocation, iCostMedium)
	self.SetGarrisonCost(HalfmoonMillLocation, iCostSmall)
	self.SetGarrisonCost(FortNeugradLocation, iCostFort)
endFunction

function Persuade(actor Target)
{Calls the favor script function}

	CWScript.log("CWScript", "Persuade(" + Target as String + ") calling Persuade() on DialogueFavorGeneric quest's FavorDialogueScript", 0, false, false)
	DialogueFavorGenericS.Persuade(Target)
endFunction

function modObjectiveByMissionSuccess(location HoldLocation, Int AmountToMod)

	CWScript.log("CWScript", "modObjectiveByMissionSuccess(" + HoldLocation as String + ", " + AmountToMod as String + ")", 0, false, false)
	if self.GetOwner(HoldLocation) == playerAllegiance
		CWScript.log("CWScript", "modObjectiveByMissionSuccess(" + HoldLocation as String + ") hold is owned by player's faction, bailing out before modding the objective", 0, false, false)
		return 
	endIf
	Int myHoldID = self.GetHoldID(HoldLocation)
	globalvariable myCWObjGlobal = self.GetCWObjGlobal(myHoldID)
	self.modCWObjGlobal(myCWObjGlobal, AmountToMod as Float)
	CWScript.log("CWScript", "modObjectiveByMissionSuccess() Calling updateObjective(" + HoldLocation as String + ")", 0, false, false)
	self.updateObjective(HoldLocation, false, false, none)
endFunction

location function GetMyEditorLocationHoldLocation(objectreference RefToGetEditorLocHoldFor)
{Returns a location corresponding to the location of the hold the actor's editor location currently in}

	location returnLocation
	;USKP 2.0.5 - Previously used GetEditorLocation() but that has bugs and sometimes returns NONE when it shouldn't be.
	Location EditorLocation = RefToGetEditorLocHoldFor.GetCurrentLocation()
	if HaafingarHoldLocation.IsChild(EditorLocation)
		returnLocation = HaafingarHoldLocation
	elseIf ReachHoldLocation.IsChild(EditorLocation)
		returnLocation = ReachHoldLocation
	elseIf HjaalmarchHoldLocation.IsChild(EditorLocation)
		returnLocation = HjaalmarchHoldLocation
	elseIf WhiterunHoldLocation.IsChild(EditorLocation)
		returnLocation = WhiterunHoldLocation
	elseIf FalkreathHoldLocation.IsChild(EditorLocation)
		returnLocation = FalkreathHoldLocation
	elseIf PaleHoldLocation.IsChild(EditorLocation)
		returnLocation = PaleHoldLocation
	elseIf WinterholdHoldLocation.IsChild(EditorLocation)
		returnLocation = WinterholdHoldLocation
	elseIf EastmarchHoldLocation.IsChild(EditorLocation)
		returnLocation = EastmarchHoldLocation
	elseIf RiftHoldLocation.IsChild(EditorLocation)
		returnLocation = RiftHoldLocation
	else
		CWScript.log("CWScript", " WARNING: GetMyEditorLocationHoldLocation(" + RefToGetEditorLocHoldFor as String + ") could NOT find the actor's editor location is in any hold location.", 2, true, true)
	endIf
	CWScript.log("CWScript", "GetMyEditorLocationHoldLocation(" + RefToGetEditorLocHoldFor as String + ") RETURNING: " + returnLocation as String, 0, false, false)
	return returnLocation
endFunction

function SetPlayerAllegiance(Int FactionToJoin, Int MakePlayerInvolved)
{Takes an int for which faction the player should join. 1 = Imperials, 2 = Sons. Swaps player in/out of factions, and sets the playerInvolved flag if the optional parameter is set to 1, and PlayerAllegiance properties.}

	playerInvolved = MakePlayerInvolved
	playerAllegiance = FactionToJoin
	CWPlayerAllegiance.value = FactionToJoin as Float
	if FactionToJoin == iImperials
		game.GetPlayer().AddToFaction(self.getFaction(iImperials, false))
		game.GetPlayer().RemoveFromFaction(self.getFaction(iSons, false))
		AliasFactionLeader.ForceRefTo(AliasTullius.GetReference())
	elseIf FactionToJoin == iSons
		game.GetPlayer().AddToFaction(self.getFaction(iSons, false))
		game.GetPlayer().RemoveFromFaction(self.getFaction(iImperials, false))
		AliasFactionLeader.ForceRefTo(AliasUlfric.GetReference())
	else
		CWScript.log("CWScript", "SetPlayerAllegiance() encountered an unknown FactionToJoin. Expect 1 or 2, got " + FactionToJoin as String, 0, false, false)
	endIf
	CWScript.log("CWScript", "SetPlayerAllegiance() setting players allegiance to " + FactionToJoin as String + "(" + self.FactionName(FactionToJoin) + ")", 0, false, false)
endFunction

Int function GetStrengthPoints(Int FactionToCheck, Int HoldToCheck)
{Returns an int specifying the strength points of the FactionToCheck (1 = Imperial, 2 = Sons) in HoldToCheck(1-9), -1 = FAIL}

	Int strSons
	Int strImperial
	if HoldToCheck == iHaafingar
		strImperial = strHaafingarImperial
		strSons = strHaafingarSons
	elseIf HoldToCheck == iReach
		strImperial = strReachImperial
		strSons = strReachSons
	elseIf HoldToCheck == iHjaalmarch
		strImperial = strHjaalmarchImperial
		strSons = strHjaalmarchSons
	elseIf HoldToCheck == iWhiterun
		strImperial = strWhiterunImperial
		strSons = strWhiterunSons
	elseIf HoldToCheck == iFalkreath
		strImperial = strFalkreathImperial
		strSons = strFalkreathSons
	elseIf HoldToCheck == iPale
		strImperial = strPaleImperial
		strSons = strPaleSons
	elseIf HoldToCheck == iWinterhold
		strImperial = strWinterholdImperial
		strSons = strWinterholdSons
	elseIf HoldToCheck == iEastmarch
		strImperial = strEastmarchImperial
		strSons = strEastmarchSons
	elseIf HoldToCheck == iRift
		strImperial = strRiftImperial
		strSons = strRiftSons
	else
		CWScript.log("CWScript", "GetStrengthPoints() HoldToCheck parametered unrecognized. Expected an int 1-9: got " + HoldToCheck as String, 0, false, false)
		return -1
	endIf
	if FactionToCheck == iImperials
		return strImperial
	elseIf FactionToCheck == iSons
		return strSons
	else
		CWScript.log("CWScript", "GetStrengthPoints() FactionToCheck parameter unrecognized. Expected 1 or 2: got " + FactionToCheck as String, 0, false, false)
		return -1
	endIf
endFunction

objectreference function getCampaignStartMarker(Int Hold)
{Returns an objectReference (xmarker) corresponding to the integer Hold parameter}

	if Hold == iHaafingar
		return CWCampaignStartMarkerHaafingar
	elseIf Hold == iReach
		return CWCampaignStartMarkerReach
	elseIf Hold == iHjaalmarch
		return CWCampaignStartMarkerHjaalmarch
	elseIf Hold == iWhiterun
		return CWCampaignStartMarkerWhiterun
	elseIf Hold == iFalkreath
		return CWCampaignStartMarkerFalkreath
	elseIf Hold == iPale
		return CWCampaignStartMarkerPale
	elseIf Hold == iWinterhold
		return CWCampaignStartMarkerWinterhold
	elseIf Hold == iEastmarch
		return CWCampaignStartMarkerEastmarch
	elseIf Hold == iRift
		return CWCampaignStartMarkerRift
	endIf
endFunction

function failCWObj(location HoldWhoseObjectiveToFail)

	Int myHoldID = self.GetHoldID(HoldWhoseObjectiveToFail)
	globalvariable myCWObjGlobal = self.GetCWObjGlobal(myHoldID)
	if WhiterunSiegeFinished == false
		WhiterunSiegeFinished = true
		if CWODefendingActive.value == 0 as Float
			self.displayFactionLeaderObjective()
		endIf
	else
		self.updateObjective(HoldWhoseObjectiveToFail, false, true, myCWObjGlobal)
		myCWObjGlobal.setValue(0 as Float)
	endIf
endFunction

function DisplayHoldObjective()

	CWScript.log("CWScript", "DisplayHoldObjective()", 0, false, false)
	if playerAllegiance == iImperials
		if CWOCurrentHold.getvalueint() == 3
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(HjaalmarchHoldLocation) + iImperials, true, true)
		elseIf CWOCurrentHold.getvalueint() == 2
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(ReachHoldLocation) + iImperials, true, true)
		elseIf CWOCurrentHold.getvalueint() == 5
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(FalkreathHoldLocation) + iImperials, true, true)
		elseIf CWOCurrentHold.getvalueint() == 4
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(WhiterunHoldLocation) + iImperials, true, true)
		elseIf CWOCurrentHold.getvalueint() == 6
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(PaleHoldLocation) + iImperials, true, true)
		elseIf CWOCurrentHold.getvalueint() == 9
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(RiftHoldLocation) + iImperials, true, true)
		elseIf CWOCurrentHold.getvalueint() == 7
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(WinterholdHoldLocation) + iImperials, true, true)
		elseIf CWOCurrentHold.getvalueint() == 8
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(EastmarchHoldLocation) + iImperials, true, true)
		else
			debug.notification("ERROR: UNEXPECTED VALUE AT DISPLAYHOLDOBJECTIVE() ON CWO.  CWOCURRENTHOLD IS CURRENTLY SET TO " + CWOCurrentHold.getvalueint() as String + " DISPLAYHOLDOBJECTIVE FAILED TO RUN. ABORTING.")
		endIf
	elseIf playerAllegiance == iSons
		if CWOCurrentHold.getvalueint() == 7
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(WinterholdHoldLocation) + iSons, true, true)
		elseIf CWOCurrentHold.getvalueint() == 9
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(RiftHoldLocation) + iSons, true, true)
		elseIf CWOCurrentHold.getvalueint() == 6
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(PaleHoldLocation) + iSons, true, true)
		elseIf CWOCurrentHold.getvalueint() == 4
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(WhiterunHoldLocation) + iSons, true, true)
		elseIf CWOCurrentHold.getvalueint() == 5
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(FalkreathHoldLocation) + iSons, true, true)
		elseIf CWOCurrentHold.getvalueint() == 2
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(ReachHoldLocation) + iSons, true, true)
		elseIf CWOCurrentHold.getvalueint() == 3
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(HjaalmarchHoldLocation) + iSons, true, true)
		elseIf CWOCurrentHold.getvalueint() == 1
			CWObj.SetObjectiveDisplayed(100 * self.GetHoldID(HaafingarHoldLocation) + iSons, true, true)
		else
			debug.notification("ERROR: UNEXPECTED VALUE AT DISPLAYHOLDOBJECTIVE() ON CWO.  CWOCURRENTHOLD IS CURRENTLY SET TO " + CWOCurrentHold.getvalueint() as String + " DISPLAYHOLDOBJECTIVE FAILED TO RUN. ABORTING.")
		endIf
	endIf
	CWObj.SetActive(true)
endFunction

function CWOFigureOutCurrentHold()

	debug.notification("CWO attempted to run FigurOutCurrenthold but that function is deprecated")
endFunction

function RegisterLocationAttacked(location HoldLocation, location AttackedLocation, Int iFaction)
{Called by any mission where a settlement is attacked violently in such a way that people *could* condemn the action. Default iFaction doing the attacking is the CW.Attacker}

	if iFaction == 0
		iFaction = self.GetAttacker(HoldLocation)
	endIf
	if iFaction == iImperials
		CWScript.log("CWScript", "RegisterLocationAttacked() setting LastLocAttackedByImperials to " + AttackedLocation as String, 0, false, false)
		LastLocAttackedByImperials = AttackedLocation
	elseIf iFaction == iSons
		CWScript.log("CWScript", "RegisterLocationAttacked() setting LastLocAttackedBySons to " + AttackedLocation as String, 0, false, false)
		LastLocAttackedBySons = AttackedLocation
	else
		CWScript.log("CWScript", " WARNING: RegisterLocationAttack expected GetAttacker(HoldLocation) to be 1 or 2.", 2, true, true)
	endIf
	LastLocAttacked = AttackedLocation
	CWScript.log("CWMissionScript", self as String + "RegisterLocationAttacked() setting LastLocAttacked to " + AttackedLocation as String, 0, false, false)
endFunction

function setInitialGarrisonCostsRift()

	self.SetGarrisonCost(RiftenLocation, iCostNonContestable)
	self.SetGarrisonCost(SnowShodFarmLocation, iCostNonContestable)
	self.SetGarrisonCost(MerryfairFarmLocation, iCostNonContestable)
	self.SetGarrisonCost(IvarsteadLocation, iCostMedium)
	self.SetGarrisonCost(ShorsStoneLocation, iCostSmall)
	self.SetGarrisonCost(HeartwoodMillLocation, iCostSmall)
	self.SetGarrisonCost(SarethiFarmLocation, iCostSmall)
	self.SetGarrisonCost(FortGreenwallLocation, iCostFort)
endFunction

function setInitalOwnerKeywordDataOnly()
{A quick way to initialize keyword data at game start only, so Civil War missions fill aliases correctly. The more "thorough" function is SetInitialOwners()}

	HaafingarHoldLocation.SetKeywordData(CWOwner, iImperials as Float)
	FortHraggstadLocation.SetKeywordData(CWOwner, iImperials as Float)
	SolitudeLocation.SetKeywordData(CWOwner, iImperials as Float)
	SolitudeSawmillLocation.SetKeywordData(CWOwner, iImperials as Float)
	KatlasFarmLocation.SetKeywordData(CWOwner, iImperials as Float)
	DragonBridgeLocation.SetKeywordData(CWOwner, iImperials as Float)
	ReachHoldLocation.SetKeywordData(CWOwner, iImperials as Float)
	FortSungardLocation.SetKeywordData(CWOwner, iImperials as Float)
	MarkarthLocation.SetKeywordData(CWOwner, iImperials as Float)
	CidhnaMineLocation.SetKeywordData(CWOwner, iImperials as Float)
	LeftHandMineLocation.SetKeywordData(CWOwner, iImperials as Float)
	SalviusFarmLocation.SetKeywordData(CWOwner, iImperials as Float)
	KarthwastenLocation.SetKeywordData(CWOwner, iImperials as Float)
	OldHroldanLocation.SetKeywordData(CWOwner, iImperials as Float)
	KolskeggrMineLocation.SetKeywordData(CWOwner, iImperials as Float)
	HjaalmarchHoldLocation.SetKeywordData(CWOwner, iImperials as Float)
	FortSnowhawkLocation.SetKeywordData(CWOwner, iImperials as Float)
	MorthalLocation.SetKeywordData(CWOwner, iImperials as Float)
	StonehillsLocation.SetKeywordData(CWOwner, iImperials as Float)
	WhiterunHoldLocation.SetKeywordData(CWOwner, iImperials as Float)
	FortGreymoorLocation.SetKeywordData(CWOwner, iImperials as Float)
	WhiterunLocation.SetKeywordData(CWOwner, iImperials as Float)
	BattleBornFarmLocation.SetKeywordData(CWOwner, iImperials as Float)
	ChillfurrowFarmLocation.SetKeywordData(CWOwner, iImperials as Float)
	PelagiaFarmLocation.SetKeywordData(CWOwner, iImperials as Float)
	RoriksteadLocation.SetKeywordData(CWOwner, iImperials as Float)
	RiverwoodLocation.SetKeywordData(CWOwner, iImperials as Float)
	FalkreathHoldLocation.SetKeywordData(CWOwner, iImperials as Float)
	FortNeugradLocation.SetKeywordData(CWOwner, iImperials as Float)
	FalkreathLocation.SetKeywordData(CWOwner, iImperials as Float)
	HelgenLocation.SetKeywordData(CWOwner, iImperials as Float)
	HalfmoonMillLocation.SetKeywordData(CWOwner, iImperials as Float)
	PaleHoldLocation.SetKeywordData(CWOwner, iSons as Float)
	FortDunstadLocation.SetKeywordData(CWOwner, iSons as Float)
	DawnstarLocation.SetKeywordData(CWOwner, iSons as Float)
	AngasMillLocation.SetKeywordData(CWOwner, iSons as Float)
	LoreiusFarmLocation.SetKeywordData(CWOwner, iSons as Float)
	WinterholdHoldLocation.SetKeywordData(CWOwner, iSons as Float)
	FortKastavLocation.SetKeywordData(CWOwner, iSons as Float)
	WinterholdLocation.SetKeywordData(CWOwner, iSons as Float)
	WhistlingMineLocation.SetKeywordData(CWOwner, iSons as Float)
	EastmarchHoldLocation.SetKeywordData(CWOwner, iSons as Float)
	FortAmolLocation.SetKeywordData(CWOwner, iSons as Float)
	WindhelmLocation.SetKeywordData(CWOwner, iSons as Float)
	BrandyMugFarmLocation.SetKeywordData(CWOwner, iSons as Float)
	HlaaluFarmLocation.SetKeywordData(CWOwner, iSons as Float)
	HollyfrostFarmLocation.SetKeywordData(CWOwner, iSons as Float)
	KynesgroveLocation.SetKeywordData(CWOwner, iSons as Float)
	DarkwaterCrossingLocation.SetKeywordData(CWOwner, iSons as Float)
	MixwaterMillLocation.SetKeywordData(CWOwner, iSons as Float)
	RiftHoldLocation.SetKeywordData(CWOwner, iSons as Float)
	FortGreenwallLocation.SetKeywordData(CWOwner, iSons as Float)
	RiftenLocation.SetKeywordData(CWOwner, iSons as Float)
	SnowShodFarmLocation.SetKeywordData(CWOwner, iSons as Float)
	MerryfairFarmLocation.SetKeywordData(CWOwner, iSons as Float)
	IvarsteadLocation.SetKeywordData(CWOwner, iSons as Float)
	ShorsStoneLocation.SetKeywordData(CWOwner, iSons as Float)
	HeartwoodMillLocation.SetKeywordData(CWOwner, iSons as Float)
	SarethiFarmLocation.SetKeywordData(CWOwner, iSons as Float)
endFunction

Int function getOppositeFactionInt(Int FactionWhoseOppositeYouWant)

	Int returnVal
	if FactionWhoseOppositeYouWant == iImperials
		returnVal = iSons
	elseIf FactionWhoseOppositeYouWant == iSons
		returnVal = iImperials
	else
		CWScript.log("CWScript", " WARNING: getOppositeFactionInt() encountered an unknown FactionWhoseOppositeYouWant. Expected 1 or 2, got " + FactionWhoseOppositeYouWant as String, 2, true, true)
	endIf
	return returnVal
endFunction

function setInitialGarrisonCostsEastmarch()

	self.SetGarrisonCost(WindhelmLocation, iCostNonContestable)
	self.SetGarrisonCost(BrandyMugFarmLocation, iCostNonContestable)
	self.SetGarrisonCost(HlaaluFarmLocation, iCostNonContestable)
	self.SetGarrisonCost(HollyfrostFarmLocation, iCostNonContestable)
	self.SetGarrisonCost(KynesgroveLocation, iCostNonContestable)
	self.SetGarrisonCost(DarkwaterCrossingLocation, iCostNonContestable)
	self.SetGarrisonCost(MixwaterMillLocation, iCostNonContestable)
	self.SetGarrisonCost(FortAmolLocation, iCostNonContestable)
endFunction

; Skipped compiler generated GotoState

function displayFactionLeaderObjective()

	Int talkToLeaderObj = 1000 + playerAllegiance
	CWObj.setStage(1)
	CWObj.SetObjectiveCompleted(talkToLeaderObj, false)
	CWObj.SetObjectiveDisplayed(talkToLeaderObj, true, true)
	CWObj.SetActive(true)
endFunction

function OnInit()

	CWScript.log("CWScript", "OnInit()", 0, false, false)
	debugOn.value = 0 as Float
	MaxAttackDelta = 20
	resolutionAttackDeltaMultiplier = 1.50000
	OwnerHaafingar = 1
	OwnerReach = 1
	OwnerHjaalmarch = 1
	OwnerWhiterun = 1
	OwnerFalkreath = 1
	OwnerPale = 2
	OwnerWinterhold = 2
	OwnerEastmarch = 2
	OwnerRift = 2
	self.setInitalOwnerKeywordDataOnly()
	self.setCountHoldProperties()
	StrValueHaafingar = 5
	StrValueReach = 5
	StrValueHjaalmarch = 3
	StrValueWhiterun = 5
	StrValueFalkreath = 3
	StrValuePale = 3
	StrValueWinterhold = 3
	StrValueEastmarch = 5
	StrValueRift = 5
	iCostNonContestable = 9999
	iCostFort = 9999
	iCostSmall = 1
	iCostMedium = 2
	iCostLarge = 3
	iCostPatrol = 1
	self.setInitialCosts()
	baseSalary = 100 as Float
	SalaryMultRank1 = 1.25000
	SalaryMultRank2 = 1.50000
	SalaryMultRank3 = 2.00000
	SalaryMultRank4 = 3.00000
	self.initializeFortOwnerKeywordData()
	self.RemoveGarrisonFromWar(KolskeggrMineLocation)
	self.RemoveGarrisonFromWar(RiverwoodLocation)
	self.RemoveGarrisonFromWar(FortHraggstadLocation)
	self.RemoveGarrisonFromWar(FortSungardLocation)
	self.RemoveGarrisonFromWar(FortSnowhawkLocation)
	self.RemoveGarrisonFromWar(FortGreymoorLocation)
	self.RemoveGarrisonFromWar(FortNeugradLocation)
	self.RemoveGarrisonFromWar(FortDunstadLocation)
	self.RemoveGarrisonFromWar(FortKastavLocation)
	self.RemoveGarrisonFromWar(FortAmolLocation)
	self.RemoveGarrisonFromWar(FortGreenwallLocation)
	EnemyFortsAddedBackToWar = false
	init += 1
endFunction

; Skipped compiler generated GetState

function paySalary()
{Pay player a salary after campaign based on his rank}

	game.GetPlayer().AddItem(Gold001 as form, Salary, false)
	Salary = 0
endFunction

location function getLocationForHold(Int Hold)
{Returns a location corresponding to the integer Hold parameter}

	if Hold == iHaafingar
		return HaafingarHoldLocation
	elseIf Hold == iReach
		return ReachHoldLocation
	elseIf Hold == iHjaalmarch
		return HjaalmarchHoldLocation
	elseIf Hold == iWhiterun
		return WhiterunHoldLocation
	elseIf Hold == iFalkreath
		return FalkreathHoldLocation
	elseIf Hold == iPale
		return PaleHoldLocation
	elseIf Hold == iWinterhold
		return WinterholdHoldLocation
	elseIf Hold == iEastmarch
		return EastmarchHoldLocation
	elseIf Hold == iRift
		return RiftHoldLocation
	endIf
endFunction

referencealias function GetAliasCampFieldCOForHold(location Hold, Int FactionToCheck)

	referencealias returnVal
	CWScript.log("CWScript", "GetAliasCampFieldCOForHold(" + Hold as String + ")", 0, false, false)
	if FactionToCheck == iImperials
		if Hold == EastmarchHoldLocation
			returnVal = Alias_FieldCOImperialEastmarchCamp
		elseIf Hold == FalkreathHoldLocation
			returnVal = Alias_FieldCOImperialFalkreathCamp
		elseIf Hold == HaafingarHoldLocation
			returnVal = Alias_FieldCOImperialHaafingarCamp
		elseIf Hold == HjaalmarchHoldLocation
			returnVal = Alias_FieldCOImperialHjaalmarchCamp
		elseIf Hold == PaleHoldLocation
			returnVal = Alias_FieldCOImperialPaleCamp
		elseIf Hold == ReachHoldLocation
			returnVal = Alias_FieldCOImperialReachCamp
		elseIf Hold == RiftHoldLocation
			returnVal = Alias_FieldCOImperialRiftCamp
		elseIf Hold == WhiterunHoldLocation
			returnVal = Alias_FieldCOImperialWhiterunCamp
		elseIf Hold == WinterholdHoldLocation
			returnVal = Alias_FieldCOImperialWinterholdCamp
		endIf
	elseIf FactionToCheck == iSons
		if Hold == EastmarchHoldLocation
			returnVal = Alias_FieldCOSonsEastmarchCamp
		elseIf Hold == FalkreathHoldLocation
			returnVal = Alias_FieldCOSonsFalkreathCamp
		elseIf Hold == HaafingarHoldLocation
			returnVal = Alias_FieldCOSonsHaafingarCamp
		elseIf Hold == HjaalmarchHoldLocation
			returnVal = Alias_FieldCOSonsHjaalmarchCamp
		elseIf Hold == PaleHoldLocation
			returnVal = Alias_FieldCOSonsPaleCamp
		elseIf Hold == ReachHoldLocation
			returnVal = Alias_FieldCOSonsReachCamp
		elseIf Hold == RiftHoldLocation
			returnVal = Alias_FieldCOSonsRiftCamp
		elseIf Hold == WhiterunHoldLocation
			returnVal = Alias_FieldCOSonsWhiterunCamp
		elseIf Hold == WinterholdHoldLocation
			returnVal = Alias_FieldCOSonsWinterholdCamp
		endIf
	else
		CWScript.log("CWScript", " WARNING: GetAliasCampFieldCOForHold(" + Hold as String + ") expect 1 or 2 for FactionToCheck, intead got: " + FactionToCheck as String, 2, true, true)
	endIf
	CWScript.log("CWScript", "GetAliasCampFieldCOForHold(" + Hold as String + ") RETURNING: " + returnVal as String, 0, false, false)
	return returnVal
endFunction

function outputCampaignStatsXMLRowB()

	self.OutputXMLField("countWinImperials", countWinImperials as String)
	self.OutputXMLField("countWinSons", countWinSons as String)
	self.OutputXMLField("countWinReachImperials", countWinReachImperials as String)
	self.OutputXMLField("countWinReachSons", countWinReachSons as String)
	self.OutputXMLField("countWinHjaalmarchImperials", countWinHjaalmarchImperials as String)
	self.OutputXMLField("countWinHjaalmarchSons", countWinHjaalmarchSons as String)
	self.OutputXMLField("countWinWhiterunImperials", countWinWhiterunImperials as String)
	self.OutputXMLField("countWinWhiterunSons", countWinWhiterunSons as String)
	self.OutputXMLField("countWinFalkreathImperials", countWinFalkreathImperials as String)
	self.OutputXMLField("countWinFalkreathSons", countWinFalkreathSons as String)
	self.OutputXMLField("countWinPaleImperials", countWinPaleImperials as String)
	self.OutputXMLField("countWinPaleSons", countWinPaleSons as String)
	self.OutputXMLField("countWinWinterholdImperials", countWinWinterholdImperials as String)
	self.OutputXMLField("countWinWinterholdSons", countWinWinterholdSons as String)
	self.OutputXMLField("countWinRiftImperials", countWinRiftImperials as String)
	self.OutputXMLField("countWinRiftSons", countWinRiftSons as String)
endFunction

function CWOSetGlobal(location WhereAreWe, Bool DidWeWin)

	Int WhereWeGoin
	Int intWhereArewe = self.GetHoldID(WhereAreWe)
	if playerAllegiance == iImperials
		if WhereAreWe == HaafingarHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 0
			endIf
		elseIf WhereAreWe == HjaalmarchHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 1
			endIf
		elseIf WhereAreWe == ReachHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 3
			endIf
		elseIf WhereAreWe == FalkreathHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 2
			endIf
		elseIf WhereAreWe == WhiterunHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 5
			endIf
		elseIf WhereAreWe == PaleHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 4
			endIf
		elseIf WhereAreWe == RiftHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 6
			endIf
		elseIf WhereAreWe == WinterholdHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 9
			endIf
		elseIf WhereAreWe == EastmarchHoldLocation
			if DidWeWin == true
				WhereWeGoin = 0
			elseIf DidWeWin == false
				WhereWeGoin = 0
			endIf
		endIf
	elseIf playerAllegiance == iSons
		if WhereAreWe == HaafingarHoldLocation
			if DidWeWin == true
				WhereWeGoin = 0
			elseIf DidWeWin == false
				WhereWeGoin = 0
			endIf
		elseIf WhereAreWe == HjaalmarchHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 2
			endIf
		elseIf WhereAreWe == ReachHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 5
			endIf
		elseIf WhereAreWe == FalkreathHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 4
			endIf
		elseIf WhereAreWe == WhiterunHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 6
			endIf
		elseIf WhereAreWe == PaleHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 9
			endIf
		elseIf WhereAreWe == RiftHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 7
			endIf
		elseIf WhereAreWe == WinterholdHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 8
			endIf
		elseIf WhereAreWe == EastmarchHoldLocation
			if DidWeWin == true
				WhereWeGoin = self.CWORunThrough(intWhereArewe)
			elseIf DidWeWin == false
				WhereWeGoin = 0
			endIf
		endIf
	endIf
	CWOCurrentHold.SetValueInt(WhereWeGoin)
endFunction

location function GetCampLocationForHold(location Hold, Int GetCampForThisFaction)

	location returnVal
	if Hold == HaafingarHoldLocation
		if GetCampForThisFaction == iImperials
			
		else
			returnVal = MilitaryCampHaafingarSonsLocation
		endIf
	elseIf Hold == ReachHoldLocation
		if GetCampForThisFaction == iImperials
			returnVal = MilitaryCampReachImperialLocation
		else
			returnVal = MilitaryCampReachSonsLocation
		endIf
	elseIf Hold == HjaalmarchHoldLocation
		if GetCampForThisFaction == iImperials
			returnVal = MilitaryCampHjaalmarchImperialLocation
		else
			returnVal = MilitaryCampHjaalmarchSonsLocation
		endIf
	elseIf Hold == WhiterunHoldLocation
		if GetCampForThisFaction == iImperials
			returnVal = MilitaryCampWhiterunImperialLocation
		else
			returnVal = MilitaryCampWhiterunSonsLocation
		endIf
	elseIf Hold == FalkreathHoldLocation
		if GetCampForThisFaction == iImperials
			returnVal = MilitaryCampFalkreathImperialLocation
		else
			returnVal = MilitaryCampFalkreathSonsLocation
		endIf
	elseIf Hold == PaleHoldLocation
		if GetCampForThisFaction == iImperials
			returnVal = MilitaryCampPaleImperialLocation
		else
			returnVal = MilitaryCampPaleSonsLocation
		endIf
	elseIf Hold == WinterholdHoldLocation
		if GetCampForThisFaction == iImperials
			returnVal = MilitaryCampWinterholdImperialLocation
		else
			returnVal = MilitaryCampWinterholdSonsLocation
		endIf
	elseIf Hold == EastmarchHoldLocation
		if GetCampForThisFaction == iImperials
			returnVal = MilitaryCampEastmarchImperialLocation
		endIf
	elseIf Hold == RiftHoldLocation
		if GetCampForThisFaction == iImperials
			returnVal = MilitaryCampRiftImperialLocation
		else
			returnVal = MilitaryCampRiftSonsLocation
		endIf
	endIf
	return returnVal
endFunction

globalvariable function GetCWObjGlobal(Int HoldNumber)
{Returns a string based on the HoldNumber. Corresponds with iWhiterun, iRift, etc. Not for use to display to player. Just for sending to debug traces where you have a number refering to a hold.}

	if HoldNumber == iHaafingar
		return CWObjHaafingar
	elseIf HoldNumber == iReach
		return CWObjReach
	elseIf HoldNumber == iHjaalmarch
		return CWObjHjaalmarch
	elseIf HoldNumber == iWhiterun
		return CWObjWhiterun
	elseIf HoldNumber == iFalkreath
		return CWObjFalkreath
	elseIf HoldNumber == iPale
		return CWObjPale
	elseIf HoldNumber == iWinterhold
		return CWObjWinterhold
	elseIf HoldNumber == iEastmarch
		return CWObjEastmarch
	elseIf HoldNumber == iRift
		return CWObjRift
	endIf
endFunction

faction function GetCrimeFactionForHold(location HoldLocation)
{Returns the normal crime faction for the hold}

	faction returnFaction
	CWScript.log("CWScript", "GetCrimeFactionForHold(" + HoldLocation as String + ")", 0, false, false)
	if HoldLocation == HaafingarHoldLocation
		returnFaction = CrimeFactionHaafingar
	elseIf HoldLocation == ReachHoldLocation
		returnFaction = CrimeFactionReach
	elseIf HoldLocation == HjaalmarchHoldLocation
		returnFaction = CrimeFactionHjaalmarch
	elseIf HoldLocation == WhiterunHoldLocation
		returnFaction = CrimeFactionWhiterun
	elseIf HoldLocation == FalkreathHoldLocation
		returnFaction = CrimeFactionFalkreath
	elseIf HoldLocation == PaleHoldLocation
		returnFaction = CrimeFactionPale
	elseIf HoldLocation == WinterholdHoldLocation
		returnFaction = CrimeFactionWinterhold
	elseIf HoldLocation == EastmarchHoldLocation
		returnFaction = CrimeFactionEastmarch
	elseIf HoldLocation == RiftHoldLocation
		returnFaction = CrimeFactionRift
	else
		CWScript.log("CWScript", " WARNING: GetCrimeFactionForHold(" + HoldLocation as String + ") found an unexpected location that isn't a known hold.", 2, true, true)
	endIf
	CWScript.log("CWScript", "GetCrimeFactionForHold(" + HoldLocation as String + ") RETURNING: " + returnFaction as String, 0, false, false)
	return returnFaction
endFunction

Bool function IsActorAttacker(actor ActorToCheck, location locationOfBattle)
{Returns true if the actor is in the CWImperial/SonsFaction and that faction is currently the Attacker}

	Bool returnVal = self.GetAttacker(locationOfBattle) == self.GetActorAllgeiance(ActorToCheck)
	CWScript.log("CWScript", "IsActorAttacker(" + ActorToCheck as String + ", " + locationOfBattle as String + ") RETURNING: " + returnVal as String, 0, false, false)
	return returnVal
endFunction

Int function GetOwner(location LocationToCheck)
{Returns an int representing the faction that controls the location. Checked the CWOwner keyword data on the location. 1 = Imperials, 2 = Sons}

	Int owner = LocationToCheck.GetKeywordData(CWOwner) as Int
	CWScript.log("CWScript", "GetOwner(" + LocationToCheck as String + ") returning " + owner as String + "(" + self.FactionName(owner) + ")", 0, false, false)
	return owner
endFunction

function setInitialGarrisonCostsHjaalmarch()

	self.SetGarrisonCost(MorthalLocation, iCostNonContestable)
	self.SetGarrisonCost(StonehillsLocation, iCostSmall)
	self.SetGarrisonCost(FortSnowhawkLocation, iCostFort)
endFunction

message function getCampaignWonMessage()
{Returns the message object associated with the corresponding contestedHold and contestedHoldWinner property}

	message messageToReturn
	if playerAllegiance == iImperials
		if contestedHoldWinner == iImperials
			if contestedHoldWinType == 1
				messageToReturn = CWCampaignOutcomeWonAttackMsgImperial
			elseIf contestedHoldWinType == 2
				messageToReturn = CWCampaignOutcomeWonDefenseMsgImperial
			else
				CWScript.log("CWScript", " WARNING: getCampaignWonMessage() expected 1 or 2 for contestedHoldWinType, found: " + contestedHoldWinType as String, 2, false, false)
			endIf
		elseIf contestedHoldWinner == iSons
			if contestedHoldWinType == 1
				messageToReturn = CWCampaignOutcomeLostDefenseMsgImperial
			elseIf contestedHoldWinType == 2
				messageToReturn = CWCampaignOutcomeLostAttackMsgImperial
			else
				CWScript.log("CWScript", " WARNING: getCampaignWonMessage() expected 1 or 2 for contestedHoldWinType, found: " + contestedHoldWinType as String, 2, false, false)
			endIf
		else
			CWScript.log("CWScript", " WARNING: getCampaignWonMessage() expected 1 or 2 for contestedHoldWinner, found: " + contestedHoldWinType as String, 2, false, false)
		endIf
	elseIf playerAllegiance == iSons
		if contestedHoldWinner == iSons
			if contestedHoldWinType == 1
				messageToReturn = CWCampaignOutcomeWonAttackMsgSons
			elseIf contestedHoldWinType == 2
				messageToReturn = CWCampaignOutcomeWonDefenseMsgSons
			else
				CWScript.log("CWScript", " WARNING: getCampaignWonMessage() expected 1 or 2 for contestedHoldWinType, found: " + contestedHoldWinType as String, 2, false, false)
			endIf
		elseIf contestedHoldWinner == iImperials
			if contestedHoldWinType == 1
				messageToReturn = CWCampaignOutcomeLostDefenseMsgSons
			elseIf contestedHoldWinType == 2
				messageToReturn = CWCampaignOutcomeLostAttackMsgSons
			else
				CWScript.log("CWScript", " WARNING: getCampaignWonMessage() expected 1 or 2 for contestedHoldWinType, found: " + contestedHoldWinType as String, 2, false, false)
			endIf
		else
			CWScript.log("CWScript", " WARNING: getCampaignWonMessage() expected 1 or 2 for contestedHoldWinner, found: " + contestedHoldWinner as String, 2, false, false)
		endIf
	else
		CWScript.log("CWScript", " WARNING: getCampaignWonMessage() expected 1 or 2 for PlayerAllegiance, found: " + playerAllegiance as String, 2, false, false)
	endIf
	CWScript.log("CWScript", "getCampaignWonMessage() returning: " + messageToReturn as String, 0, false, false)
	return messageToReturn
endFunction

function Intimidate(actor Target)
{Calls the favor script function}

	CWScript.log("CWScript", "Intimidate(" + Target as String + ") calling Intimidate() on DialogueFavorGeneric quest's FavorDialogueScript", 0, false, false)
	DialogueFavorGenericS.Intimidate(Target)
endFunction

faction function getPlayerAllegianceEnemyFaction(Bool ReturnNPCFaction)

	return self.getFaction(self.getOppositeFactionInt(playerAllegiance), ReturnNPCFaction)
endFunction

function WinHoldOffScreenIfNotDoingCapitalBattles(location HoldToWin, Bool AttackersHaveWon, Bool DefendersHaveWon)

	CWScript.log("CWScript", "WinHoldOffScreen(HoldToWin:" + HoldToWin as String + ", AttackersHaveWon:" + AttackersHaveWon as String + ", DefendersHaveWon:" + DefendersHaveWon as String + ")", 0, false, false)
	self.WinHoldAndSetOwnerKeywordDataOnly(HoldToWin, AttackersHaveWon, DefendersHaveWon)
	self.completeCWObj(HoldToWin)
	if HoldToWin == HjaalmarchHoldLocation || HoldToWin == WinterholdHoldLocation
		Bool MQ302Running = MQ302.IsRunning()
		Int MQ302Stage = MQ302.getstage()
		CWScript.log("CWScript", "WinHoldOffScreen(HoldToWin:" + HoldToWin as String + ") MQ302 is running? [" + MQ302Running as String + "], MQ302 stage: " + MQ302Stage as String, 0, false, false)
		if MQ302Running && MQ302Stage < 40
			CWScript.log("CWScript", "WinHoldOffScreen(HoldToWin:" + HoldToWin as String + ") MQ302 is running and < stage 40, so calling it's stage 350 to shut it down.", 0, false, false)
			MQ302.setStage(350)
		endIf
	endIf
	self.WinHoldAndSetOwner(HoldToWin, AttackersHaveWon, DefendersHaveWon)
endFunction

function SetHoldOwnerByInt(Int HoldToSet, Int FactionToOwn, Bool DiplomaticVictory)
{Takes int HoldToSet and int FactionToOwn, and calls the appropriate setOwnerXXX(FactionToOwn) function - DiplomaticVictory is for if hold was won through MQ302, and sets keyword data which is used for conditions in dialogue with faction leader}

	if HoldToSet == iHaafingar
		self.AddGarrisonBackToWar(FortHraggstadLocation, FactionToOwn, DiplomaticVictory)
		self.SetOwnerHaafingar(FactionToOwn, DiplomaticVictory)
	elseIf HoldToSet == iReach
		self.AddGarrisonBackToWar(FortSungardLocation, FactionToOwn, DiplomaticVictory)
		self.SetOwnerReach(FactionToOwn, DiplomaticVictory)
	elseIf HoldToSet == iHjaalmarch
		self.AddGarrisonBackToWar(FortSnowhawkLocation, FactionToOwn, DiplomaticVictory)
		self.SetOwnerHjaalmarch(FactionToOwn, DiplomaticVictory)
	elseIf HoldToSet == iWhiterun
		self.AddGarrisonBackToWar(FortGreymoorLocation, FactionToOwn, DiplomaticVictory)
		self.SetOwnerWhiterun(FactionToOwn, DiplomaticVictory)
	elseIf HoldToSet == iFalkreath
		self.AddGarrisonBackToWar(FortNeugradLocation, FactionToOwn, DiplomaticVictory)
		self.SetOwnerFalkreath(FactionToOwn, DiplomaticVictory)
	elseIf HoldToSet == iPale
		self.AddGarrisonBackToWar(FortDunstadLocation, FactionToOwn, DiplomaticVictory)
		self.SetOwnerPale(FactionToOwn, DiplomaticVictory)
	elseIf HoldToSet == iWinterhold
		self.AddGarrisonBackToWar(FortKastavLocation, FactionToOwn, DiplomaticVictory)
		self.SetOwnerWinterhold(FactionToOwn, DiplomaticVictory)
	elseIf HoldToSet == iEastmarch
		self.AddGarrisonBackToWar(FortAmolLocation, FactionToOwn, DiplomaticVictory)
		self.SetOwnerEastmarch(FactionToOwn, DiplomaticVictory)
	elseIf HoldToSet == iRift
		self.AddGarrisonBackToWar(FortGreenwallLocation, FactionToOwn, DiplomaticVictory)
		self.SetOwnerRift(FactionToOwn, DiplomaticVictory)
	else
		CWScript.log("CWScript", "SetHoldOwnerByInt(" + HoldToSet as String + ") parametered unrecognized. Expected an int 1-9 as HoldToCheck, got something else.", 0, false, false)
	endIf
endFunction

Bool function IsActorDefender(actor ActorToCheck, location locationOfBattle)
{Returns true if the actor is in the CWImperial/SonsFaction and that faction is currently the Defender}

	return self.GetDefender(locationOfBattle) == self.GetActorAllgeiance(ActorToCheck)
endFunction

function donateSalary()
{player has donated his salary to the cause... right now this is just flavor, we may want it to contribute something to the attack delta, increase favor points, etc.}

	Salary = 0
endFunction

function CWOMurderMayhemScoreboard(Bool IsAttack, Int SiegeType)

	Int CalculatedReinforcements
	Int ReinforcementsBase
	Int SonsReinforcements = CWOSonsReinforcements.getvalueint()
	CWScript.log("CWScript", "CWOMurderMayhemScoreboard(" + SonsReinforcements as String + ") SonsReinforcements.", 0, false, false)
	Int ImperialReinforcements = CWOImperialReinforcements.getvalueint()
	CWScript.log("CWScript", "CWOMurderMayhemScoreboard(" + ImperialReinforcements as String + ") ImperialReinforcements.", 0, false, false)
	if CWOTroopPoolGameType.getValueInt() == 0
		if SonsReinforcements >= ImperialReinforcements
			SonsReinforcements -= ImperialReinforcements
			ImperialReinforcements = 0
		else
			ImperialReinforcements -= SonsReinforcements
			SonsReinforcements = 0
		endIf
		ImperialReinforcements = Math.Ceiling((ImperialReinforcements as Float) / 6.0)
		SonsReinforcements = Math.Ceiling((SonsReinforcements as Float) / 6.0)
		if ImperialReinforcements > 18
			ImperialReinforcements = 18
		elseIf ImperialReinforcements < 0
			ImperialReinforcements = 0
		endIf
		if SonsReinforcements > 18
			SonsReinforcements = 18
		elseIf SonsReinforcements < 0
			SonsReinforcements = 0
		endIf
	elseif CWOTroopPoolGameType.getValueInt() == 1
		ImperialReinforcements = (9 - countHoldsImperial) * 2
		SonsReinforcements = (9 - countHoldsSons) * 2
	else
		ImperialReinforcements = 0
		SonsReinforcements = 0
	endif
	if SiegeType == 0
		ReinforcementsBase = CWOSiegeReinforcements.getvalueint()
	elseIf SiegeType == 1
		ReinforcementsBase = CWOCapitalReinforcements.getvalueint()
	else
		ReinforcementsBase = CWOFortReinforcements.getvalueint()
	endIf
	SonsReinforcements += ReinforcementsBase + Utility.RandomInt(1, 5)
	ImperialReinforcements += ReinforcementsBase + Utility.RandomInt(1, 5)
	CWScript.log("CWScript", "CWOMurderMayhemScoreboard(" + SonsReinforcements as String + ") SonsReinforcements after calcs.", 0, false, false)
	CWScript.log("CWScript", "CWOMurderMayhemScoreboard(" + ImperialReinforcements as String + ") ImperialReinforcements after calcs.", 0, false, false)
	CWScript.log("CWScript", "ReinforcementsBase(" + ReinforcementsBase as String + ") ReinforcementsBase.", 0, false, false)
	int difficultyModifier = 2 - Utility.GetINIInt("iDifficulty:GamePlay")
	if difficultyModifier < 0
		difficultyModifier = 0
	endif
	difficultyModifier = Math.pow(4 as float, difficultyModifier as float) as int - 1
	if IsAttack
		if playerAllegiance == 1
			CWOAttackerReinforcements.setValue((ImperialReinforcements - 8 + difficultyModifier) as Float)
			CWODefenderReinforcements.setValue((SonsReinforcements + 4)  as Float)
		else
			CWOAttackerReinforcements.setValue((SonsReinforcements - 8 + difficultyModifier) as Float)
			CWODefenderReinforcements.setValue((ImperialReinforcements + 4) as Float)
		endIf
	elseIf playerAllegiance == 1
		CWOAttackerReinforcements.setValue(SonsReinforcements as Float)
		CWODefenderReinforcements.setValue((ImperialReinforcements - 4 + difficultyModifier) as Float)
	else
		CWOAttackerReinforcements.setValue(ImperialReinforcements as Float)
		CWODefenderReinforcements.setValue((SonsReinforcements - 4 + difficultyModifier) as Float)
	endIf
endFunction

function setCountHoldsSons()
{Sets CountHoldsSons property and associated CWCountHoldsSon global... note, call this AFTER setting any new ownerXXX property values, such as in the setOwnerXXX() function.}

	Int count = 0
	if OwnerHaafingar == iSons
		count += 1
	endIf
	if OwnerReach == iSons
		count += 1
	endIf
	if OwnerHjaalmarch == iSons
		count += 1
	endIf
	if OwnerWhiterun == iSons
		count += 1
	endIf
	if OwnerFalkreath == iSons
		count += 1
	endIf
	if OwnerPale == iSons
		count += 1
	endIf
	if OwnerWinterhold == iSons
		count += 1
	endIf
	if OwnerEastmarch == iSons
		count += 1
	endIf
	if OwnerRift == iSons
		count += 1
	endIf
	countHoldsSons = count
	CWCountHoldsSons.value = count as Float
endFunction

function StopCWCitizensFlee()

	CWScript.log("CWScript", "StopCWCitizensFlee() calling Stop() on CWCitizensFlee quest", 0, false, false)
	CWCitizensFlee.stop()
endFunction

function SetInitialOwners()
{Called in the OnInit block, one time set up of initial owners of all the locations.}

	self.SetOwnerHaafingar(iImperials, false)
	self.SetOwnerReach(iImperials, false)
	self.SetOwnerHjaalmarch(iImperials, false)
	self.SetOwnerWhiterun(iImperials, false)
	self.SetOwnerFalkreath(iImperials, false)
	self.SetOwnerPale(iSons, false)
	self.SetOwnerWinterhold(iSons, false)
	self.SetOwnerEastmarch(iSons, false)
	self.SetOwnerRift(iSons, false)
endFunction

function SetHoldOwner(location HoldLocationToSet, Int FactionToOwn)

	CWScript.log("CWScript", "SetHoldOwner(" + HoldLocationToSet as String + ", " + FactionToOwn as String + ") calling SetOwner()", 0, false, false)
	self.SetOwnerKeywordDataOnly(HoldLocationToSet, FactionToOwn)
	self.SetHoldOwnerByInt(self.GetHoldID(HoldLocationToSet), FactionToOwn, false)
endFunction

function setStrengthPointsHjaalmarch()

	if OwnerHjaalmarch == iImperials
		strHaafingarImperial += StrValueHjaalmarch
		strReachImperial += StrValueHjaalmarch
		strWhiterunImperial += StrValueHjaalmarch
		strPaleImperial += StrValueHjaalmarch
	else
		strHaafingarSons += StrValueHjaalmarch
		strReachSons += StrValueHjaalmarch
		strWhiterunSons += StrValueHjaalmarch
		strPaleSons += StrValueHjaalmarch
	endIf
endFunction

function modObjectiveByEnemySoldierDeath(actor DeadSoldier, Int AmountToMod, location Hold)

	CWScript.log("CWScript", "modObjectiveByEnemySoldierDeath(" + DeadSoldier as String + ")", 0, false, false)
	if self.IsPlayerInMyFaction(DeadSoldier)
		CWScript.log("CWScript", "modObjectiveByEnemySoldierDeath(" + DeadSoldier as String + ") is in same faction as player. Ignored.", 0, false, false)
	else
		location myHold
		CWScript.log("CWScript", "modObjectiveByEnemySoldierDeath(" + DeadSoldier as String + ") Will find the hold, mod the appropriate CWObjXXX, and update the approprirate objective", 0, false, false)
		if Hold == none
			myHold = self.GetMyCurrentHoldLocation(DeadSoldier as objectreference)
		else
			myHold = Hold
		endIf
		Int myHoldID = self.GetHoldID(myHold)
		globalvariable myCWObjGlobal = self.GetCWObjGlobal(myHoldID)
		self.modCWObjGlobal(myCWObjGlobal, AmountToMod as Float)
		CWScript.log("CWScript", "modObjectiveByEnemySoldierDeath(" + DeadSoldier as String + ") Calling updateObjective with the hold location found for " + DeadSoldier as String, 0, false, false)
		self.updateObjective(myHold, false, false, none)
	endIf
endFunction

function WinHoldAndSetOwnerKeywordDataOnly(location HoldLocationToSet, Bool AttackersWon, Bool DefendersWon)
{Call the moment one side has won a siege so faction leader has appropriate dialogue}

	WinningHoldAndSettingOwnerPleaseWait = true
	CWScript.log("CWScript", "WinHoldAndSetOwnerKeywordDataOnly() HoldLocationToSet:" + HoldLocationToSet as String + ", AttackersWon: " + AttackersWon as String + ", DefendersWon: " + DefendersWon as String, 0, false, false)
	Int winner = self.GetWinner(HoldLocationToSet, AttackersWon, DefendersWon)
	self.SetOwnerKeywordDataOnly(HoldLocationToSet, winner)
	WinHoldAndSetOwnerAlreadySetKeyword = true
	CWScript.log("CWScript", "WinHoldAndSetOwnerKeywordDataOnly() Will call ClearHoldCrimeGold(" + HoldLocationToSet as String + ")", 0, false, false)
	self.ClearHoldCrimeGold(HoldLocationToSet)
	WinningHoldAndSettingOwnerPleaseWait = false
endFunction

function CWOMissionPicker(objectreference CurrentFieldCO, Bool ForceFinalSiege, objectreference CampaignStartMarker)

	Int waitingFor
	Int HoldID = CWOCurrentHold.getvalueint()
	location HoldLocation = self.getLocationForHold(HoldID)
	location Capital = self.GetCapitalLocationForHold(HoldLocation)
	globalvariable myCWObjGlobal = self.GetCWObjGlobal(HoldID)
	if playerAllegiance == 1
		if HoldID == 1 ;Haafingar
			return 
		elseIf HoldID == 2 ;Reach
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				CWSiegeStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 3 ;Hjaalmarch
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				while CWFortSiegeCapital.IsStopped() == false
					waitingFor += 1
					utility.wait(1 as Float)
					CWScript.log("CWScript", self as String + "CreateMissions(" + HoldLocation as String + ") WAITING for CWFortSiegeCapital.IsStopped() == false. Have been waiting for:" + waitingFor as String, 1, true, true)
					if CWFortSiegeCapitalFort.GetLocation() != Capital
						CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ") sees the Capital " + Capital as String + " is already in CWFortSiegeCapital Fort Aliases, BAILING OUT of CreateMissions().", 1, false, false)
						return 
					endIf
				endWhile
				CWScript.log("CWScript", "CreateMissions() Calling CWFortSiegeMinorCapitalStart.sendstoryeventandwait(" + Capital as String + ", " + CurrentFieldCO as String + ", " + CampaignStartMarker as String + ")", 0, false, false)
				CWFortSiegeMinorCapitalStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 4 ;Whiterun
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				CWSiegeStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 5 ;Falkreath
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				while CWFortSiegeCapital.IsStopped() == false
					waitingFor += 1
					utility.wait(1 as Float)
					CWScript.log("CWScript", self as String + "CreateMissions(" + HoldLocation as String + ") WAITING for CWFortSiegeCapital.IsStopped() == false. Have been waiting for:" + waitingFor as String, 1, true, true)
					if CWFortSiegeCapitalFort.GetLocation() != Capital
						CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ") sees the Capital " + Capital as String + " is already in CWFortSiegeCapital Fort Aliases, BAILING OUT of CreateMissions().", 1, false, false)
						return 
					endIf
				endWhile
				CWScript.log("CWScript", "CreateMissions() Calling CWFortSiegeMinorCapitalStart.sendstoryeventandwait(" + Capital as String + ", " + CurrentFieldCO as String + ", " + CampaignStartMarker as String + ")", 0, false, false)
				CWFortSiegeMinorCapitalStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 6 ;Pale
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				while CWFortSiegeCapital.IsStopped() == false
					waitingFor += 1
					utility.wait(1 as Float)
					CWScript.log("CWScript", self as String + "CreateMissions(" + HoldLocation as String + ") WAITING for CWFortSiegeCapital.IsStopped() == false. Have been waiting for:" + waitingFor as String, 1, true, true)
					if CWFortSiegeCapitalFort.GetLocation() != Capital
						CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ") sees the Capital " + Capital as String + " is already in CWFortSiegeCapital Fort Aliases, BAILING OUT of CreateMissions().", 1, false, false)
						return 
					endIf
				endWhile
				CWScript.log("CWScript", "CreateMissions() Calling CWFortSiegeMinorCapitalStart.sendstoryeventandwait(" + Capital as String + ", " + CurrentFieldCO as String + ", " + CampaignStartMarker as String + ")", 0, false, false)
				CWFortSiegeMinorCapitalStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 7 ;Winterhold
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				while CWFortSiegeCapital.IsStopped() == false
					waitingFor += 1
					utility.wait(1 as Float)
					CWScript.log("CWScript", self as String + "CreateMissions(" + HoldLocation as String + ") WAITING for CWFortSiegeCapital.IsStopped() == false. Have been waiting for:" + waitingFor as String, 1, true, true)
					if CWFortSiegeCapitalFort.GetLocation() != Capital
						CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ") sees the Capital " + Capital as String + " is already in CWFortSiegeCapital Fort Aliases, BAILING OUT of CreateMissions().", 1, false, false)
						return 
					endIf
				endWhile
				CWScript.log("CWScript", "CreateMissions() Calling CWFortSiegeMinorCapitalStart.sendstoryeventandwait(" + Capital as String + ", " + CurrentFieldCO as String + ", " + CampaignStartMarker as String + ")", 0, false, false)
				CWFortSiegeMinorCapitalStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 8 ;Eastmarch
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				CWSiegeStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 9 ;Rift
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				CWSiegeStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		endIf
	elseIf playerAllegiance == 2
		if HoldID == 8 ;Eastmarch
			return 
		elseIf HoldID == 7 ;Winterhold
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				while CWFortSiegeCapital.IsStopped() == false
					waitingFor += 1
					utility.wait(1 as Float)
					CWScript.log("CWScript", self as String + "CreateMissions(" + HoldLocation as String + ") WAITING for CWFortSiegeCapital.IsStopped() == false. Have been waiting for:" + waitingFor as String, 1, true, true)
					if CWFortSiegeCapitalFort.GetLocation() != Capital
						CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ") sees the Capital " + Capital as String + " is already in CWFortSiegeCapital Fort Aliases, BAILING OUT of CreateMissions().", 1, false, false)
						return 
					endIf
				endWhile
				CWScript.log("CWScript", "CreateMissions() Calling CWFortSiegeMinorCapitalStart.sendstoryeventandwait(" + Capital as String + ", " + CurrentFieldCO as String + ", " + CampaignStartMarker as String + ")", 0, false, false)
				CWFortSiegeMinorCapitalStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 9 ;Rift
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				CWSiegeStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 6 ;Pale
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				while CWFortSiegeCapital.IsStopped() == false
					waitingFor += 1
					utility.wait(1 as Float)
					CWScript.log("CWScript", self as String + "CreateMissions(" + HoldLocation as String + ") WAITING for CWFortSiegeCapital.IsStopped() == false. Have been waiting for:" + waitingFor as String, 1, true, true)
					if CWFortSiegeCapitalFort.GetLocation() != Capital
						CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ") sees the Capital " + Capital as String + " is already in CWFortSiegeCapital Fort Aliases, BAILING OUT of CreateMissions().", 1, false, false)
						return 
					endIf
				endWhile
				CWScript.log("CWScript", "CreateMissions() Calling CWFortSiegeMinorCapitalStart.sendstoryeventandwait(" + Capital as String + ", " + CurrentFieldCO as String + ", " + CampaignStartMarker as String + ")", 0, false, false)
				CWFortSiegeMinorCapitalStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 4 ;Whiterun
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				CWSiegeStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 3 ;Hjaalmarch
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				while CWFortSiegeCapital.IsStopped() == false
					waitingFor += 1
					utility.wait(1 as Float)
					CWScript.log("CWScript", self as String + "CreateMissions(" + HoldLocation as String + ") WAITING for CWFortSiegeCapital.IsStopped() == false. Have been waiting for:" + waitingFor as String, 1, true, true)
					if CWFortSiegeCapitalFort.GetLocation() != Capital
						CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ") sees the Capital " + Capital as String + " is already in CWFortSiegeCapital Fort Aliases, BAILING OUT of CreateMissions().", 1, false, false)
						return 
					endIf
				endWhile
				CWScript.log("CWScript", "CreateMissions() Calling CWFortSiegeMinorCapitalStart.sendstoryeventandwait(" + Capital as String + ", " + CurrentFieldCO as String + ", " + CampaignStartMarker as String + ")", 0, false, false)
				CWFortSiegeMinorCapitalStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 5 ;Falkreath
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				while CWFortSiegeCapital.IsStopped() == false
					waitingFor += 1
					utility.wait(1 as Float)
					CWScript.log("CWScript", self as String + "CreateMissions(" + HoldLocation as String + ") WAITING for CWFortSiegeCapital.IsStopped() == false. Have been waiting for:" + waitingFor as String, 1, true, true)
					if CWFortSiegeCapitalFort.GetLocation() != Capital
						CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ") sees the Capital " + Capital as String + " is already in CWFortSiegeCapital Fort Aliases, BAILING OUT of CreateMissions().", 1, false, false)
						return 
					endIf
				endWhile
				CWScript.log("CWScript", "CreateMissions() Calling CWFortSiegeMinorCapitalStart.sendstoryeventandwait(" + Capital as String + ", " + CurrentFieldCO as String + ", " + CampaignStartMarker as String + ")", 0, false, false)
				CWFortSiegeMinorCapitalStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 1
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				CWSiegeStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		elseIf HoldID == 2
			if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
				CWSiegeStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			else
				CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
			endIf
		endIf
	endIf
endFunction

Bool function PlayersFactionIsAttacker(location LocationToCheck)

	Bool returnVal = self.GetAttacker(LocationToCheck) == playerAllegiance
	CWScript.log("CWScript", "PlayersFactionIsAttacker(" + LocationToCheck as String + ") RETURNING: " + returnVal as String, 0, false, false)
	return returnVal
endFunction

function restartCivilWarCompleteObjectiveIfNeeded(Int objectiveToCheck, location HoldLocationToCheck)

	Bool ObjDisplayed = CWObj.IsObjectiveDisplayed(objectiveToCheck)
	Bool ObjCompleted = CWObj.IsObjectiveCompleted(objectiveToCheck)
	Bool HoldOwnedByPlayersFaction = HoldLocationToCheck.GetKeywordData(CWOwner) == playerAllegiance as Float
	Bool ShouldCompleteObj = false
	if ObjDisplayed && ObjCompleted == false
		if HoldOwnedByPlayersFaction
			ShouldCompleteObj = true
		endIf
	endIf
	CWScript.log("CWScript", " restartCivilWarCompleteObjectiveIfNeeded() COMPLETE OBJECTIVE? " + ShouldCompleteObj as String + "; Details: Objective: " + objectiveToCheck as String + ", Location: " + HoldLocationToCheck as String + " Objective Displayed?: " + ObjDisplayed as String + ", Objective Completed?: " + ObjCompleted as String + ", Location Owned by Player's faction?: " + HoldOwnedByPlayersFaction as String, 0, false, false)
	if ShouldCompleteObj
		CWObj.SetObjectiveCompleted(objectiveToCheck, true)
	endIf
endFunction

function UnregisterEventHappening(location LocationWhereEventIsHappening)
{set CWEventHappening keyword data to 1, this can be checked in conditions if designers want things to happen or not happen when civil war events are happening in their location}

	if LocationWhereEventIsHappening.HasKeyword(CWEventHappening)
		CWScript.log("CWScript", " RegisterEventHappening(" + LocationWhereEventIsHappening as String + ") setting CWEventHappening keyword data to 0.", 0, false, false)
		LocationWhereEventIsHappening.SetKeywordData(CWEventHappening, 0 as Float)
	else
		CWScript.log("CWScript", " WARNING: RegisterEventHappening(" + LocationWhereEventIsHappening as String + ") does not have CWEventHappening keyword", 2, true, true)
	endIf
endFunction

function setInitialGarrisonCostsReach()

	self.SetGarrisonCost(MarkarthLocation, iCostNonContestable)
	self.SetGarrisonCost(CidhnaMineLocation, iCostNonContestable)
	self.SetGarrisonCost(LeftHandMineLocation, iCostNonContestable)
	self.SetGarrisonCost(SalviusFarmLocation, iCostNonContestable)
	self.SetGarrisonCost(KarthwastenLocation, iCostMedium)
	self.SetGarrisonCost(OldHroldanLocation, iCostMedium)
	self.SetGarrisonCost(KolskeggrMineLocation, iCostSmall)
	self.SetGarrisonCost(FortSungardLocation, iCostFort)
endFunction

function WinHoldAndSetOwner(location HoldLocationToSet, Bool AttackersWon, Bool DefendersWon)
{Call at the end of a siege in shutdown stage}

	Int NewOwner
	while WinningHoldAndSettingOwnerPleaseWait
		utility.wait(1 as Float)
		Int waitingFor = waitingFor + 1
		CWScript.log("CWScript", "WinHoldAndSetOwner(): WinningHoldAndSettingOwnerPleaseWait == true, meaning WinHoldAndSetOwnerKeywordOnly is currently processing... waiting for:" + waitingFor as String, 0, false, false)
	endWhile
	CWScript.log("CWScript", "WinHoldAndSetOwner() HoldLocationToSet:" + HoldLocationToSet as String + ", AttackersWon: " + AttackersWon as String + ", DefendersWon: " + DefendersWon as String, 0, false, false)
	if WinHoldAndSetOwnerAlreadySetKeyword == false
		CWScript.log("CWScript", "WinHoldAndSetOwner() sees WinHoldAndSetOwnerAlreadySetKeyword == false, so we will determine the new owner with GetWinner()", 0, false, false)
		NewOwner = self.GetWinner(HoldLocationToSet, AttackersWon, DefendersWon)
	else
		CWScript.log("CWScript", "WinHoldAndSetOwner() sees WinHoldAndSetOwnerAlreadySetKeyword == true, so we will determine the new owner with GetKeywordData()", 0, false, false)
		NewOwner = HoldLocationToSet.GetKeywordData(CWOwner) as Int
		WinHoldAndSetOwnerAlreadySetKeyword = false
	endIf
	CWScript.log("CWScript", "WinHoldAndSetOwner() Will call ClearHoldCrimeGold(" + HoldLocationToSet as String + ")", 0, false, false)
	self.ClearHoldCrimeGold(HoldLocationToSet)
	CWScript.log("CWScript", "WinHoldAndSetOwner() Will call SetHoldOwner() for faction:" + NewOwner as String, 0, false, false)
	self.SetHoldOwner(HoldLocationToSet, NewOwner)
endFunction

function Brawl(actor Target)
{Calls the favor script function}

	CWScript.log("CWScript", "Brawl(" + Target as String + ") calling Brawl() on DialogueFavorGeneric quest's FavorDialogueScript", 0, false, false)
	DialogueFavorGenericS.Brawl(Target, none)
endFunction

function setStrengthPointsWinterhold()

	if OwnerWinterhold == iImperials
		strPaleImperial += StrValueWinterhold
		strEastmarchImperial += StrValueWinterhold
	else
		strPaleSons += StrValueWinterhold
		strEastmarchSons += StrValueWinterhold
	endIf
endFunction

function SetOwnerKeywordDataOnly(location LocationToSet, Int FactionToOwn)
{used by SetOwner() function... probably not a good idea to call on it's own, unless you know you will soon be following up with a setowner call}

	if LocationToSet
		LocationToSet.SetKeywordData(CWOwner, FactionToOwn as Float)
	endIf
endFunction

function GiveMissionReward()

	CWScript.log("CWScript", "GiveMissionReward()", 0, false, false)
	game.GetPlayer().AddItem(CWMissionReward as form, 1, false)
endFunction

faction function getPlayerAllegianceFaction(Bool ReturnNPCFaction)

	return self.getFaction(playerAllegiance, ReturnNPCFaction)
endFunction

function setInitialGarrisonCostsPale()

	self.SetGarrisonCost(DawnstarLocation, iCostNonContestable)
	self.SetGarrisonCost(AngasMillLocation, iCostSmall)
	self.SetGarrisonCost(LoreiusFarmLocation, iCostSmall)
	self.SetGarrisonCost(FortDunstadLocation, iCostFort)
endFunction

function OutputCampaignStatsXMLRow()

	self.OutputXMLRowOpenTag("CampaignStats")
	self.outputCampaignStatsXMLRowA()
	self.outputCampaignStatsXMLRowB()
	self.OutputXMLRowCloseTag("CampaignStats")
endFunction

Int function GetWinner(location LocationOfFinaleBattle, Bool AttackerWon, Bool DefenderWon)

	Int returnVar
	CWScript.log("CWScript", "GetWinner() LocationOfFinalBattle: " + LocationOfFinaleBattle as String + " AttackerWon: " + AttackerWon as String + ", DefenderWon:" + DefenderWon as String, 0, false, false)
	if AttackerWon
		returnVar = self.GetAttacker(LocationOfFinaleBattle)
	elseIf DefenderWon
		returnVar = self.GetDefender(LocationOfFinaleBattle)
	else
		CWScript.log("CWScript", " WARNING: GetWinner() called with NEITHER AtackerWon nor DefenderWon parameters being true!", 2, true, true)
		returnVar = -1
	endIf
	CWScript.log("CWScript", "GetWinner() returning " + returnVar as String, 0, false, false)
	return returnVar
endFunction

function setStrengthPointsFalkreath()

	if OwnerFalkreath == iImperials
		strReachImperial += StrValueFalkreath
		strWhiterunImperial += StrValueFalkreath
		strRiftImperial += StrValueFalkreath
	else
		strReachSons += StrValueFalkreath
		strWhiterunSons += StrValueFalkreath
		strRiftSons += StrValueFalkreath
	endIf
endFunction

Bool function SonsAreAttacking(location LocationToCheck)

	CWScript.log("CWScript", "SonsAreAttacking()", 0, false, false)
	Bool returnVal = self.GetAttacker(LocationToCheck) == iSons
	CWScript.log("CWScript", "SonsAreAttacking() returning: " + returnVal as String, 0, false, false)
	return returnVal
endFunction

function DetermineAndSetCrimeFactionForSoldierActor(actor ActorRef)

	faction myCrimeFaction
	CWScript.log("CWScript", "DetermineAndSetCrimeFactionForSoldierActor(" + ActorRef as String + ") will determine my hold.", 0, false, false)
	location myHold = self.GetMyEditorLocationHoldLocation(ActorRef as objectreference)
	CWScript.log("CWScript", "DetermineAndSetCrimeFactionForSoldierActor(" + ActorRef as String + ") myHold = " + myHold as String + " now will determine if I am a defender or attacker and get my crime faction.", 0, false, false)
	;USKP 2.0.5 - Previously used GetEditorLocation() but that has bugs and sometimes returns NONE when it shouldn't be.
	location ActorLocation = ActorRef.GetCurrentLocation()
	if ActorLocation.HasKeyword(CWFort)
		CWScript.log("CWScript", "DetermineAndSetCrimeFactionForSoldierActor(" + ActorRef as String + ") location is a CWFort, NOT CHANGING CRIME FACTION. Location: " + ActorLocation as String, 0, false, false)
		return 
	endIf
	if self.IsActorDefender(ActorRef, myHold)
		myCrimeFaction = self.GetCrimeFactionForHold(myHold)
	elseIf self.IsActorAttacker(ActorRef, myHold)
		myCrimeFaction = self.GetCrimeFactionForActorFaction(ActorRef)
	else
		CWScript.log("CWScript", " WARNING: ActorRef is neither attacker nor defender!!! DetermineAndSetCrimeFactionForSoldierActor(" + ActorRef as String + ")", 2, true, true)
	endIf
	CWScript.log("CWScript", "DetermineAndSetCrimeFactionForSoldierActor(" + ActorRef as String + ") will set crime faction to: " + myCrimeFaction as String, 0, false, false)
	ActorRef.SetCrimeFaction(myCrimeFaction)
	CWScript.log("CWScript", "DetermineAndSetCrimeFactionForSoldierActor(" + ActorRef as String + ") double checking GetCrimeFaction():" + ActorRef.GetCrimeFaction() as String, 0, false, false)
endFunction

function completeCWObj(location HoldWhoseObjectiveToComplete)

	Int myHoldID = self.GetHoldID(HoldWhoseObjectiveToComplete)
	globalvariable myCWObjGlobal = self.GetCWObjGlobal(myHoldID)
	if WhiterunSiegeFinished == false
		WhiterunSiegeFinished = true
		myCWObjGlobal.setValue(100 as Float)
		self.updateObjective(HoldWhoseObjectiveToComplete, true, false, none)
	else
		myCWObjGlobal.setValue(100 as Float)
		self.updateObjective(HoldWhoseObjectiveToComplete, true, false, none)
	endIf
endFunction

function modCWObjGlobal(globalvariable GlobalToModify, Float amountToAdd)

	Float CWObjVal = (((GlobalToModify.GetValue() as Int) as Float + amountToAdd) as Int) as Float
	if CWObjVal > 99 as Float
		CWObjVal = 99.0000
	endIf
	CWScript.log("CWScript", "modCWObjGlobal() Calling OBSOLETE NOT INCREMENTING GLOBAL()", 1, false, false)
endFunction

function DiscoverMilitaryCampMarkers(Int FactionID)

	if FactionID == iImperials
		MilitaryCampFalkreathImperialMapMarker.addToMap(false)
		MilitaryCampHjaalmarchImperialMapMarker.addToMap(false)
		MilitaryCampPaleImperialMapMarker.addToMap(false)
		MilitaryCampReachImperialMapMarker.addToMap(false)
		MilitaryCampRiftImperialMapMarker.addToMap(false)
		MilitaryCampWhiterunImperialMapMarker.addToMap(false)
		MilitaryCampWinterholdImperialMapMarker.addToMap(false)
	elseIf FactionID == iSons
		MilitaryCampFalkreathSonsMapMarker.addToMap(false)
		MilitaryCampHjaalmarchSonsMapMarker.addToMap(false)
		MilitaryCampPaleSonsMapMarker.addToMap(false)
		MilitaryCampReachSonsMapMarker.addToMap(false)
		MilitaryCampRiftSonsMapMarker.addToMap(false)
		MilitaryCampWhiterunSonsMapMarker.addToMap(false)
		MilitaryCampWinterholdSonsMapMarker.addToMap(false)
	else
		CWScript.log("CWScript", " WARNING: DiscoverMilitaryCampMarkers(" + FactionID as String + ") FactionID parameter unrecognized. Expect 1 or 2. Got:" + FactionID as String, 2, true, true)
	endIf
endFunction

function CreateMissions(location HoldLocation, objectreference CurrentFieldCO, Bool ForceFinalSiege = false, objectreference CampaignStartMarker = None, bool FromSpanishInquisition = false)	; Reddit BugFix #11

	if WarIsActive == -1
		CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ", " + CurrentFieldCO as String + ") WarIsActive != 1, so we are NOT creating story events", 1, 1 as Bool, true)
		return 
	endIf
	if CWOFirstMissionGlobal.GetValue() > 0 as Float || CWOHijackYes.GetValue() <= 0 as Float
		CWScript.log("CWScript", "CWO JUST HIJACKED CREATEMISSIONS().  IT'S HOLDING IT FOR RANSOM, AND WILL ONLY GIVE IT UP IN EXCHANGE FOR JOHN MCCLANE.  YIPEE KI-YAY MISTER FALCON.", 1, 1 as Bool, true)
		self.CWOCreateMissions(HoldLocation, CurrentFieldCO, ForceFinalSiege, CampaignStartMarker)
		return 
	else
		CWScript.log("CWScript", "CWO LET CREATEMISSIONS BE.  THIS TIME, MISTER FALCON.", 1, 1 as Bool, true)
		CWOFirstMissionGlobal.setValue(1.00000)
	endIf
	if CWOStillABetterEndingGlobal.GetValue() as Int != 1
		if CWOCurrentHold.getvalueint() != self.GetHoldID(HoldLocation)
			if CWODefendingActive.getvalueint() == 0 && FromSpanishInquisition == false	; Reddit BugFix #11
				return 
			endIf
		endIf
		if CWOCapitalQuestRunning.getvalueint() == 1 && ForceFinalSiege == false
			return 
		endIf
	endIf
	self.GetRikkeOrGalmar(-1).Enable(false)
	Bool CWOCMWhileLoop = false
	CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ", " + CurrentFieldCO as String + ") creating story events.", 0, false, false)
	Int HoldID = self.GetHoldID(HoldLocation)
	globalvariable myCWObjGlobal = self.GetCWObjGlobal(HoldID)
	if HoldLocation == HaafingarHoldLocation && HaafingarFortBattleComplete as Bool
		CWScript.log("CWScript", "CreateMissions() HaafingarHoldLocation and HaafingarFortBattleComplete, setting CWObjHaafingar to 99", 0, false, false)
		myCWObjGlobal.setValue(99 as Float)
	elseIf HoldLocation == EastmarchHoldLocation && EastmarchFortBattleComplete as Bool
		CWScript.log("CWScript", "CreateMissions() EastmarchHoldLocation and EastmarchFortBattleComplete, setting CWObjEastmarch to 99", 0, false, false)
		myCWObjGlobal.setValue(99 as Float)
	else
		CWScript.log("CWScript", "CreateMissions() Not a final hold, or not ready for final battle, setting CWObjxxx to 0", 0, false, false)
		myCWObjGlobal.setValue(0 as Float)
	endIf
	if myCWObjGlobal.GetValue() >= 99 as Float || ForceFinalSiege == true
		CWScript.log("CWScript", "CreateMissions() myCWObjGlobal >= 100, will start resolution mission, checking to see if the capital is a city", 0, false, false)
		location Capital = self.GetCapitalLocationForHold(HoldLocation)
		if Capital.HasKeyword(LocTypeCity)
			if Capital == SolitudeLocation && playerAllegiance == iImperials || Capital == WindhelmLocation && playerAllegiance == iSons
				
			else
				CWScript.log("CWScript", "CreateMissions() Capital is a city, will start CWSiege quest", 0, false, false)
				CWSiegeStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
			endIf
			if CWOStillABetterEndingGlobal.GetValue() as Int == 1
				if playerAllegiance == iImperials
					;playerAllegiance = iSons - schofida: Why are we doing this?
					CWSiegeStart.sendstoryeventandwait(SolitudeLocation, CurrentFieldCO, CampaignStartMarker, 0, 0)
					while CWSiegeS.getstage() != 0
						utility.wait(1.00000)
					endWhile
				elseIf playerAllegiance == iSons
					;playerAllegiance = iImperials - schofida: Why are we doing this?
					CWSiegeStart.sendstoryeventandwait(WindhelmLocation, CurrentFieldCO, CampaignStartMarker, 0, 0)
					while CWSiegeS.getstage() != 0
						utility.wait(1.00000)
					endWhile
				endIf
			endIf
		elseIf HoldLocation.GetKeywordData(CWOwner) == playerAllegiance as Float
			CWScript.log("CWScript", " WARNING: CreateMissions() Capital is not a city AND player's faction owns the hold, not implemented fully", 2, true, true)
			CWOCMWhileLoop = CWFortSiegeMinorCapitalStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
		else
			CWScript.log("CWScript", "CreateMissions() Capital is not a city, player's faction does not own the hold, will start a CWFortSiege quest using CWFortSiegeMinorCapitalStart keyword", 0, false, false)
			while CWFortSiegeCapital.IsStopped() == false
				Int waitingFor = waitingFor + 1
				utility.wait(1 as Float)
				CWScript.log("CWScript", self as String + "CreateMissions(" + HoldLocation as String + ") WAITING for CWFortSiegeCapital.IsStopped() == false. Have been waiting for:" + waitingFor as String, 1, true, true)
				if CWFortSiegeCapitalFort.GetLocation() != Capital
					CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ") sees the Capital " + Capital as String + " is already in CWFortSiegeCapital Fort Aliases, BAILING OUT of CreateMissions().", 1, false, false)
					return 
				endIf
			endWhile
			CWScript.log("CWScript", "CreateMissions() Calling CWFortSiegeMinorCapitalStart.sendstoryeventandwait(" + Capital as String + ", " + CurrentFieldCO as String + ", " + CampaignStartMarker as String + ")", 0, false, false)
			CWFortSiegeMinorCapitalStart.sendstoryeventandwait(Capital, CurrentFieldCO, CampaignStartMarker, 0, 0)
		endIf
	else
		CWScript.log("CWScript", "CreateMissions() myCWObjGlobal < 100, will start normal missions", 0, false, false)
		CWMissionStart.SendStoryEvent(HoldLocation, CurrentFieldCO, CampaignStartMarker, 1, 0)
	endIf
	CWScript.log("CWScript", "CreateMissions(" + HoldLocation as String + ", " + CurrentFieldCO as String + "," + CampaignStartMarker as String + ") done creating story events.", 0, false, false)
endFunction

function CWOStartCapital(location CWOHoldToWin, Bool FromSpanishInquisition = false)	; Reddit BugFix #11

	location CWOCapital = self.GetCapitalLocationForHold(CWOHoldToWin)
	objectreference CWOFieldCO = self.GetReferenceHQFieldCOForHold(CWOHoldToWin, playerAllegiance)
	CWOHoldToWin.SetKeywordData(CWSiegeRunning, 0 as Float)
	if CWODefendingActive.value == 1 as Float
		CWODefendingStart.sendstoryeventandwait(CWOCapital, CWOFieldCO, none, 0, 0)
	endIf
	CWOFirstMissionGlobal.setValue(0 as Float)
	self.CreateMissions(CWOHoldToWin, CWOFieldCO, true, CWOFieldCO, FromSpanishInquisition)	; Reddit BugFix #11
	self.setStage(50)
endFunction

objectreference function GetReferenceHQFieldCOForHold(location Hold, Int FactionToCheck)

	CWScript.log("CWScript", "GetReferenceHQFieldCOForHold(" + Hold as String + ") calling GetAliasHQFieldCOForHold()", 0, false, false)
	objectreference returnVar = self.GetAliasHQFieldCOForHold(Hold, FactionToCheck).GetReference()
	CWScript.log("CWScript", "GetReferenceHQFieldCOForHold(" + Hold as String + ") calling GetAliasHQFieldCOForHold() RETURN:" + returnVar as String, 0, false, false)
	return returnVar
endFunction

Int function ValidateHoldToAttack(Int Hold, Int HoldOwner, Int AttackingFaction, Int AttackerStengthPoints)
{Sub function for ChooseHoldToAttack, returns an int with the failure code, or 0 if there is no failure}

	Int failure = 0
	if Hold == iHaafingar || Hold == iEastmarch && CWDebugAllowCampaignsInFinalHolds.GetValue() == 0 as Float
		failure = 1
		CWScript.log("CWScript", "ChooseHoldToAttack tried to attack Haafingar or Eastmarch.", 0, false, false)
	elseIf AttackingFaction == HoldOwner
		failure = 2
		CWScript.log("CWScript", "ChooseHoldToAttack tried to attack a hold already owned by the AttackingFaction.", 0, false, false)
	elseIf AttackerStengthPoints == 0
		failure = 3
		CWScript.log("CWScript", "ChooseHoldToAttack tried to attack a hold where attacking faction has no AttackPoints in hold (owns no adjacent holds).", 0, false, false)
	else
		CWScript.log("CWScript", "ChooseHoldToAttack picked a valid hold to attack (" + self.HoldName(Hold) + ").", 0, false, false)
	endIf
	return failure
endFunction

function ClearActorsEnemyFlagOnCrimeFactions(actor ActorWhoseCrimeFactionShouldClearPlayerEnemyFlag)

	faction myCrimeFaction = ActorWhoseCrimeFactionShouldClearPlayerEnemyFlag.GetCrimeFaction()
	CWScript.log("CWScript", "ClearActorsEnemyFlagOnCrimeFactions(" + ActorWhoseCrimeFactionShouldClearPlayerEnemyFlag as String + ") clearing player enemy flag on faction: " + myCrimeFaction as String, 0, false, false)
	if myCrimeFaction
		myCrimeFaction.SetPlayerEnemy(false)
	endIf
endFunction

function setInitialGarrisonCostsHaafingar()

	self.SetGarrisonCost(SolitudeLocation, iCostNonContestable)
	self.SetGarrisonCost(SolitudeSawmillLocation, iCostNonContestable)
	self.SetGarrisonCost(KatlasFarmLocation, iCostNonContestable)
	self.SetGarrisonCost(DragonBridgeLocation, iCostNonContestable)
	self.SetGarrisonCost(FortHraggstadLocation, iCostNonContestable)
endFunction

function setInitialCosts()
{Called in the OnInit block, one time set up of initial Costs of all the locations.}

	self.setInitialGarrisonCostsHaafingar()
	self.setInitialGarrisonCostsReach()
	self.setInitialGarrisonCostsHjaalmarch()
	self.setInitialGarrisonCostsWhiterun()
	self.setInitialGarrisonCostsFalkreath()
	self.setInitialGarrisonCostsPale()
	self.setInitialGarrisonCostsWinterhold()
	self.setInitialGarrisonCostsEastmarch()
	self.setInitialGarrisonCostsRift()
endFunction

Function setOwner(Location LocationToSet1, int FactionToOwn, Location LocationToSet2 = None, Location LocationToSet3 = None, Location LocationToSet4 = None, \
					Location LocationToSet5 = None, Location LocationToSet6 = None , Location LocationToSet7 = None , Location LocationToSet8 = None, \
					bool SetKeywordDataImmediately = False)
{Sets the CWOwner keyword on LocationToSet based on the FactionToOwn (takes 1,2, or 3, it sets the keyword data to -1, -2, -3 for Imperials, Sons, both factions (ie patrols) respectively). Note: If Faction to Own == -999 it means don't change the keyword, just reset the location - used to reset the guards without changing ownership}

	Int MaxSecondsToWaitBeforeBailingOut = 600
	if debugSkipSetOwnerCalls
		CWScript.log("CWScript", "setOnwer() debugSkipSetOwnerCalls is turned on, so we are skipping calls to set owner. This will break things, but is convenient to start campaign faster for certain types of playtesting.", 1, false, false)
		return 
	endIf
	if SetKeywordDataImmediately
		self.SetOwnerKeywordDataOnly(LocationToSet1, FactionToOwn)
		self.SetOwnerKeywordDataOnly(LocationToSet2, FactionToOwn)
		self.SetOwnerKeywordDataOnly(LocationToSet3, FactionToOwn)
		self.SetOwnerKeywordDataOnly(LocationToSet4, FactionToOwn)
		self.SetOwnerKeywordDataOnly(LocationToSet5, FactionToOwn)
		self.SetOwnerKeywordDataOnly(LocationToSet6, FactionToOwn)
		self.SetOwnerKeywordDataOnly(LocationToSet7, FactionToOwn)
		self.SetOwnerKeywordDataOnly(LocationToSet8, FactionToOwn)
	endIf
	while WaitingForCWResetGarrisonQuest1 as Bool || WaitingForCWResetGarrisonQuest2 as Bool || WaitingForCWResetGarrisonQuest3 as Bool || WaitingForCWResetGarrisonQuest4 as Bool
		CWScript.log("CWScript", "setOwner() Wants to process new locations, but we are already processing another request and are still waiting for CWResetGarrison quests to call back.", 0, false, false)
		utility.wait(5 as Float)
	endWhile
	CWScript.log("CWScript", "setOwner(), setting WaitingForCWResetGarrisonQuest1/2/3/4/5/6/7/8 to True", 0, false, false)
	WaitingForCWResetGarrisonQuest1 = true
	WaitingForCWResetGarrisonQuest2 = true
	WaitingForCWResetGarrisonQuest3 = true
	WaitingForCWResetGarrisonQuest4 = true
	WaitingForCWResetGarrisonQuest5 = true
	WaitingForCWResetGarrisonQuest6 = true
	WaitingForCWResetGarrisonQuest7 = true
	WaitingForCWResetGarrisonQuest8 = true
	if !self.setOwnerStartResetQuest(LocationToSet1, FactionToOwn, CWResetGarrisonStart1)
		WaitingForCWResetGarrisonQuest1 = false
	endIf
	if !self.setOwnerStartResetQuest(LocationToSet2, FactionToOwn, CWResetGarrisonStart2)
		WaitingForCWResetGarrisonQuest2 = false
	endIf
	if !self.setOwnerStartResetQuest(LocationToSet3, FactionToOwn, CWResetGarrisonStart3)
		WaitingForCWResetGarrisonQuest3 = false
	endIf
	if !self.setOwnerStartResetQuest(LocationToSet4, FactionToOwn, CWResetGarrisonStart4)
		WaitingForCWResetGarrisonQuest4 = false
	endIf
	if !self.setOwnerStartResetQuest(LocationToSet5, FactionToOwn, CWResetGarrisonStart5)
		WaitingForCWResetGarrisonQuest5 = false
	endIf
	if !self.setOwnerStartResetQuest(LocationToSet6, FactionToOwn, CWResetGarrisonStart6)
		WaitingForCWResetGarrisonQuest6 = false
	endIf
	if !self.setOwnerStartResetQuest(LocationToSet7, FactionToOwn, CWResetGarrisonStart7)
		WaitingForCWResetGarrisonQuest7 = false
	endIf
	if !self.setOwnerStartResetQuest(LocationToSet8, FactionToOwn, CWResetGarrisonStart8)
		WaitingForCWResetGarrisonQuest8 = false
	endIf
	while WaitingForCWResetGarrisonQuest1 as Bool || WaitingForCWResetGarrisonQuest2 as Bool || WaitingForCWResetGarrisonQuest3 as Bool || WaitingForCWResetGarrisonQuest4 as Bool || WaitingForCWResetGarrisonQuest5 as Bool || WaitingForCWResetGarrisonQuest6 as Bool || WaitingForCWResetGarrisonQuest7 as Bool || WaitingForCWResetGarrisonQuest8 as Bool || CWResetGarrison1.IsStopped() == false || CWResetGarrison2.IsStopped() == false || CWResetGarrison3.IsStopped() == false || CWResetGarrison4.IsStopped() == false || CWResetGarrison5.IsStopped() == false || CWResetGarrison6.IsStopped() == false || CWResetGarrison7.IsStopped() == false || CWResetGarrison8.IsStopped() == false
		Int SecondsSpentWaiting
		if SecondsSpentWaiting >= MaxSecondsToWaitBeforeBailingOut
			CWScript.log("CWScript", "setOwner(): ERROR!!! Have been waiting for call backs from CWResetGarrison1/2/3/4/5/6/7/8 quests for " + SecondsSpentWaiting as String + " seconds. Giving up.", 2, false, false)
			return 
		else
			CWScript.log("CWScript", "setOwner() waiting for CWResetGarrison1/2/3/4/5/6/7/8 quests to call back. Have been waiting for " + SecondsSpentWaiting as String + " seconds.", 0, false, false)
			SecondsSpentWaiting += 5
			utility.wait(5 as Float)
		endIf
	endWhile
	CWScript.log("CWScript", "setOwner() is finsihed", 0, false, false)
endFunction

function SetGarrisonCost(location LocToSet, Int Cost)
{Takes Location LocToSet and sets its CWCost keyword data to Int Cost}

	LocToSet.SetKeywordData(CWCost, Cost as Float)
	CWScript.log("CWScript", "SetGarrisonCost() Location =" + LocToSet as String + ", Cost = " + Cost as String, 0, false, false)
endFunction

Int function GetGarrisonCost(location LocToGetCost)

	Int Cost = LocToGetCost.GetKeywordData(CWCost) as Int
	CWScript.log("CWScript", "GetGarrisonCost() Location =" + LocToGetCost as String + ", Cost = " + Cost as String, 0, false, false)
	return Cost
endFunction

function ClearHoldCrimeGold(location HoldLocation)

	CWScript.log("CWScript", "ClearHoldCrimeGold(" + HoldLocation as String + ") clearing crime gold.", 0, false, false)
	faction crimeFaction = self.GetCrimeFactionForHold(HoldLocation)
	crimeFaction.SetCrimeGold(0)
	crimeFaction.SetCrimeGoldViolent(0)
endFunction

function finishCampaign()
{Sets properties, and other campaign clean up duties... called by CWCampaign stage 255}

	campaignRunning = 0
	CWCampaignS.completedMission = 0
	CWCampaignS.failedMission = 0
	(CWCampaign as cwcampaignscript).stopTutorialMission()
	self.setContestedHoldWinType()
	self.SetCountWins()
	previousContestedHold = contestedHold
	if debugForceOffscreenResult == 0
		playerReport = 1
		self.getCampaignWonMessage().show(0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		if contestedHoldWinner == playerAllegiance
			CWCampaignObj.setStage(20)
		else
			CWCampaignObj.setStage(30)
		endIf
	endIf
	self.ContributeToSalaryPool()
	if debugForceOffscreenResult == 0
		CWScript.log("CWScript", "CWCampaign: stopping quest, campaign finished.", 0, false, false)
		CWCampaign.stop()
	endIf
endFunction

function RegisterEventHappening(location LocationWhereEventIsHappening)
{set CWEventHappening keyword data to 1, this can be checked in conditions if designers want things to happen or not happen when civil war events are happening in their location}

	if LocationWhereEventIsHappening.HasKeyword(CWEventHappening)
		CWScript.log("CWScript", " RegisterEventHappening(" + LocationWhereEventIsHappening as String + ") setting CWEventHappening keyword data to 1.", 0, false, false)
		LocationWhereEventIsHappening.SetKeywordData(CWEventHappening, 1 as Float)
	else
		CWScript.log("CWScript", " WARNING: RegisterEventHappening(" + LocationWhereEventIsHappening as String + ") does not have CWEventHappening keyword", 2, true, true)
	endIf
endFunction

function StartNewCampaign()
{Sets Attacker, Defender, Contested Hold, and strHOLDXXX properties.}

	CWScript.log("CWScript", "StartNewCampagin() will set CWScript properties for new campaign.", 0, false, false)
	self.setStrengthPoints()
	attacker = self.ChooseAttackingFaction(CWDebugForceAttacker.value as Int)
	if attacker == iImperials
		defender = iSons
	else
		defender = iImperials
	endIf
	CWAttacker.value = attacker as Float
	CWDefender.value = defender as Float
	contestedHold = self.ChooseHoldToAttack(attacker, CWDebugForceHold.value as Int)
	CWContestedHold.value = contestedHold as Float
	self.setAttackDelta()
	PurchaseDelta = AttackDelta
	countCampaigns += 1
	CWScript.log("CWScript", "StartNewCampagin() finished setting CWScript properties for new campaign.", 0, false, false)
	CWScript.log("CWScript", "StartNewCampagin() Attacker=" + attacker as String + ", Defender=" + defender as String + ", ContestedHold=" + contestedHold as String + ", AttackDelta=" + AttackDelta as String, 0, false, false)
	if debugDBTraces == 1
		self.OutputCampaignStatsXMLRow()
	endIf
	if debugForceOffscreenResult == 0
		self.startCampaignQuest(contestedHold)
	else
		self.resolveOffscreen(0)
	endIf
endFunction

faction function getFaction(Int FactionToReturn, Bool ReturnNPCFaction)
{Takes an int and returns the appropriate faction (1 = Imperials, 2 = Sons), ReturnNPCFaction returns the NPC faction that makes them hostile to members of the opposite NPC faction}

	if FactionToReturn == iImperials
		if ReturnNPCFaction == false
			return CWImperialFaction
		else
			return CWImperialFactionNPC
		endIf
	elseIf FactionToReturn == iSons
		if ReturnNPCFaction == false
			return CWSonsFaction
		else
			return CWSonsFactionNPC
		endIf
	else
		return none
		CWScript.log("CWScript", "  WARNING: getFaction() encountered an unknown FactionToReturn. Expected 1 or 2, got " + FactionToReturn as String, 2, true, true)
	endIf
endFunction

function startCampaignQuest(Int Hold)
{Starts CWCampaign using CWCampaignStart.SendStoryEvent() with the corresponding Location of the ContestedHold}

	location CampaignLocation = self.getLocationForHold(Hold)
	objectreference CampaignStartMarker = self.getCampaignStartMarker(Hold)
	CWCampaignStart.SendStoryEvent(CampaignLocation, CampaignStartMarker, none, 0, 0)
	CWScript.log("CWScript", "startCampaignQuest: CWCampainStart.SendStoryEvent(" + CampaignLocation as String + ", " + CampaignStartMarker as String + ")", 0, false, false)
endFunction

Int function ChooseHoldToAttack(Int AttackingFaction, Int HoldToForce)
{Takes int AttackingFaction (1 = Imperials, 2 = Sons). It SETS various PROPERTIES and RETURNS an INT corresponding to the hold that should be attacked next. -1 == FAIL}

	Int Hold
	Bool FoundHold
	Int TriesLeftBeforeAllowingPreviousContestedHold = 5
	previousContestedHold = contestedHold
	if HoldToForce > 0
		CWScript.log("CWScript", "Running chooseHoldToAttack() with HoldToForce =" + HoldToForce as String + ". ", 0, false, false)
		Hold = HoldToForce
	endIf
	while FoundHold == 0 as Bool
		Int strDfdr
		Int StrAtkr
		if Hold == 0
			Hold = utility.RandomInt(1, 9)
		endIf
		CWScript.log("CWScript", "ChooseHoldToAttack Attacking faction =" + AttackingFaction as String + "(" + self.FactionName(AttackingFaction) + ")", 0, false, false)
		CWScript.log("CWScript", "ChooseHoldToAttack chose hold # " + Hold as String + "(" + self.HoldName(Hold) + ")", 0, false, false)
		Int HoldOwner = self.GetHoldOwner(Hold)
		CWScript.log("CWScript", "ChooseHoldToAttack HoldOwner =" + HoldOwner as String + "(" + self.FactionName(HoldOwner) + ")", 0, false, false)
		Int strImperials = self.GetStrengthPoints(iImperials, Hold)
		CWScript.log("CWScript", "ChooseHoldToAttack strImperials =" + strImperials as String, 0, false, false)
		Int strSons = self.GetStrengthPoints(iSons, Hold)
		CWScript.log("CWScript", "ChooseHoldToAttack strSons =" + strSons as String, 0, false, false)
		if AttackingFaction == iImperials
			StrAtkr = strImperials
			strDfdr = strSons
		elseIf AttackingFaction == iSons
			StrAtkr = strSons
			strDfdr = strImperials
		else
			CWScript.log("CWScript", "ChooseHoldToAttack expecting 1 or 2 for AttackingFaction parameter. Got " + AttackingFaction as String + " this will break the civil war system.", 0, false, false)
			debug.messageBox("ChooseHoldToAttack expecting 1 or 2 for AttackingFaction parameter. Got " + AttackingFaction as String + " this will break the civil war system.")
			return -1
		endIf
		Int failure = self.ValidateHoldToAttack(Hold, HoldOwner, AttackingFaction, StrAtkr)
		if failure > 0 && !(failure == 3 && debugAllowNonAdjacentHolds == 1)
			FoundHold = 0 as Bool
			Hold = 0
			failure = 0
			CWScript.log("CWScript", "ChooseHoldToAttack picked an invalid hold, re-rolling a new hold to try to attack.", 0, false, false)
		elseIf Hold == previousContestedHold && TriesLeftBeforeAllowingPreviousContestedHold > 0
			TriesLeftBeforeAllowingPreviousContestedHold -= 1
			FoundHold = 0 as Bool
			Hold = 0
			CWScript.log("CWScript", "ChooseHoldToAttack picked the previously contested hold, re-rolling a new hold to try to attack. Tries left before allowing previous hold: " + TriesLeftBeforeAllowingPreviousContestedHold as String, 0, false, false)
		else
			if failure == 3 && debugAllowNonAdjacentHolds == 1
				CWScript.log("CWScript", "ChooseHoldToAttack() Ignoring Adjacent Hold requirement and allowing the attack.", 1, false, false)
			endIf
			contestedHold = Hold
			ownerContestedHold = HoldOwner
			strContestedHoldImperial = strImperials
			strContestedHoldSons = strSons
			strAttacker = StrAtkr
			strDefender = strDfdr
			FoundHold = 1 as Bool
			return Hold
		endIf
	endWhile
endFunction

function restartCivilWar()

	self.setStage(playerAllegiance)
	if self.GetStageDone(4)
		WarIsActive = 1
	else
		WarIsActive = 0
	endIf
	self.restartCivilWarCompleteObjectiveIfNeeded(201, ReachHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(202, ReachHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(301, HjaalmarchHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(302, HjaalmarchHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(401, WhiterunHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(402, WhiterunHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(501, FalkreathHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(502, FalkreathHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(601, PaleHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(602, PaleHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(701, WinterholdHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(702, WinterholdHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(901, RiftHoldLocation)
	self.restartCivilWarCompleteObjectiveIfNeeded(902, RiftHoldLocation)
endFunction

function resolveOffscreen(Int CurrentAttackDelta)
{Causes the campaign to resolve offscreen, puts this script in the ResolvingCampaignOffscreen state. When the CWCampaign calls this function, it needs to pass in the CurrentAttackValue. When this parameter is not present, it means we are resolving it in ForcedResolveOffscreen mode.}

	Int winner
	self.GotoState("ResolvingCampaignOffscreen")
	self.stopSiegeQuests()
	if CurrentAttackDelta == 0
		CurrentAttackDelta = AttackDelta
		CWScript.log("CWScript", "resolveOffscreen() called without a CurrentAttackDelta parameter, therefore we are using the initial AttackDelta set by CWScript in StartNewCampaign(): " + CurrentAttackDelta as String, 0, false, false)
	else
		CWScript.log("CWScript", "resolveOffscreen() called with a CurrentAttackDelta parameter = " + CurrentAttackDelta as String, 0, false, false)
	endIf
	resolutionForced = false
	resolutionDieRoll = utility.RandomInt(0, 100) as Float
	resolutionResult = resolutionDieRoll + CurrentAttackDelta as Float * resolutionAttackDeltaMultiplier
	if resolutionResult > 50 as Float
		contestedHoldWinner = attacker
	else
		contestedHoldWinner = defender
	endIf
	if contestedHold == iReach && playerJoinedCampaginReach == 0 || contestedHold == iWhiterun && playerJoinedCampaginWhiterun == 0 || contestedHold == iRift && playerJoinedCampaginRift == 0
		contestedHoldWinner = defender
		resolutionForced = true
	endIf
	CWScript.log("CWScript", "resolveOffscreen() resolved with resolutionDieRoll =" + resolutionDieRoll as String + ", resolutionResult=" + resolutionResult as String + ", contestedHoldWinner =" + contestedHoldWinner as String + "(" + self.FactionName(contestedHoldWinner) + "), resolutionForced =" + resolutionForced as String + "; Now calling finishCampaign()", 0, false, false)
	self.finishCampaign()
	CWScript.log("CWScript", "resolveOffscreen() finished. Going to state WaitingToStartNewCampaign", 0, false, false)
	self.GotoState("WaitingToStartNewCampaign")
endFunction

Int function GetDefender(location LocationToCheck)
{Returns and int representing the faction that does not control the location}

	Int returnVal = self.GetOwner(LocationToCheck)
	CWScript.log("CWScript", "GetDefender(" + LocationToCheck as String + ") RETURNING: " + returnVal as String, 0, false, false)
	return returnVal
endFunction

function initializeFortOwnerKeywordData()

	FortHraggstadLocation.SetKeywordData(CWOwner, iImperials as Float)
	FortSungardLocation.SetKeywordData(CWOwner, iImperials as Float)
	FortSnowhawkLocation.SetKeywordData(CWOwner, iImperials as Float)
	FortGreymoorLocation.SetKeywordData(CWOwner, iImperials as Float)
	FortNeugradLocation.SetKeywordData(CWOwner, iImperials as Float)
	FortDunstadLocation.SetKeywordData(CWOwner, iSons as Float)
	FortKastavLocation.SetKeywordData(CWOwner, iSons as Float)
	FortAmolLocation.SetKeywordData(CWOwner, iSons as Float)
	FortGreenwallLocation.SetKeywordData(CWOwner, iSons as Float)
endFunction

function setStrengthPointsPale()

	if OwnerPale == iImperials
		strHjaalmarchImperial += StrValuePale
		strWhiterunImperial += StrValuePale
		strWinterholdImperial += StrValuePale
		strEastmarchImperial += StrValuePale
	else
		strHjaalmarchSons += StrValuePale
		strWhiterunSons += StrValuePale
		strWinterholdSons += StrValuePale
		strEastmarchSons += StrValuePale
	endIf
endFunction

function setStrengthPointsWhiterun()

	if OwnerWhiterun == iImperials
		strReachImperial += StrValueWhiterun
		strHjaalmarchImperial += StrValueWhiterun
		strFalkreathImperial += StrValueWhiterun
		strPaleImperial += StrValueWhiterun
		strEastmarchImperial += StrValueWhiterun
		strRiftImperial += StrValueWhiterun
	else
		strReachSons += StrValueWhiterun
		strHjaalmarchSons += StrValueWhiterun
		strFalkreathSons += StrValueWhiterun
		strPaleSons += StrValueWhiterun
		strEastmarchSons += StrValueWhiterun
		strRiftSons += StrValueWhiterun
	endIf
endFunction

function setStrengthPointsReach()

	if OwnerReach == iImperials
		strHaafingarImperial += StrValueReach
		strHjaalmarchImperial += StrValueReach
		strWhiterunImperial += StrValueReach
		strFalkreathImperial += StrValueReach
	else
		strHaafingarSons += StrValueReach
		strHjaalmarchSons += StrValueReach
		strWhiterunSons += StrValueReach
		strFalkreathSons += StrValueReach
	endIf
endFunction

function setStrengthPointsHaafingar()

	if OwnerHaafingar == iImperials
		strReachImperial += StrValueHaafingar
		strHjaalmarchImperial += StrValueHaafingar
	else
		strReachSons += StrValueHaafingar
		strHjaalmarchSons += StrValueHaafingar
	endIf
endFunction

function SetSoldierAliasDialogueFactions(referencealias SoldierAlias, Bool AddToWaitingToAttack, Bool AddToWaitingToDefend)
{Adds the passed in Alias's actor to the appropriate CWDialogueSoldierWaitingToAttack/DefendFaction.}

	actor SoldierActor = SoldierAlias.GetActorReference()
	CWScript.log("CWScript", "SetSoldierAliasDialogueFactions() adding " + SoldierActor as String + " to faction CWDialogueSoldierFaction", 0, false, false)
	SoldierActor.AddToFaction(CWDialogueSoldierFaction)
	if AddToWaitingToAttack
		CWScript.log("CWScript", "SetSoldierAliasDialogueFactions() adding " + SoldierActor as String + " to faction CWDialogueSoldierWaitingToAttackFaction", 0, false, false)
		SoldierActor.AddToFaction(CWDialogueSoldierWaitingToAttackFaction)
	endIf
	if AddToWaitingToDefend
		CWScript.log("CWScript", "SetSoldierAliasDialogueFactions() adding " + SoldierActor as String + " to faction CWDialogueSoldierWaitingToDefendFaction", 0, false, false)
		SoldierActor.AddToFaction(CWDialogueSoldierWaitingToDefendFaction)
	endIf
endFunction

function setStrengthPoints()
{Sets the strXXXHoldImperials strXXXHoldSons values for all the holds for each faction.}

	self.resetStrengthPoints()
	self.setStrengthPointsHaafingar()
	self.setStrengthPointsReach()
	self.setStrengthPointsHjaalmarch()
	self.setStrengthPointsWhiterun()
	self.setStrengthPointsFalkreath()
	self.setStrengthPointsPale()
	self.setStrengthPointsWinterhold()
	self.setStrengthPointsEastmarch()
	self.setStrengthPointsRift()
endFunction

function SetOwnerPale(Int FactionToOwn, Bool DiplomaticVictory)

	CWScript.log("CWScript", "CW Script setOwnerPale() started." + "FactionToOwn: " + FactionToOwn as String + ", DiplomaticVictory: " + DiplomaticVictory as String, 0, false, false)
	if DiplomaticVictory
		PaleHoldLocation.SetKeywordData(CWDiplomaticVictory, 1 as Float)
		self.ClearHoldCrimeGold(PaleHoldLocation)
	endIf
	if FactionToOwn != iCurrentOwner
		OwnerPale = FactionToOwn
		PaleHoldLocation.SetKeywordData(CWOwner, FactionToOwn as Float)
	endIf
	self.setCountHoldProperties()
	self.setOwner(FortDunstadLocation, FactionToOwn, MilitaryCampPaleImperialLocation, MilitaryCampPaleSonsLocation, DawnstarLocation, AngasMillLocation, LoreiusFarmLocation, none, none, false)
	CWScript.log("CWScript", "CW Script setOwnerPale() finished.", 0, false, false)
endFunction

function RewardPlayerForReclaimingHold()

	if playerAllegiance == iImperials
		game.GetPlayer().AddItem(CWRank2RewardImperial as form, 1, false)
	elseIf playerAllegiance == iSons
		game.GetPlayer().AddItem(CWRank2RewardSons as form, 1, false)
	else
		CWScript.log("CWScript", "RewardPlayerForReclaimingHold() expected PlayerAllegiance to be 1, or 2. Instead got:" + playerAllegiance as String, 2, true, false)
	endIf
endFunction

function RemoveGarrisonFromWar(location LocationToTurnOff)

	CWScript.log("CWMissionScript", self as String + "RemoveGarrisonFromWar(" + LocationToTurnOff as String + "), REMEMBER TO DISABLE THE ENABLE MARKERS YOURSELF", 0, false, false)
	if LocationToTurnOff.HasKeyword(CWGarrison)
		CWScript.log("CWMissionScript", self as String + "RemoveGarrisonFromWar() setting CWGarrison to  -2 for location: " + LocationToTurnOff as String + " REMEMBER TO DISABLE THE ENABLE MARKERS YOURSELF", 0, false, false)
		LocationToTurnOff.SetKeywordData(CWGarrison, -2 as Float)
	elseIf LocationToTurnOff.HasKeyword(CWFort)
		CWScript.log("CWMissionScript", self as String + "RemoveGarrisonFromWar() setting CWFort to  -2 for location: " + LocationToTurnOff as String + " REMEMBER TO DISABLE THE ENABLE MARKERS YOURSELF", 0, false, false)
		LocationToTurnOff.SetKeywordData(CWFort, -2 as Float)
	else
		CWScript.log("CWMissionScript", self as String + " WARNING: RemoveGarrisonFromWar() found NEITHER CWGarrison NOR CWFort keyword for location : " + LocationToTurnOff as String + " THIS WILL CAUSE UNEXPECTED BEHAVIOR", 2, true, true)
	endIf
endFunction

function OutputXMLField(String FieldName, String fieldValue)

	CWScript.log("CWScript", "CW XML: <" + FieldName + ">" + fieldValue + "</" + FieldName + ">", 0, false, false)
endFunction

Bool function isSons(actor ActorToCheck)

	return self.GetActorAllgeiance(ActorToCheck) == iSons
endFunction

function ResetHolds()

	CWScript.log("CWScript", "ResetHolds()", 0, false, false)
	self.SetOwnerHaafingar(iCurrentOwner, false)
	self.SetOwnerReach(iCurrentOwner, false)
	self.SetOwnerHjaalmarch(iCurrentOwner, false)
	self.SetOwnerWhiterun(iCurrentOwner, false)
	self.SetOwnerFalkreath(iCurrentOwner, false)
	self.SetOwnerPale(iCurrentOwner, false)
	self.SetOwnerWinterhold(iCurrentOwner, false)
	self.SetOwnerEastmarch(iCurrentOwner, false)
	self.SetOwnerRift(iCurrentOwner, false)
endFunction

function outputCampaignStatsXMLRowA()

	self.OutputXMLField("countCampaigns", countCampaigns as String)
	self.OutputXMLField("contestedHold", self.HoldName(contestedHold))
	self.OutputXMLField("attacker", self.FactionName(attacker))
	self.OutputXMLField("defender", self.FactionName(defender))
	self.OutputXMLField("OwnerHaafingar", self.FactionName(OwnerHaafingar))
	self.OutputXMLField("OwnerReach", self.FactionName(OwnerReach))
	self.OutputXMLField("OwnerHjaalmarch", self.FactionName(OwnerHjaalmarch))
	self.OutputXMLField("OwnerWhiterun", self.FactionName(OwnerWhiterun))
	self.OutputXMLField("OwnerFalkreath", self.FactionName(OwnerFalkreath))
	self.OutputXMLField("OwnerPale", self.FactionName(OwnerPale))
	self.OutputXMLField("OwnerWinterhold", self.FactionName(OwnerWinterhold))
	self.OutputXMLField("OwnerEastmarch", self.FactionName(OwnerEastmarch))
	self.OutputXMLField("OwnerRift", self.FactionName(OwnerRift))
endFunction

function SetCountWinsSons()

	countWinSons += 1
	if contestedHold == iReach
		countWinReachSons += 1
	elseIf contestedHold == iHjaalmarch
		countWinHjaalmarchSons += 1
	elseIf contestedHold == iWhiterun
		countWinWhiterunSons += 1
	elseIf contestedHold == iFalkreath
		countWinFalkreathSons += 1
	elseIf contestedHold == iPale
		countWinPaleSons += 1
	elseIf contestedHold == iWinterhold
		countWinWinterholdSons += 1
	elseIf contestedHold == iRift
		countWinRiftSons += 1
	endIf
endFunction

function setInitialGarrisonCostsWhiterun()

	self.SetGarrisonCost(WhiterunLocation, iCostNonContestable)
	self.SetGarrisonCost(BattleBornFarmLocation, iCostNonContestable)
	self.SetGarrisonCost(ChillfurrowFarmLocation, iCostNonContestable)
	self.SetGarrisonCost(PelagiaFarmLocation, iCostNonContestable)
	self.SetGarrisonCost(RoriksteadLocation, iCostMedium)
	self.SetGarrisonCost(RiverwoodLocation, iCostSmall)
	self.SetGarrisonCost(FortGreymoorLocation, iCostFort)
endFunction

function ToggleOffWIDragons(locationalias LocationAliasToToggle)

	CWScript.log("CWMissionScript", self as String + "ToggleOffWIDragons(" + LocationAliasToToggle as String + ") calling function on WIFunctionScript", 0, false, false)
	WIs.DisallowDragons(LocationAliasToToggle.GetLocation())
endFunction

function CWOUpdateObjectives()

	; Empty function
endFunction

function ToggleOnWIDragons(locationalias LocationAliasToToggle)

	CWScript.log("CWMissionScript", self as String + "ToggleOnWIDragons(" + LocationAliasToToggle as String + ") calling function on WIFunctionScript", 0, false, false)
	WIs.AllowDragons(LocationAliasToToggle.GetLocation())
endFunction

function setCountHoldProperties()
{Calls setCountHoldsImperial() and setCountHoldsSons()}

	self.setCountHoldsImperial()
	self.setCountHoldsSons()
endFunction

Int function GetHoldID(location HoldToCheck)
{Returns an int specifying the ID of the specified hold; -1 = FAIL}

	Int HoldID = -1
	if HoldToCheck == HaafingarHoldLocation
		HoldID = iHaafingar
	elseIf HoldToCheck == ReachHoldLocation
		HoldID = iReach
	elseIf HoldToCheck == HjaalmarchHoldLocation
		HoldID = iHjaalmarch
	elseIf HoldToCheck == WhiterunHoldLocation
		HoldID = iWhiterun
	elseIf HoldToCheck == FalkreathHoldLocation
		HoldID = iFalkreath
	elseIf HoldToCheck == PaleHoldLocation
		HoldID = iPale
	elseIf HoldToCheck == WinterholdHoldLocation
		HoldID = iWinterhold
	elseIf HoldToCheck == EastmarchHoldLocation
		HoldID = iEastmarch
	elseIf HoldToCheck == RiftHoldLocation
		HoldID = iRift
	else
		CWScript.log("CWScript", "GetHoldID(" + HoldToCheck as String + ") location unrecognized. Expected one of the nine holds, got something else.", 2, false, false)
		HoldID = -1
	endIf
	CWScript.log("CWScript", "GetHoldID() HoldToCheck[" + HoldToCheck as String + "], ID = " + HoldID as String, 0, false, false)
	return HoldID
endFunction

function ToggleOffComplexWIInteractions(locationalias LocationAliasToToggle)

	CWScript.log("CWMissionScript", self as String + "ToggleOffComplexWIInteractions(" + LocationAliasToToggle as String + ") calling function on WIFunctionScript", 0, false, false)
	WIs.DisallowComplexInteractions(LocationAliasToToggle.GetLocation())
endFunction

function GiveGift(actor Target)
{Calls the favor script function}

	CWScript.log("CWScript", "GiveGift(" + Target as String + ") calling GiveGift() on DialogueFavorGeneric quest's FavorDialogueScript", 0, false, false)
	DialogueFavorGenericS.GiveGift(Target)
endFunction

function setStrengthPointsRift()

	if OwnerRift == iImperials
		strWhiterunImperial += StrValueRift
		strFalkreathImperial += StrValueRift
		strEastmarchImperial += StrValueRift
	else
		strWhiterunSons += StrValueRift
		strFalkreathSons += StrValueRift
		strEastmarchSons += StrValueRift
	endIf
endFunction

function Bribe(actor Target)
{Calls the favor script function}

	CWScript.log("CWScript", "Bribe(" + Target as String + ") calling Bribe() on DialogueFavorGeneric quest's FavorDialogueScript", 0, false, false)
	DialogueFavorGenericS.Bribe(Target)
endFunction

function OutputXMLRowOpenTag(String RowName)

	CWScript.log("CWScript", "CW XML: <" + RowName + ">", 0, false, false)
endFunction

function CWOStormcloaksWin()

	self.SetOwnerHaafingar(iSons, false)
	self.SetOwnerHjaalmarch(iSons, false)
	self.SetOwnerReach(iSons, false)
	self.SetOwnerFalkreath(iSons, false)
	self.SetOwnerWhiterun(iSons, false)
	self.SetOwnerPale(iSons, false)
	self.SetOwnerWinterhold(iSons, false)
	self.SetOwnerEastmarch(iSons, false)
endFunction

function SetOwnerWinterhold(Int FactionToOwn, Bool DiplomaticVictory)

	CWScript.log("CWScript", "CW Script setOwnerWinterhold() started." + "FactionToOwn: " + FactionToOwn as String + ", DiplomaticVictory: " + DiplomaticVictory as String, 0, false, false)
	if DiplomaticVictory
		WinterholdHoldLocation.SetKeywordData(CWDiplomaticVictory, 1 as Float)
		self.ClearHoldCrimeGold(WinterholdHoldLocation)
	endIf
	if FactionToOwn != iCurrentOwner
		OwnerWinterhold = FactionToOwn
		WinterholdHoldLocation.SetKeywordData(CWOwner, FactionToOwn as Float)
	endIf
	self.setCountHoldProperties()
	self.setOwner(FortKastavLocation, FactionToOwn, MilitaryCampWinterholdImperialLocation, MilitaryCampWinterholdSonsLocation, WinterholdLocation, WhistlingMineLocation, none, none, none, false)
	CWScript.log("CWScript", "CW Script setOwnerWinterhold() finished.", 0, false, false)
endFunction

function SetOwnerHjaalmarch(Int FactionToOwn, Bool DiplomaticVictory)

	CWScript.log("CWScript", "CW Script setOwnerHjaalmarch() started." + "FactionToOwn: " + FactionToOwn as String + ", DiplomaticVictory: " + DiplomaticVictory as String, 0, false, false)
	if DiplomaticVictory
		HjaalmarchHoldLocation.SetKeywordData(CWDiplomaticVictory, 1 as Float)
		self.ClearHoldCrimeGold(HjaalmarchHoldLocation)
	endIf
	if FactionToOwn != iCurrentOwner
		OwnerHjaalmarch = FactionToOwn
		HjaalmarchHoldLocation.SetKeywordData(CWOwner, FactionToOwn as Float)
	endIf
	self.setCountHoldProperties()
	self.setOwner(FortSnowhawkLocation, FactionToOwn, MilitaryCampHjaalmarchImperialLocation, MilitaryCampHjaalmarchSonsLocation, MorthalLocation, StonehillsLocation, none, none, none, false)
	CWScript.log("CWScript", "CW Script setOwnerHjaalmarch() finished.", 0, false, false)
endFunction

function SetOwnerRift(Int FactionToOwn, Bool DiplomaticVictory)

	CWScript.log("CWScript", "CW Script setOwnerRift() started." + "FactionToOwn: " + FactionToOwn as String + ", DiplomaticVictory: " + DiplomaticVictory as String, 0, false, false)
	if DiplomaticVictory
		RiftHoldLocation.SetKeywordData(CWDiplomaticVictory, 1 as Float)
		self.ClearHoldCrimeGold(RiftHoldLocation)
	endIf
	if FactionToOwn != iCurrentOwner
		OwnerRift = FactionToOwn
		RiftHoldLocation.SetKeywordData(CWOwner, FactionToOwn as Float)
	endIf
	self.setCountHoldProperties()
	self.setOwner(FortGreenwallLocation, FactionToOwn, MilitaryCampRiftImperialLocation, MilitaryCampRiftSonsLocation, none, none, none, none, none, false)
	self.setOwner(RiftenLocation, FactionToOwn, SnowShodFarmLocation, MerryfairFarmLocation, IvarsteadLocation, ShorsStoneLocation, HeartwoodMillLocation, SarethiFarmLocation, none, false)
	CWScript.log("CWScript", "CW Script setOwnerRift() finished.", 0, false, false)
endFunction

location function GetMyCurrentHoldLocation(objectreference RefToGetCurrentHoldFor)
{Returns a location corresponding to the location of the hold the actor is currently in}

	location returnLocation
	if RefToGetCurrentHoldFor.IsInLocation(HaafingarHoldLocation)
		returnLocation = HaafingarHoldLocation
	elseIf RefToGetCurrentHoldFor.IsInLocation(ReachHoldLocation)
		returnLocation = ReachHoldLocation
	elseIf RefToGetCurrentHoldFor.IsInLocation(HjaalmarchHoldLocation)
		returnLocation = HjaalmarchHoldLocation
	elseIf RefToGetCurrentHoldFor.IsInLocation(WhiterunHoldLocation)
		returnLocation = WhiterunHoldLocation
	elseIf RefToGetCurrentHoldFor.IsInLocation(FalkreathHoldLocation)
		returnLocation = FalkreathHoldLocation
	elseIf RefToGetCurrentHoldFor.IsInLocation(PaleHoldLocation)
		returnLocation = PaleHoldLocation
	elseIf RefToGetCurrentHoldFor.IsInLocation(WinterholdHoldLocation)
		returnLocation = WinterholdHoldLocation
	elseIf RefToGetCurrentHoldFor.IsInLocation(EastmarchHoldLocation)
		returnLocation = EastmarchHoldLocation
	elseIf RefToGetCurrentHoldFor.IsInLocation(RiftHoldLocation)
		returnLocation = RiftHoldLocation
	else
		CWScript.log("CWScript", " WARNING: GetMyCurrentHoldLocation(" + RefToGetCurrentHoldFor as String + ") could NOT find the actor is in any hold location.", 2, true, true)
	endIf
	CWScript.log("CWScript", "GetMyCurrentHoldLocation(" + RefToGetCurrentHoldFor as String + ") RETURNING: " + returnLocation as String, 0, false, false)
	return returnLocation
endFunction

Bool function FactionOwnsAll(Int FactionToTest)
{Returns true if FactionToTest represents a faction that owns all the contestable holds.}

	if self.GetHoldOwner(iReach) == FactionToTest && self.GetHoldOwner(iHjaalmarch) == FactionToTest && self.GetHoldOwner(iWhiterun) == FactionToTest && self.GetHoldOwner(iFalkreath) == FactionToTest && self.GetHoldOwner(iPale) == FactionToTest && self.GetHoldOwner(iWinterhold) == FactionToTest && self.GetHoldOwner(iRift) == FactionToTest
		return true
	else
		return false
	endIf
endFunction

Int function getIntForHoldLocation(location LocationToGetIntFor)

	if LocationToGetIntFor == none
		CWScript.log("CWScript", " WARNING! getIntForHoldLocation() returning -1 because it recieved an unexpected location that isn't a hold: " + LocationToGetIntFor as String, 0, false, false)
		return -1
	endIf
	if LocationToGetIntFor == HaafingarHoldLocation
		return iHaafingar
	elseIf LocationToGetIntFor == ReachHoldLocation
		return iReach
	elseIf LocationToGetIntFor == HjaalmarchHoldLocation
		return iHjaalmarch
	elseIf LocationToGetIntFor == WhiterunHoldLocation
		return iWhiterun
	elseIf LocationToGetIntFor == FalkreathHoldLocation
		return iFalkreath
	elseIf LocationToGetIntFor == PaleHoldLocation
		return iPale
	elseIf LocationToGetIntFor == WinterholdHoldLocation
		return iWinterhold
	elseIf LocationToGetIntFor == EastmarchHoldLocation
		return iEastmarch
	elseIf LocationToGetIntFor == RiftHoldLocation
		return iRift
	else
		CWScript.log("CWScript", " WARNING! getIntForHoldLocation() returning -1 because it recieved an unexpected location that isn't a hold: " + LocationToGetIntFor as String, 0, false, false)
		return -1
	endIf
endFunction

Int function ChooseAttackingFaction(Int FactionToForce)
{Returns an int representing a random faction to be the attacker in the next campaign, unless rules dictate the attacker should be forced to a particular faction.}

	Int ChosenFaction = FactionToForce
	previousAttacker = attacker
	CWScript.log("CWScript", "ChooseAttackingFaction() FactionToForce =" + FactionToForce as String, 0, false, false)
	if self.FactionOwnsAll(iImperials)
		ChosenFaction = iSons
		CWScript.log("CWScript", "Imperials own all, forcing attacker to be Sons", 0, false, false)
	elseIf self.FactionOwnsAll(iSons)
		ChosenFaction = iImperials
		CWScript.log("CWScript", "Sons own all, forcing attacker to be Imperials", 0, false, false)
	elseIf consecutiveAttacks as Float > CWMaxConsecutiveAttacks.value
		if previousAttacker == iImperials
			ChosenFaction = iSons
		else
			ChosenFaction = iImperials
		endIf
		consecutiveAttacks = 0
		CWScript.log("CWScript", "ConsecutiveAttacks > CWMaxConsecutiveAttacks.value, forcing attacker to be " + self.FactionName(ChosenFaction), 0, false, false)
	elseIf ChosenFaction == 0
		ChosenFaction = utility.RandomInt(1, 2)
	endIf
	if previousAttacker == ChosenFaction
		consecutiveAttacks += 1
	endIf
	CWScript.log("CWScript", "ChooseAttackingFaction() is returning  " + ChosenFaction as String + "(" + self.FactionName(ChosenFaction) + ")", 0, false, false)
	return ChosenFaction
endFunction

function resetStrengthPoints()
{Clears the strHOLDImperial/Sons properties.}

	strHaafingarImperial = 0
	strHaafingarSons = 0
	strReachImperial = 0
	strReachSons = 0
	strHjaalmarchImperial = 0
	strHjaalmarchSons = 0
	strWhiterunImperial = 0
	strWhiterunSons = 0
	strFalkreathImperial = 0
	strFalkreathSons = 0
	strPaleImperial = 0
	strPaleSons = 0
	strWinterholdImperial = 0
	strWinterholdSons = 0
	strEastmarchImperial = 0
	strEastmarchSons = 0
	strRiftImperial = 0
	strRiftSons = 0
endFunction

function ClearAliasEnemyFlagOnCrimeFactions(referencealias AliasWhoseCrimeFactionShouldClearPlayerEnemyFlag)

	CWScript.log("CWScript", "ClearActorsEnemyFlagOnCrimeFactions(" + AliasWhoseCrimeFactionShouldClearPlayerEnemyFlag as String + ") will call ClearActorsEnemyFlagOnCrimeFactions()", 0, false, false)
	self.ClearActorsEnemyFlagOnCrimeFactions(AliasWhoseCrimeFactionShouldClearPlayerEnemyFlag.GetActorReference())
endFunction

function registerMissionSuccess(location HoldLocation, Bool isFortBattle)

	CountMissionSuccess += 1
	CWScript.log("CWScript", "registerMissionSuccess(HoldLocation:" + HoldLocation as String + ", isFortBattle:" + isFortBattle as String + ") CountMissionSuccess = " + CountMissionSuccess as String + ". Calling DisplayHoldObjective() if isFortBattle == false", 0, false, false)
	if isFortBattle == false
		self.DisplayHoldObjective()
	endIf
endFunction

Bool function IsPlayerInMyFaction(actor ActorToCheck)
{Returns true if the actor is in the same CW<Faction>Faction as the player}

	CWScript.log("CWScript", "IsPlayerInMyFaction() ActorToCheck(" + ActorToCheck as String + ")", 0, false, false)
	Bool returnVal = self.GetActorAllgeiance(ActorToCheck) == self.GetActorAllgeiance(game.GetPlayer())
	CWScript.log("CWScript", "IsPlayerInMyFaction() returning: " + returnVal as String, 0, false, false)
	return returnVal
endFunction

Bool function setOwnerStartResetQuest(location LocationToSet, Int FactionToOwn, keyword KeywordForResetGarrisonQuest)
{Sub function of setOwner()}

	CWScript.log("CWScript", "setOwnerStartResetQuest() called with: LocationToSet: " + LocationToSet as String + ", FactionToOwn: " + FactionToOwn as String + ", KeywordForResetGarrisonQuest: " + KeywordForResetGarrisonQuest as String, 0, false, false)
	if LocationToSet
		if FactionToOwn != iCurrentOwner
			LocationToSet.SetKeywordData(CWOwner, FactionToOwn as Float)
			CWScript.log("CWScript", "setOwnerStartResetQuest() setting owner to " + FactionToOwn as String + "(" + self.FactionName(FactionToOwn) + ") for " + LocationToSet as String, 0, false, false)
		else
			CWScript.log("CWScript", "setOwnerStartResetQuest() not changing owner, just resetting the garrison for whoever currently owns it.", 0, false, false)
		endIf
		while LocationToSet.IsLoaded()
			CWScript.log("CWScript", "setOwnerStartResetQuest() waiting until location is no longer loaded (ie out of the 5x5):" + LocationToSet as String, 0, false, false)
			utility.wait(1 as Float)
		endWhile
		CWScript.log("CWScript", "setOwnerStartResetQuest() starting reset garrison quest, CWResetGarrissonX.SendStoryEvent(" + LocationToSet as String + ")", 0, false, false)
		KeywordForResetGarrisonQuest.SendStoryEvent(LocationToSet, none, none, 0, 0)
	else
		return false
	endIf
	CWScript.log("CWScript", "setOwnerStartResetQuest() finished.", 0, false, false)
	return true
endFunction

String function HoldName(Int HoldNumber)
{Returns a string based on the HoldNumber. Corresponds with iWhiterun, iRift, etc. Not for use to display to player. Just for sending to debug traces where you have a number refering to a hold.}

	if HoldNumber == iHaafingar
		return "Haafingar"
	elseIf HoldNumber == iReach
		return "Reach"
	elseIf HoldNumber == iHjaalmarch
		return "Hjaalmarch"
	elseIf HoldNumber == iWhiterun
		return "Whiterun"
	elseIf HoldNumber == iFalkreath
		return "Falkreath"
	elseIf HoldNumber == iPale
		return "Pale"
	elseIf HoldNumber == iWinterhold
		return "Winterhold"
	elseIf HoldNumber == iEastmarch
		return "Eastmarch"
	elseIf HoldNumber == iRift
		return "Rift"
	else
		return "unknown hold"
	endIf
endFunction

function setPlayerFactionRank(Int RankToSetTo)

	CWScript.log("CWScript", "setPlayerFactionRank([" + RankToSetTo as String + "]) and adding reward.", 0, false, false)
	PlayerRank = RankToSetTo
	if playerAllegiance == iImperials
		if RankToSetTo == 1
			game.GetPlayer().AddItem(CWRank1RewardImperial as form, 1, false)
		elseIf RankToSetTo == 2
			game.GetPlayer().AddItem(CWRank2RewardImperial as form, 1, false)
		elseIf RankToSetTo == 3
			game.GetPlayer().AddItem(CWRank3RewardImperial as form, 1, false)
		elseIf RankToSetTo == 4
			game.GetPlayer().AddItem(CWRank4RewardImperial as form, 1, false)
		else
			CWScript.log("CWScript", "setPlayerFactionRank() expected RankToSetTo to be 1,2,3 or 4. Instead got:" + RankToSetTo as String, 2, true, false)
		endIf
	elseIf playerAllegiance == iSons
		if RankToSetTo == 1
			game.GetPlayer().AddItem(CWRank1RewardSons as form, 1, false)
			UlfricRef.SetRelationshipRank(PlayerRef, 1)
		elseIf RankToSetTo == 2
			game.GetPlayer().AddItem(CWRank2RewardSons as form, 1, false)
			UlfricRef.SetRelationshipRank(PlayerRef, 2)
		elseIf RankToSetTo == 3
			game.GetPlayer().AddItem(CWRank3RewardSons as form, 1, false)
		elseIf RankToSetTo == 4
			game.GetPlayer().AddItem(CWRank4RewardSons as form, 1, false)
		else
			CWScript.log("CWScript", "setPlayerFactionRank() expected RankToSetTo to be 1,2,3 or 4. Instead got:" + RankToSetTo as String, 2, true, false)
		endIf
	else
		CWScript.log("CWScript", "setPlayerFactionRank() expected PlayerAllegiance to be 1, or 2. Instead got:" + playerAllegiance as String, 2, true, false)
	endIf
endFunction

objectreference function GetFactionHQMarkerForActor(actor ActorToCheck)
{Returns the marker in the alias corresponding to the FactionHQ based on whether the actor is in CWImperialFaction or CWSonsFaction.}

	objectreference FactionHQMarker
	Int ActorFaction = self.GetActorAllgeiance(ActorToCheck)
	if ActorFaction == iImperials
		FactionHQMarker = ImperialFactionHQMarker.GetReference()
	elseIf ActorFaction == iSons
		FactionHQMarker = SonsFactionHQMarker.GetReference()
	else
		CWScript.log("CWScript", " WARNING: GetFactionHQForActor() can't determine which faction this actor belongs to:" + ActorToCheck as String, 2, false, false)
	endIf
	CWScript.log("CWScript", "GetFactionHQForActor(" + ActorToCheck as String + ") returning " + FactionHQMarker as String, 0, false, false)
	return FactionHQMarker
endFunction

Bool function PlayersFactionIsDefender(location LocationToCheck)

	Bool returnVal = self.GetDefender(LocationToCheck) == playerAllegiance
	CWScript.log("CWScript", "PlayersFactionIsDefender(" + LocationToCheck as String + ") RETURNING: " + returnVal as String, 0, false, false)
	return returnVal
endFunction

function StopCivilWar()
{Used to cut a campaign short so the Civil War can halt for the peace treaty signing scenes}

	WarIsActive = -1
	playerInvolved = 1
	if CWFortSiegeFort.IsRunning()
		CWFortSiegeFort.setStage(9000)
		Rikke.GetActorReference().RemoveFromFaction(CWFieldCOActiveMissionFaction)
		Galmar.GetActorReference().RemoveFromFaction(CWFieldCOActiveMissionFaction)
		Rikke.GetActorReference().RemoveFromFaction(CWFieldCOSuccessfulMissionFaction)
		Galmar.GetActorReference().RemoveFromFaction(CWFieldCOSuccessfulMissionFaction)
	endIf
	if CWMission03.IsRunning()
		CWMission03.setStage(200)
		Rikke.GetActorReference().RemoveFromFaction(CWFieldCOActiveMissionFaction)
		Galmar.GetActorReference().RemoveFromFaction(CWFieldCOActiveMissionFaction)
		Rikke.GetActorReference().RemoveFromFaction(CWFieldCOSuccessfulMissionFaction)
		Galmar.GetActorReference().RemoveFromFaction(CWFieldCOSuccessfulMissionFaction)
	endIf
	if CWMission04.IsRunning()
		CWMission04.setStage(200)
		Rikke.GetActorReference().RemoveFromFaction(CWFieldCOActiveMissionFaction)
		Galmar.GetActorReference().RemoveFromFaction(CWFieldCOActiveMissionFaction)
		Rikke.GetActorReference().RemoveFromFaction(CWFieldCOSuccessfulMissionFaction)
		Galmar.GetActorReference().RemoveFromFaction(CWFieldCOSuccessfulMissionFaction)
	endIf
	if CWMission07.IsRunning()
		CWMission07.setStage(200)
		Rikke.GetActorReference().RemoveFromFaction(CWFieldCOActiveMissionFaction)
		Galmar.GetActorReference().RemoveFromFaction(CWFieldCOActiveMissionFaction)
		Rikke.GetActorReference().RemoveFromFaction(CWFieldCOSuccessfulMissionFaction)
		Galmar.GetActorReference().RemoveFromFaction(CWFieldCOSuccessfulMissionFaction)
	endIf
endFunction

Bool function isImperial(actor ActorToCheck)

	return self.GetActorAllgeiance(ActorToCheck) == iImperials
endFunction

function ContributeToSalaryPool()

	if PlayerRank == 0
		Salary += baseSalary as Int
	elseIf PlayerRank == 1
		Salary += (baseSalary * SalaryMultRank1) as Int
	elseIf PlayerRank == 2
		Salary += (baseSalary * SalaryMultRank2) as Int
	elseIf PlayerRank == 3
		Salary += (baseSalary * SalaryMultRank3) as Int
	elseIf PlayerRank >= 4
		Salary += (baseSalary * SalaryMultRank4) as Int
	endIf
endFunction

function PlayerTookOath(Int iFaction)

	CWScript.log("CWScript", "PlayerTookOath(" + iFaction as String + ")", 0, false, false)
	if iFaction == iImperials
		CW00A.SetObjectiveCompleted(1, true)
		CW00B.SetObjectiveFailed(2, true)
		CW01B.setStage(999)
	elseIf iFaction == iSons
		CW00B.SetObjectiveCompleted(2, true)
		CW00A.SetObjectiveFailed(1, true)
		CW01A.setStage(999)
	endIf
	CW00A.stop()
	CW00B.stop()
endFunction

function modObjectiveBySabotage(ResourceObjectScript ResourceObject, int AmountToMod = 5)

	CWScript.log("CWScript", "modObjectiveBySabotage(" + ResourceObject as String + ")", 0, false, false)
	location myHold = self.GetMyCurrentHoldLocation(ResourceObject as objectreference)
	if myHold.GetKeywordData(CWOwner) == playerAllegiance as Float
		CWScript.log("CWScript", "modObjectiveBySabotage(" + ResourceObject as String + ") is in hold owned by faction the player is allied to. Ignored.", 0, false, false)
	else
		CWScript.log("CWScript", "modObjectiveBySabotage(" + ResourceObject as String + ") Will mod the appropriate CWObjXXX, and update the approprirate objective", 0, false, false)
		Int myHoldID = self.GetHoldID(myHold)
		globalvariable myCWObjGlobal = self.GetCWObjGlobal(myHoldID)
		self.modCWObjGlobal(myCWObjGlobal, AmountToMod as Float)
		CWScript.log("CWScript", "modObjectiveBySabotage(" + ResourceObject as String + ") Calling updateObjective with the hold location found for " + ResourceObject as String, 0, false, false)
		self.updateObjective(myHold, false, false, none)
	endIf
endFunction

function setInitialGarrisonCostsWinterhold()

	self.SetGarrisonCost(WinterholdLocation, iCostNonContestable)
	self.SetGarrisonCost(WhistlingMineLocation, iCostSmall)
	self.SetGarrisonCost(FortKastavLocation, iCostFort)
endFunction

function pacifyAliasForSurrender(referencealias RefAliasToPacify)

	CWScript.log("CWScript", "pacifyAliasForSurrender(" + RefAliasToPacify as String + ")", 0, false, false)
	actor ActorRef = RefAliasToPacify.GetActorReference()
	;USKP 2.0.2 - Sanity check against bad actor alias.
	if( ActorRef != None )
		self.ClearActorsEnemyFlagOnCrimeFactions(ActorRef)
		ActorRef.AddToFaction(CWSurrenderTemporaryAllies)
		ActorRef.StopCombatAlarm()
		game.GetPlayer().StopCombatAlarm()
		ActorRef.StopCombat()
	EndIf
	
endFunction

function AddCivilWarAchievment(Int whichCivilWarAchivement, location AssociatedLocation)
{1 = Join a side, 2 =  Take a fort in Reach or Rift, 3 = Win the war}

	CWScript.log("CWScript", "AddCivilWarAchievment(" + whichCivilWarAchivement as String + ")", 0, false, false)
	if whichCivilWarAchivement == 1
		game.AddAchievement(21)
	elseIf whichCivilWarAchivement == 2
		if AssociatedLocation == FortSungardLocation || AssociatedLocation == FortGreenwallLocation
			game.AddAchievement(22)
		endIf
	elseIf whichCivilWarAchivement == 3
		game.AddAchievement(23)
	endIf
endFunction

function SetFieldCOAlias(objectreference RefToForceIntoFieldCOAlias)

	CWScript.log("CWScript", "SetFieldCOAlias(" + RefToForceIntoFieldCOAlias as String + ")", 0, false, false)
	FieldCO.ForceRefTo(RefToForceIntoFieldCOAlias)
endFunction

function ToggleOnComplexWIInteractions(locationalias LocationAliasToToggle)

	CWScript.log("CWMissionScript", self as String + "ToggleOnComplexWIInteractions(" + LocationAliasToToggle as String + ") calling function on WIFunctionScript", 0, false, false)
	WIs.AllowComplexInteractions(LocationAliasToToggle.GetLocation())
endFunction

Int function GetAttacker(location LocationToCheck)
{Returns and int representing the faction that does not control the location}

	Int returnVal
	if self.GetOwner(LocationToCheck) == iImperials
		returnVal = iSons
	elseIf self.GetOwner(LocationToCheck) == iSons
		returnVal = iImperials
	else
		CWScript.log("CWScript", " WARNING: GetAttacker(" + LocationToCheck as String + ") found unexpected Owner. Expected 1 or 2, instead got " + returnVal as String, 2, true, true)
	endIf
	CWScript.log("CWScript", "GetAttacker(" + LocationToCheck as String + ") RETURNING: " + returnVal as String, 0, false, false)
	return returnVal
endFunction

function setCrimeFactionOnActorForEditorLocationsHold(actor ActorToSetCrimeFaction)
{Finds the hold of the actor's editor location, then adds and sets the appropriate crime faction}

	CWScript.log("CWScript", "setCrimeFactionOnActorForEditorLocationsHold(" + ActorToSetCrimeFaction as String + ")", 0, false, false)
	location myHold = self.GetMyEditorLocationHoldLocation(ActorToSetCrimeFaction as objectreference)
	faction myCrimeFaction = self.GetCrimeFactionForHold(myHold)
	CWScript.log("CWScript", "setCrimeFactionOnActorForEditorLocationsHold(" + ActorToSetCrimeFaction as String + ") will set crime faction to be " + myCrimeFaction as String, 0, false, false)
	ActorToSetCrimeFaction.SetCrimeFaction(myCrimeFaction)
endFunction

function setStrengthPointsEastmarch()

	if OwnerEastmarch == iImperials
		strWinterholdImperial += StrValueEastmarch
		strPaleImperial += StrValueEastmarch
		strWhiterunImperial += StrValueEastmarch
		strRiftImperial += StrValueEastmarch
	else
		strWinterholdSons += StrValueEastmarch
		strPaleSons += StrValueEastmarch
		strWhiterunSons += StrValueEastmarch
		strRiftSons += StrValueEastmarch
	endIf
endFunction

function SetOwnerWhiterun(Int FactionToOwn, Bool DiplomaticVictory)

	CWScript.log("CWScript", "CW Script setOwnerWhiterun() started." + "FactionToOwn: " + FactionToOwn as String + ", DiplomaticVictory: " + DiplomaticVictory as String, 0, false, false)
	if DiplomaticVictory
		WhiterunHoldLocation.SetKeywordData(CWDiplomaticVictory, 1 as Float)
		self.ClearHoldCrimeGold(WhiterunHoldLocation)
	endIf
	if FactionToOwn != iCurrentOwner
		OwnerWhiterun = FactionToOwn
		WhiterunHoldLocation.SetKeywordData(CWOwner, FactionToOwn as Float)
	endIf
	self.setCountHoldProperties()
	self.setOwner(FortGreymoorLocation, FactionToOwn, MilitaryCampWhiterunImperialLocation, MilitaryCampWhiterunSonsLocation, none, none, none, none, none, false)
	self.setOwner(WhiterunLocation, FactionToOwn, BattleBornFarmLocation, ChillfurrowFarmLocation, PelagiaFarmLocation, RoriksteadLocation, RiverwoodLocation, none, none, false)
	CWScript.log("CWScript", "CW Script setOwnerWhiterun() finished.", 0, false, false)
endFunction

function OutputXMLRowCloseTag(String RowName)

	CWScript.log("CWScript", "CW XML: </" + RowName + ">", 0, false, false)
endFunction

function SetOwnerHaafingar(Int FactionToOwn, Bool DiplomaticVictory)

	CWScript.log("CWScript", "CW Script setOwnerHaafingar() started." + "FactionToOwn: " + FactionToOwn as String + ", DiplomaticVictory: " + DiplomaticVictory as String, 0, false, false)
	if DiplomaticVictory
		HaafingarHoldLocation.SetKeywordData(CWDiplomaticVictory, 1 as Float)
		self.ClearHoldCrimeGold(HaafingarHoldLocation)
	endIf
	if FactionToOwn != iCurrentOwner
		OwnerHaafingar = FactionToOwn
		HaafingarHoldLocation.SetKeywordData(CWOwner, FactionToOwn as Float)
	endIf
	self.setCountHoldProperties()
	self.setOwner(FortHraggstadLocation, FactionToOwn, MilitaryCampHaafingarSonsLocation, SolitudeLocation, SolitudeSawmillLocation, KatlasFarmLocation, DragonBridgeLocation, none, none, false)
	CWScript.log("CWScript", "CW Script setOwnerHaafingar() finished.", 0, false, false)
endFunction

Int function GetHoldOwner(Int HoldToCheck)
{Returns an int specifying current owner of HoldToCheck. 1 = Imperials, 2 = Sons, -1 = FAIL}

	Int owner
	if HoldToCheck == iHaafingar
		owner = OwnerHaafingar
	elseIf HoldToCheck == iReach
		owner = OwnerReach
	elseIf HoldToCheck == iHjaalmarch
		owner = OwnerHjaalmarch
	elseIf HoldToCheck == iWhiterun
		owner = OwnerWhiterun
	elseIf HoldToCheck == iFalkreath
		owner = OwnerFalkreath
	elseIf HoldToCheck == iPale
		owner = OwnerPale
	elseIf HoldToCheck == iWinterhold
		owner = OwnerWinterhold
	elseIf HoldToCheck == iEastmarch
		owner = OwnerEastmarch
	elseIf HoldToCheck == iRift
		owner = OwnerRift
	else
		CWScript.log("CWScript", "GetHoldOwner(" + HoldToCheck as String + ") parametered unrecognized. Expected an int 1-9 as HoldToCheck, got something else.", 2, false, false)
		owner = -1
	endIf
	CWScript.log("CWScript", "GetHoldOwner() HoldToCheck[" + HoldToCheck as String + "], owner = " + owner as String + "[" + self.FactionName(owner) + "]", 0, false, false)
	return owner
endFunction

function updateObjective(location HoldLocationWhoseObjectiveWeShouldUpdate, Bool MarkObjectiveComplete, Bool FailObjective, globalvariable GlobalToResetDueToFailure)
{This sets the global and flashes the objective for taking over the hold for the supplied location}

	if (playerInvolved == 1 && WarIsActive == 1) == false
		CWScript.log("CWScript", "updateObjective() PlayerInvolved or WarIsActive, is not 1, NOT updating the objective.", 0, false, false)
		return 
	endIf
	Int HoldID = self.GetHoldID(HoldLocationWhoseObjectiveWeShouldUpdate)
	Int Obj = 100 * HoldID
	Obj += playerAllegiance
	if CWObj.IsObjectiveCompleted(Obj)
		debug.trace("schofida -> updateObjective() - CWObj.IsObjectiveCompleted(Obj)")
	elseIf MarkObjectiveComplete == true
		debug.trace("schofida -> updateObjective() - MarkObjectiveComplete")
		CWObj.SetObjectiveCompleted(Obj, true)
		self.displayFactionLeaderObjective()
	elseIf FailObjective == true
		debug.trace("schofida -> updateObjective() - FailObjective == true")
		CWObj.SetObjectiveFailed(Obj, true)
		GlobalToResetDueToFailure.setValue(0 as Float)
		CWObj.SetObjectiveFailed(Obj, true)
		if CWODefendingActive.value == 0 as Float
			debug.trace("schofida -> updateObjective() - CWODefendingActive.value == 0")
			CWObj.SetObjectiveDisplayed(Obj, true, true)
			self.displayFactionLeaderObjective()
		endIf
	else
		debug.trace("schofida -> updateObjective() - ELSE")
		CWObj.UpdateCurrentInstanceGlobal(self.GetCWObjGlobal(HoldID))
		if CWODefendingActive.value == 0 as Float
			debug.trace("schofida -> updateObjective() - CWODefendingActive.value == 0")
			CWObj.SetObjectiveDisplayed(Obj, true, true)
		endIf
	endIf
endFunction

faction function GetCrimeFactionForActorFaction(actor ActorToCheck)

	faction returnFaction
	CWScript.log("CWScript", "GetCrimeFactionForActorFaction(" + ActorToCheck as String + ") will GetActorAllgeiance() and the return crime faction based on what was returned", 0, false, false)
	Int myAllegiance = self.GetActorAllgeiance(ActorToCheck)
	if myAllegiance == iImperials
		returnFaction = CrimeFactionImperial
	elseIf myAllegiance == iSons
		returnFaction = CrimeFactionSons
	else
		CWScript.log("CWScript", " WARNING: GetCrimeFactionForActorFaction(" + ActorToCheck as String + ") is neither Imperial nor Sons, returning NONE)", 2, true, true)
	endIf
	CWScript.log("CWScript", "GetCrimeFactionForActorFaction(" + ActorToCheck as String + ") returning:" + returnFaction as String, 0, false, false)
	return returnFaction
endFunction

location function GetMyParentHoldLocation(location LocationToGetParentHoldFor)
{Returns a location corresponding to the location of the hold the actor is currently in}

	location returnLocation
	if HaafingarHoldLocation.IsChild(LocationToGetParentHoldFor)
		returnLocation = HaafingarHoldLocation
	elseIf ReachHoldLocation.IsChild(LocationToGetParentHoldFor)
		returnLocation = ReachHoldLocation
	elseIf HjaalmarchHoldLocation.IsChild(LocationToGetParentHoldFor)
		returnLocation = HjaalmarchHoldLocation
	elseIf WhiterunHoldLocation.IsChild(LocationToGetParentHoldFor)
		returnLocation = WhiterunHoldLocation
	elseIf FalkreathHoldLocation.IsChild(LocationToGetParentHoldFor)
		returnLocation = FalkreathHoldLocation
	elseIf PaleHoldLocation.IsChild(LocationToGetParentHoldFor)
		returnLocation = PaleHoldLocation
	elseIf WinterholdHoldLocation.IsChild(LocationToGetParentHoldFor)
		returnLocation = WinterholdHoldLocation
	elseIf EastmarchHoldLocation.IsChild(LocationToGetParentHoldFor)
		returnLocation = EastmarchHoldLocation
	elseIf RiftHoldLocation.IsChild(LocationToGetParentHoldFor)
		returnLocation = RiftHoldLocation
	else
		CWScript.log("CWScript", " WARNING: GetMyParentHoldLocation(" + LocationToGetParentHoldFor as String + ") could NOT find the actor's editor location is in any hold location.", 2, true, true)
	endIf
	CWScript.log("CWScript", "GetMyParentHoldLocation(" + LocationToGetParentHoldFor as String + ") RETURNING: " + returnLocation as String, 0, false, false)
	return returnLocation
endFunction

Int function CWORunThrough(Int WhatItIs)

	Int WhatitWas = WhatItIs
	if playerAllegiance == iImperials
		WhatItIs = 1
	else
		WhatItIs = 8
	endIf
	Bool DoTheWhile = true
	while DoTheWhile
		if playerAllegiance == iImperials
			if WhatItIs == 1
				if self.GetHoldOwner(WhatItIs) == iImperials || WhatItIs == WhatitWas
					WhatItIs = 3
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 3
				if self.GetHoldOwner(WhatItIs) == iImperials || WhatItIs == WhatitWas
					WhatItIs = 2
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 2
				if self.GetHoldOwner(WhatItIs) == iImperials || WhatItIs == WhatitWas
					WhatItIs = 5
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 5
				if self.GetHoldOwner(WhatItIs) == iImperials || WhatItIs == WhatitWas
					WhatItIs = 4
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 4
				if self.GetHoldOwner(WhatItIs) == iImperials || WhatItIs == WhatitWas
					WhatItIs = 6
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 6
				if self.GetHoldOwner(WhatItIs) == iImperials || WhatItIs == WhatitWas
					WhatItIs = 9
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 9
				if self.GetHoldOwner(WhatItIs) == iImperials || WhatItIs == WhatitWas
					WhatItIs = 7
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 7
				if self.GetHoldOwner(WhatItIs) == iImperials || WhatItIs == WhatitWas
					WhatItIs = 8
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 8
				if self.GetHoldOwner(WhatItIs) == iImperials || WhatItIs == WhatitWas
					WhatItIs = 0
				else
					DoTheWhile = false
				endIf
			endIf
		elseIf playerAllegiance == iSons
			if WhatItIs == 8
				if self.GetHoldOwner(WhatItIs) == iSons || WhatItIs == WhatitWas
					WhatItIs = 7
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 7
				if self.GetHoldOwner(WhatItIs) == iSons || WhatItIs == WhatitWas
					WhatItIs = 9
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 9
				if self.GetHoldOwner(WhatItIs) == iSons || WhatItIs == WhatitWas
					WhatItIs = 6
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 6
				if self.GetHoldOwner(WhatItIs) == iSons || WhatItIs == WhatitWas
					WhatItIs = 4
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 4
				if self.GetHoldOwner(WhatItIs) == iSons || WhatItIs == WhatitWas
					WhatItIs = 5
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 5
				;debug.notification("Falkreath is WhatItIs")
				if self.GetHoldOwner(WhatItIs) == iSons || WhatItIs == WhatitWas
					WhatItIs = 2
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 2
				;debug.notification("Now to markarth")
				if self.GetHoldOwner(WhatItIs) == iSons || WhatItIs == WhatitWas
					WhatItIs = 3
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 3
				if self.GetHoldOwner(WhatItIs) == iSons || WhatItIs == WhatitWas
					WhatItIs = 1
				else
					DoTheWhile = false
				endIf
			elseIf WhatItIs == 1
				if self.GetHoldOwner(WhatItIs) == iSons || WhatItIs == WhatitWas
					WhatItIs = 0
				else
					DoTheWhile = false
				endIf
			endIf
		endIf
	endWhile
	return WhatItIs
endFunction

location function GetCapitalLocationForHold(location HoldLocation)
{Returns a location corresponding to the capital location of the hold location}

	location returnLocation
	if HoldLocation == HaafingarHoldLocation
		returnLocation = SolitudeLocation
	elseIf HoldLocation == ReachHoldLocation
		returnLocation = MarkarthLocation
	elseIf HoldLocation == HjaalmarchHoldLocation
		returnLocation = MorthalLocation
	elseIf HoldLocation == WhiterunHoldLocation
		returnLocation = WhiterunLocation
	elseIf HoldLocation == FalkreathHoldLocation
		returnLocation = FalkreathLocation
	elseIf HoldLocation == PaleHoldLocation
		returnLocation = DawnstarLocation
	elseIf HoldLocation == WinterholdHoldLocation
		returnLocation = WinterholdLocation
	elseIf HoldLocation == EastmarchHoldLocation
		returnLocation = WindhelmLocation
	elseIf HoldLocation == RiftHoldLocation
		returnLocation = RiftenLocation
	endIf
	CWScript.log("CWScript", "GetCapitalLocationForHold(" + HoldLocation as String + ") RETURNING: " + returnLocation as String, 0, false, false)
	return returnLocation
endFunction

String function FactionName(Int CWFaction)

	if CWFaction == iImperials
		return "Imperials"
	elseIf CWFaction == iSons
		return "Sons"
	elseIf CWFaction == iBothFactions
		return "Both Factions"
	else
		return "unknown faction(" + CWFaction as String + ")"
	endIf
endFunction

function CWODefend(location HoldLocation)

	Int CWOAntiPlayerAllegiance
	objectreference CWOFieldCO
	location CWOCapital
	location HoldLocation2
	if playerAllegiance == iImperials
		CWOAntiPlayerAllegiance = 2
		if HoldLocation == EastmarchHoldLocation
			HoldLocation2 = WinterholdHoldLocation
			self.SetOwnerEastmarch(2, false)
		elseIf HoldLocation == WinterholdHoldLocation
			HoldLocation2 = RiftHoldLocation
			self.SetOwnerWinterhold(2, false)
		elseIf HoldLocation == RiftHoldLocation
			HoldLocation2 = PaleHoldLocation
			self.SetOwnerRift(2, false)
		elseIf HoldLocation == PaleHoldLocation
			HoldLocation2 = WhiterunHoldLocation
			self.SetOwnerPale(2, false)
		elseIf HoldLocation == WhiterunHoldLocation
			HoldLocation2 = FalkreathHoldLocation
			self.SetOwnerWhiterun(2, false)
		elseIf HoldLocation == FalkreathHoldLocation
			HoldLocation2 = ReachHoldLocation
			self.SetOwnerFalkreath(2, false)
		elseIf HoldLocation == ReachHoldLocation
			HoldLocation2 = HjaalmarchHoldLocation
			self.SetOwnerReach(2, false)
		elseIf HoldLocation == HjaalmarchHoldLocation
			CWOStillABetterEndingGlobal.setValue(1.00000)
			HoldLocation2 = HaafingarHoldLocation
			self.SetOwnerHjaalmarch(2, false)
		elseIf HoldLocation == HaafingarHoldLocation
			self.SetOwnerHaafingar(2, false)
		elseIf !CWFinale.IsRunning()
			debug.messageBox("Civil War Overhaul attempted to create a defensive mission, but was unable to find the hold location in CWODefend().  A reload to before the completion of the last quest should fix this error.")
		endIf
	elseIf playerAllegiance == iSons
		CWOAntiPlayerAllegiance = 1
		if HoldLocation == HaafingarHoldLocation
			HoldLocation2 = HjaalmarchHoldLocation
			self.SetOwnerHaafingar(1, false)
		elseIf HoldLocation == HjaalmarchHoldLocation
			HoldLocation2 = ReachHoldLocation
			self.SetOwnerHjaalmarch(1, false)
		elseIf HoldLocation == ReachHoldLocation
			HoldLocation2 = FalkreathHoldLocation
			self.SetOwnerReach(1, false)
		elseIf HoldLocation == FalkreathHoldLocation
			HoldLocation2 = WhiterunHoldLocation
			self.SetOwnerFalkreath(1, false)
		elseIf HoldLocation == WhiterunHoldLocation
			HoldLocation2 = PaleHoldLocation
			self.SetOwnerWhiterun(1, false)
		elseIf HoldLocation == PaleHoldLocation
			HoldLocation2 = RiftHoldLocation
			self.SetOwnerPale(1, false)
		elseIf HoldLocation == RiftHoldLocation
			HoldLocation2 = WinterholdHoldLocation
			self.SetOwnerRift(1, false)
		elseIf HoldLocation == WinterholdHoldLocation
			HoldLocation2 = EastmarchHoldLocation
			CWOStillABetterEndingGlobal.setValue(1.00000)
			self.SetOwnerWinterhold(1, false)
		elseIf HoldLocation == EastmarchHoldLocation
			self.SetOwnerEastmarch(1, false)
		elseIf !CWFinale.IsRunning()
			debug.messageBox("Civil War Overhaul attempted to create a defensive mission, but was unable to find the hold location in CWODefend().  A reload to before the completion of the last quest should fix this error.")
		endIf
	endIf
	self.SetHoldOwnerByInt(self.GetHoldID(HoldLocation), CWOAntiPlayerAllegiance, false)
	self.CWOStartCapital(HoldLocation2)
endFunction

function CWOImperialsWin()

	self.SetOwnerHaafingar(iImperials, false)
	self.SetOwnerHjaalmarch(iImperials, false)
	self.SetOwnerReach(iImperials, false)
	self.SetOwnerFalkreath(iImperials, false)
	self.SetOwnerWhiterun(iImperials, false)
	self.SetOwnerPale(iImperials, false)
	self.SetOwnerWinterhold(iImperials, false)
	self.SetOwnerEastmarch(iImperials, false)
endFunction

Int function GetActorAllgeiance(actor ActorToCheck)
{Returns an integer correlating to the Civil War faction the actor belongs 1 = in faction CWImperialFaction, 2 = in faction CWSonsFaction}

	if ActorToCheck.IsInFaction(CWImperialFaction) || ActorToCheck.IsInFaction(GovImperial)
		return iImperials
	elseIf ActorToCheck.IsInFaction(CWSonsFaction) || ActorToCheck.IsInFaction(GovSons)
		return iSons
	else
		CWScript.log("CWScript", "GetActorAllgeiance() ActorToCheck(" + ActorToCheck as String + ") is neither in CWImperialFaction nor CWImperialFaction.", 1, false, false)
		return -1
	endIf
endFunction

function MoveRikkeGalmarToCampIfNeeded(Bool CheckIfUnloaded)
{Moves them to the proper camp if not already there and, if not in the same location as the player.}

	CWScript.log("CWScript", "MoveRikkeGalmarToCampIfNeeded()", 0, false, false)
	if WarIsActive == 1 && self.GetStageDone(4)
		if playerAllegiance == iImperials
			CWScript.log("CWScript", "MoveRikkeGalmarToCampIfNeeded() player is Imperial, checking Rikke", 0, false, false)
			actor RikkeActor = Rikke.GetActorReference()
			package CurrentPackage = RikkeActor.GetCurrentPackage()
			if CheckIfUnloaded
				if RikkeActor.Is3DLoaded()
					CWScript.log("CWScript", "MoveRikkeGalmarToCampIfNeeded() CheckIfUnloaded == true, and Rikke has 3D so skip this.", 0, false, false)
					return 
				endIf
			endIf
			if self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(RikkeActor, CWRikkeAtCampPale, MilitaryCampPaleImperialLocation, CWFieldCOMapTableMarkerPaleCampImperial)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(RikkeActor, CWRikkeAtCampRift, MilitaryCampRiftImperialLocation, CWFieldCOMapTableMarkerRiftCampImperial)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(RikkeActor, CWRikkeAtCampWinterhold, MilitaryCampWinterholdImperialLocation, CWFieldCOMapTableMarkerWinterholdCampImperial)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(RikkeActor, CWRikkeAtCampHjaalmarch, MilitaryCampHjaalmarchImperialLocation, CWFieldCOMapTableMarkerHjaalmarchCampImperial)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(RikkeActor, CWRikkeAtCampFalkreath, MilitaryCampFalkreathImperialLocation, CWFieldCOMapTableMarkerFalkreathCampImperial)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(RikkeActor, CWRikkeAtCampReach, MilitaryCampReachImperialLocation, CWFieldCOMapTableMarkerReachCampImperial)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(RikkeActor, CWRikkeAtCampEastmarch, MilitaryCampEastmarchImperialLocation, CWFieldCOMapTableMarkerEastmarchCampImperial)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(RikkeActor, CWRikkeAtCampWhiterun, MilitaryCampWhiterunImperialLocation, CWFieldCOMapTableMarkerWhiterunCampImperial)
				
			endIf
		elseIf playerAllegiance == iSons
			CWScript.log("CWScript", "MoveRikkeGalmarToCampIfNeeded() player is Sons, checking Galmar", 0, false, false)
			actor GalmarActor = Galmar.GetActorReference()
			package currentpackage = GalmarActor.GetCurrentPackage()
			if CheckIfUnloaded
				if GalmarActor.Is3DLoaded()
					CWScript.log("CWScript", "MoveGalmarGalmarToCampIfNeeded() CheckIfUnloaded == true, and Galmar has 3D so skip this.", 0, false, false)
					return 
				endIf
			endIf
			CWScript.log("CWScript", "MoveGalmarGalmarToCampIfNeeded() calling EvaluatePackage() on Galmar", 0, false, false)
			GalmarActor.EvaluatePackage()
			if self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(GalmarActor, CWGalmarAtCampFalkreath, MilitaryCampFalkreathSonsLocation, CWFieldCOMapTableMarkerFalkreathCampSons)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(GalmarActor, CWGalmarAtCampReach, MilitaryCampReachSonsLocation, CWFieldCOMapTableMarkerReachCampSons)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(GalmarActor, CWGalmarAtCampHjaalmarch, MilitaryCampHjaalmarchSonsLocation, CWFieldCOMapTableMarkerHjaalmarchCampSons)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(GalmarActor, CWGalmarAtCampPale, MilitaryCampPaleSonsLocation, CWFieldCOMapTableMarkerPaleCampSons)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(GalmarActor, CWGalmarAtCampWinterhold, MilitaryCampWinterholdSonsLocation, CWFieldCOMapTableMarkerWinterholdCampSons)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(GalmarActor, CWGalmarAtCampRift, MilitaryCampRiftSonsLocation, CWFieldCOMapTableMarkerRiftCampSons)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(GalmarActor, CWGalmarAtCampHaafingar, MilitaryCampHaafingarSonsLocation, CWFieldCOMapTableMarkerHaafingarCampSons)
				
			elseIf self.CheckRikkeGalmarNotAtCampPackageLocationAndMoveIfNeeded(GalmarActor, CWGalmarAtCampWhiterun, MilitaryCampWhiterunSonsLocation, CWFieldCOMapTableMarkerWhiterunCampSons)
				
			endIf
		else
			CWScript.log("CWScript", "MoveRikkeGalmarToCampIfNeeded() player is Neither Imperial nor Sons, not checking Rikke or Galmar", 0, false, false)
		endIf
	else
		CWScript.log("CWScript", "MoveRikkeGalmarToCampIfNeeded() WarIsActive == false or GetStageDone(4) == false, not checking.", 0, false, false)
	endIf
endFunction

referencealias function GetAliasHQFieldCOForHold(location Hold, Int FactionToCheck)

	referencealias returnVal
	CWScript.log("CWScript", "GetAliasHQFieldCOForHold(" + Hold as String + ")", 0, false, false)
	if FactionToCheck == iImperials
		if Hold == EastmarchHoldLocation
			returnVal = Alias_FieldCOImperialEastmarchHQ
		elseIf Hold == FalkreathHoldLocation
			returnVal = Alias_FieldCOImperialFalkreathHQ
		elseIf Hold == HaafingarHoldLocation
			returnVal = Alias_FieldCOImperialHaafingarHQ
		elseIf Hold == HjaalmarchHoldLocation
			returnVal = Alias_FieldCOImperialHjaalmarchHQ
		elseIf Hold == PaleHoldLocation
			returnVal = Alias_FieldCOImperialPaleHQ
		elseIf Hold == ReachHoldLocation
			returnVal = Alias_FieldCOImperialReachHQ
		elseIf Hold == RiftHoldLocation
			returnVal = Alias_FieldCOImperialRiftHQ
		elseIf Hold == WhiterunHoldLocation
			returnVal = Alias_FieldCOImperialWhiterunHQ
		elseIf Hold == WinterholdHoldLocation
			returnVal = Alias_FieldCOImperialWinterholdHQ
		endIf
	elseIf FactionToCheck == iSons
		if Hold == EastmarchHoldLocation
			returnVal = Alias_FieldCOSonsEastmarchHQ
		elseIf Hold == FalkreathHoldLocation
			returnVal = Alias_FieldCOSonsFalkreathHQ
		elseIf Hold == HaafingarHoldLocation
			returnVal = Alias_FieldCOSonsHaafingarHQ
		elseIf Hold == HjaalmarchHoldLocation
			returnVal = Alias_FieldCOSonsHjaalmarchHQ
		elseIf Hold == PaleHoldLocation
			returnVal = Alias_FieldCOSonsPaleHQ
		elseIf Hold == ReachHoldLocation
			returnVal = Alias_FieldCOSonsReachHQ
		elseIf Hold == RiftHoldLocation
			returnVal = Alias_FieldCOSonsRiftHQ
		elseIf Hold == WhiterunHoldLocation
			returnVal = Alias_FieldCOSonsWhiterunHQ
		elseIf Hold == WinterholdHoldLocation
			returnVal = Alias_FieldCOSonsWinterholdHQ
		endIf
	else
		CWScript.log("CWScript", " WARNING: GetAliasHQFieldCOForHold(" + Hold as String + ") expect 1 or 2 for FactionToCheck, intead got: " + FactionToCheck as String, 2, true, true)
	endIf
	CWScript.log("CWScript", "GetAliasHQFieldCOForHold(" + Hold as String + ") RETURNING: " + returnVal as String, 0, false, false)
	return returnVal
endFunction

function AddEnemyFortsToBackToWar(Bool ShowDebugMessage)

	CWScript.log("CWMissionScript", self as String + "AddEnemyFortsToBackToWar()", 0, false, false)
	if ShowDebugMessage == true
		debug.messageBox("Setting Enemy Forts to be cleared of bandits and ready for missions. WAIT before testing civil war missions.")
	endIf
	if EnemyFortsAddedBackToWar == true
		CWScript.log("CWMissionScript", self as String + "AddEnemyFortsToBackToWar() EnemyFortsAddedBackToWar == true, so skipping bailing out from adding forts back to war ", 0, false, false)
		return 
	endIf
	if playerAllegiance == iImperials
		CWScript.log("CWMissionScript", self as String + "AddEnemyFortsToBackToWar() player is Imperial, adding Stormcloak forts (not Fort Greymoor regardless) back to the war by calling AddGarrisonBackToWar.", 0, false, false)
		self.AddGarrisonBackToWar(FortGreymoorLocation, 0, false)
		self.AddGarrisonBackToWar(FortKastavLocation, 0, false)
		self.AddGarrisonBackToWar(FortDunstadLocation, 0, false)
		self.AddGarrisonBackToWar(FortAmolLocation, 0, false)
		self.AddGarrisonBackToWar(FortGreenwallLocation, 0, false)
		EnemyFortsAddedBackToWar = true
	elseIf playerAllegiance == iSons
		CWScript.log("CWMissionScript", self as String + "AddEnemyFortsToBackToWar() player is Sons, adding Imperial forts (not Fort Greymoor regardless) back to the war by calling AddGarrisonBackToWar().", 0, false, false)
		self.AddGarrisonBackToWar(FortGreymoorLocation, 0, false)
		self.AddGarrisonBackToWar(FortNeugradLocation, 0, false)
		self.AddGarrisonBackToWar(FortHraggstadLocation, 0, false)
		self.AddGarrisonBackToWar(FortSungardLocation, 0, false)
		self.AddGarrisonBackToWar(FortSnowhawkLocation, 0, false)
		EnemyFortsAddedBackToWar = true
	else
		CWScript.log("CWMissionScript", self as String + " WARNING: AddEnemyFortsToBackToWar() expected PlayerAllegiance to be 1 or 2, instead got" + playerAllegiance as String, 2, true, true)
	endIf
	if ShowDebugMessage == true
		debug.messageBox("Done Setting Enemy Forts to be cleared of bandits and ready for missions. You may now test civil war missions.")
	endIf
	CWScript.log("CWMissionScript", self as String + "AddEnemyFortsToBackToWar() FINSIHED", 0, false, false)
endFunction

function SetOwnerFalkreath(Int FactionToOwn, Bool DiplomaticVictory)

	CWScript.log("CWScript", "CW Script setOwnerFalkreath() started." + "FactionToOwn: " + FactionToOwn as String + ", DiplomaticVictory: " + DiplomaticVictory as String, 0, false, false)
	if DiplomaticVictory
		FalkreathHoldLocation.SetKeywordData(CWDiplomaticVictory, 1 as Float)
		self.ClearHoldCrimeGold(FalkreathHoldLocation)
	endIf
	if FactionToOwn != iCurrentOwner
		OwnerFalkreath = FactionToOwn
		FalkreathHoldLocation.SetKeywordData(CWOwner, FactionToOwn as Float)
	endIf
	self.setCountHoldProperties()
	self.setOwner(FortNeugradLocation, FactionToOwn, MilitaryCampFalkreathImperialLocation, MilitaryCampFalkreathSonsLocation, FalkreathLocation, HelgenLocation, HalfmoonMillLocation, none, none, false)
	CWScript.log("CWScript", "CW Script setOwnerFalkreath() finished.", 0, false, false)
endFunction

function SetOwnerReach(Int FactionToOwn, Bool DiplomaticVictory)

	CWScript.log("CWScript", "CW Script setOwnerReach() started." + "FactionToOwn: " + FactionToOwn as String + ", DiplomaticVictory: " + DiplomaticVictory as String, 0, false, false)
	if DiplomaticVictory
		ReachHoldLocation.SetKeywordData(CWDiplomaticVictory, 1 as Float)
		self.ClearHoldCrimeGold(ReachHoldLocation)
	endIf
	if FactionToOwn != iCurrentOwner
		OwnerReach = FactionToOwn
		ReachHoldLocation.SetKeywordData(CWOwner, FactionToOwn as Float)
	endIf
	self.setCountHoldProperties()
	self.setOwner(FortSungardLocation, FactionToOwn, MilitaryCampReachImperialLocation, MilitaryCampReachSonsLocation, none, none, none, none, none, false)
	self.setOwner(MarkarthLocation, FactionToOwn, CidhnaMineLocation, LeftHandMineLocation, SalviusFarmLocation, KarthwastenLocation, OldHroldanLocation, KolskeggrMineLocation, none, false)
	CWScript.log("CWScript", "CW Script setOwnerReach() finished.", 0, false, false)
endFunction

function SetCountWinsImperials()

	countWinImperials += 1
	if contestedHold == iReach
		countWinReachImperials += 1
	elseIf contestedHold == iHjaalmarch
		countWinHjaalmarchImperials += 1
	elseIf contestedHold == iWhiterun
		countWinWhiterunImperials += 1
	elseIf contestedHold == iFalkreath
		countWinFalkreathImperials += 1
	elseIf contestedHold == iPale
		countWinPaleImperials += 1
	elseIf contestedHold == iWinterhold
		countWinWinterholdImperials += 1
	elseIf contestedHold == iRift
		countWinRiftImperials += 1
	endIf
endFunction

function AddGarrisonBackToWar(location LocationToTurnOn, Int FactionToOwn, Bool SkipSetOwnerCall)

	CWScript.log("CWMissionScript", self as String + "AddGarrisonBackToWar(" + LocationToTurnOn as String + ") and will call setOwner() so it will get turned on.", 0, false, false)
	if LocationToTurnOn.HasKeyword(CWGarrison)
		CWScript.log("CWMissionScript", self as String + "AddGarrisonBackToWar() setting CWGarrison to 0 for location: " + LocationToTurnOn as String + " and will call setOwner() so it will get turned on.", 0, false, false)
		LocationToTurnOn.SetKeywordData(CWGarrison, 0 as Float)
	elseIf LocationToTurnOn.HasKeyword(CWFort)
		CWScript.log("CWMissionScript", self as String + "AddGarrisonBackToWar() setting CWFort to 0 for location: " + LocationToTurnOn as String + " and will call setOwner() so it will get turned on", 0, false, false)
		LocationToTurnOn.SetKeywordData(CWFort, 0 as Float)
	else
		CWScript.log("CWMissionScript", self as String + " WARNING: AddGarrisonBackToWar() found NEITHER CWGarrison NOR CWFort keyword for location : " + LocationToTurnOn as String + " THIS WILL CAUSE UNEXPECTED BEHAVIOR", 2, true, true)
	endIf
	if FactionToOwn == 0
		FactionToOwn = LocationToTurnOn.GetKeywordData(CWOwner) as Int
		CWScript.log("CWMissionScript", self as String + "AddGarrisonBackToWar() setting FactionToOwn to current owner:" + FactionToOwn as String, 0, false, false)
	endIf
	if SkipSetOwnerCall == false
		self.setOwner(LocationToTurnOn, FactionToOwn, none, none, none, none, none, none, none, false)
	endIf
endFunction

function CWOTotalReset()

	CWSiege.stop()
	CWFortSiegeCapital.stop()
	CWFortSiegeFort.stop()
	self.SetInitialOwners()
endFunction

actor function GetRikkeOrGalmar(Int iFaction)
{Returns Rikke if iFaction == 1, or Galmar if iFaction == 2, uses PlayerAllegiance if iFaction == -1 (default)}

	actor ReturnRef
	CWScript.log("CWScript", "GetRikkeOrGalmar(" + iFaction as String + ")", 0, false, false)
	if iFaction == -1
		iFaction = playerAllegiance
	endIf
	if iFaction == 1
		ReturnRef = Rikke.GetActorReference()
	elseIf iFaction == 2
		ReturnRef = Galmar.GetActorReference()
	else
		CWScript.log("CWScript", " WARNING: GetRikkeOrGalmar() encountered an unknown iFaction. Expected 1 or 2, got " + iFaction as String, 2, true, true)
	endIf
	CWScript.log("CWScript", "GetRikkeOrGalmar() returning:" + ReturnRef as String, 0, false, false)
	return ReturnRef
endFunction
