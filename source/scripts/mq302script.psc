scriptName MQ302Script extends Quest conditional

;-- Properties --------------------------------------
globalvariable property StartingNegotiationDelta auto
{initial state of negotating position -- based on holds controlled}
Int property SideFavored auto conditional
{at end, which side was favored?
positive - Imperials
negative - Sons}
locationalias property Alias_SonsMinorHold auto
Bool property KickOutFlag = false auto conditional
{Set to true if you pissed off your faction enough to be kicked out}
Int property SonsMajorHoldID auto conditional
locationalias property Alias_ImperialMinorHold2 auto
faction property CWSonsFactionNPC auto
Quest property CW auto
location property HighHrothgarLocation auto
Int property ImperialMinorHold2ID auto conditional
Int property ImperialMinorHoldID auto conditional
Bool property bImperialCouncilBlocked auto conditional
{72813 - to allow conditions to check this due to delay of stage 20 getting set}
faction property CWSonsFaction auto
referencealias property Alias_PlayerChair auto
locationalias property Alias_ImperialMajorHold auto
scene property CouncilScene5_I auto
Int property CityToSwitch auto conditional
{this is set by stage 140 -- which city is switching sides? (whether it actually switches or not depends on if stage 141 is set)
	1 = Markarth
	2 = Riften}
favordialoguescript property DialogueFavorGeneric auto
Bool property HideCWMiscObjectives auto conditional
{set to true during council to hide CW quest targets
to Ulfric and Tullius}
Int property NegotiationDelta = 0 auto conditional
{Tracks the relative position of the negoations
+ : imperials favored
- : sons favored}
faction property CWImperialFactionNPC auto
locationalias property Alias_SonsMajorHold auto
locationalias property Alias_SonsMinorHold2 auto
Int property SonsMinorHold2ID auto conditional
location property ImperialTownRaided auto conditional
{last Imperial town raided
set by CW missions}
location property SonsTownRaided auto conditional
{last Sons-owned town raided
set by CW missions}
Int property SonsMinorHoldID auto conditional
scene property CouncilScene5_S auto
Int property ImperialMajorHoldID auto conditional
locationalias property Alias_ImperialMinorHold auto
Bool property bStormcloakCouncilBlocked auto conditional
{72813 - to allow conditions to check this due to delay of stage 30 getting set}

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function TransferHoldControl()

	;debug.trace("MQ302: TransferHoldControl start", 0)
	cwscript sCW = CW as cwscript
	if self.GetStageDone(141) == 0 as Bool
		if CityToSwitch == 1
			;debug.trace("MQ302: TransferHoldControl: give the Reach to Sons", 0)
			sCW.SetHoldOwnerByInt(2, 2, true)
		else
			;debug.trace("MQ302: TransferHoldControl: give the Rift to Imperials", 0)
			sCW.SetHoldOwnerByInt(9, 1, true)
		endIf
	endIf
	if self.GetStageDone(142)
		if CityToSwitch == 1
			;debug.trace("MQ302: TransferHoldControl: give " + SonsMajorHoldID as String + " to Imperials", 0)
			sCW.SetHoldOwnerByInt(SonsMajorHoldID, 1, true)
		else
			;debug.trace("MQ302: TransferHoldControl: give " + ImperialMajorHoldID as String + " to Sons", 0)
			sCW.SetHoldOwnerByInt(ImperialMajorHoldID, 2, true)
		endIf
	endIf
	if self.GetStageDone(143)
		if CityToSwitch == 1
			;debug.trace("MQ302: TransferHoldControl: give " + SonsMinorHoldID as String + " to Imperials", 0)
			sCW.SetHoldOwnerByInt(SonsMinorHoldID, 1, true)
		else
			;debug.trace("MQ302: TransferHoldControl: give " + ImperialMinorHoldID as String + " to Sons", 0)
			sCW.SetHoldOwnerByInt(ImperialMinorHoldID, 2, true)
		endIf
	endIf
	if self.GetStageDone(201) && self.GetStageDone(205)
		;debug.trace("MQ302: TransferHoldControl: give " + SonsMinorHold2ID as String + " to Imperials", 0)
		sCW.SetHoldOwnerByInt(SonsMinorHold2ID, 1, true)
	endIf
	if self.GetStageDone(202) && self.GetStageDone(206)
		;debug.trace("MQ302: TransferHoldControl: give " + ImperialMinorHold2ID as String + " to Sons", 0)
		sCW.SetHoldOwnerByInt(ImperialMinorHold2ID, 2, true)
	endIf
endFunction

; Skipped compiler generated GetState

function SetNegotiationLocations()

	cwscript sCW = CW as cwscript
	SonsMajorHoldID = sCW.GetHoldID(Alias_SonsMajorHold.GetLocation())
	SonsMinorHoldID = sCW.GetHoldID(Alias_SonsMinorHold.GetLocation())
	SonsMinorHold2ID = sCW.GetHoldID(Alias_SonsMinorHold2.GetLocation())
	ImperialMajorHoldID = sCW.GetHoldID(Alias_ImperialMajorHold.GetLocation())
	ImperialMinorHoldID = sCW.GetHoldID(Alias_ImperialMinorHold.GetLocation())
	ImperialMinorHold2ID = sCW.GetHoldID(Alias_ImperialMinorHold2.GetLocation())
	if game.GetPlayer().IsInFaction(CWSonsFaction) == 0 as Bool
		if SonsMajorHoldID == -1
			self.IncrementNegotiationDelta(1)
			if SonsMinorHoldID == -1
				self.IncrementNegotiationDelta(1)
			endIf
		endIf
	elseIf ImperialMajorHoldID == -1
		self.IncrementNegotiationDelta(-1)
		if ImperialMinorHoldID == -1
			self.IncrementNegotiationDelta(-1)
		endIf
	endIf
	StartingNegotiationDelta.value = NegotiationDelta as Float
endFunction

; Skipped compiler generated GotoState

function MoveHome(referencealias guestAlias)

	actor guest = guestAlias.GetActorRef()
	if guest == none
		return 
	endIf
	if guest.IsNearPlayer() == 0 as Bool
		guest.MoveToMyEditorLocation()
	endIf
endFunction

function StartLoopingConcessionScene()

	;debug.trace("MQ302: StartLoopingConcessionScene", 0)
	if self.GetStageDone(181)
		CouncilScene5_I.ForceStart()
	else
		CouncilScene5_S.ForceStart()
	endIf
endFunction

function MoveToCouncil(referencealias guestAlias, ObjectReference partyMarker)

	actor guest = guestAlias.GetActorRef()
	if guest == none
		return 
	endIf
	faction crimeFaction = guest.GetCrimeFaction()
	if crimeFaction
		crimeFaction.SetPlayerEnemy(false)
	endIf
	if guest.IsNearPlayer() == 0 as Bool
		guest.moveTo(partyMarker, 0.000000, 0.000000, 0.000000, true)
	endIf
endFunction

function IncrementNegotiationDelta(Int value)

	;debug.trace("MQ302: IncrementNegotiationDelta: " + NegotiationDelta as String + " + " + value as String, 0)
	NegotiationDelta += value
endFunction
