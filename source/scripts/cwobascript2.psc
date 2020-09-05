scriptName CWOBAScript2 extends ReferenceAlias

;-- Properties --------------------------------------
faction property CWSonsFaction auto
faction property CrimeFactionReach auto
faction property SonsCrimeFaction auto
faction property ImperialCrimeFaction auto
faction property CWSoldierNoGuardDialogueFaction auto
faction property CrimeFactionRift auto
faction property ImperialFaction auto
faction property CrimeFactionEastmarch auto
faction property CrimeFactionHjaalmarch auto
faction property CrimeFactionSons auto
faction property CWImperialFaction auto
faction property CrimeFactionImperial auto
faction property CrimeFactionWhiterun auto
faction property CrimeFactionFalkreath auto
faction property CrimeFactionPale auto
faction property SonsFaction auto
faction property CrimeFactionHaafingar auto
faction property CrimeFactionWinterhold auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------
Faction[] ActorFactions	; Reddit BugFix #9

; Skipped compiler generated GotoState

; Skipped compiler generated GetState
; Reddit BugFix #9
event OnDeath(Actor akKiller)
	actor Myself = self.GetActorReference()
	RemoveFromAllFactions(Myself)
	int i = ActorFactions.length
	While i
		i -= 1
		if Myself.IsInFaction(SonsFaction) == false
			Myself.AddToFaction(ActorFactions[i])
		endif
	endwhile
	Myself.EvaluatePackage()
endEvent

function RemoveFromAllFactions(actor Me)

	Me.RemoveFromFaction(CrimeFactionFalkreath)
	Me.RemoveFromFaction(CrimeFactionRift)
	Me.RemoveFromFaction(CrimeFactionHjaalmarch)
	Me.RemoveFromFaction(CrimeFactionHaafingar)
	Me.RemoveFromFaction(CrimeFactionEastmarch)
	Me.RemoveFromFaction(CrimeFactionPale)
	Me.RemoveFromFaction(CrimeFactionWinterhold)
	Me.RemoveFromFaction(CrimeFactionReach)
	Me.RemoveFromFaction(CrimeFactionWhiterun)
	; Reddit BugFix #9
	Me.RemoveFromFaction(SonsFaction)
	Me.RemoveFromFaction(CWSonsFaction)
	Me.RemoveFromFaction(SonsCrimeFaction)
	Me.RemoveFromFaction(ImperialFaction)
	Me.RemoveFromFaction(CWImperialFaction)
	Me.RemoveFromFaction(ImperialCrimeFaction)
	Me.RemoveFromFaction(CWSoldierNoGuardDialogueFaction)
endFunction

event OnInit()

	actor Myself = self.GetActorReference()
	if Myself == none
		return
	endif
	
	ActorFactions = Myself.GetFactions(-128, 127)	; Reddit BugFix #9
	if Myself.IsInFaction(SonsFaction)
		self.RemoveFromAllFactions(Myself)
		; Myself.RemoveFromFaction(SonsFaction)		; Reddit BugFix #9
		; Myself.RemoveFromFaction(CWSonsFaction)	; Reddit BugFix #9
		; Myself.RemoveFromFaction(SonsCrimeFaction)	; Reddit BugFix #9
		Myself.AddToFaction(ImperialFaction)
		Myself.AddToFaction(CWImperialFaction)
		Myself.AddToFaction(ImperialCrimeFaction)
		Myself.AddToFaction(CWSoldierNoGuardDialogueFaction)
		;Myself.AddToFaction(CrimeFactionHaafingar)	;schofida - Remove crime for attacking
		Myself.GetLeveledActorBase().SetName("Imperial Spy")
	elseIf Myself.IsInFaction(ImperialFaction)
		self.RemoveFromAllFactions(Myself)
		; Myself.RemoveFromFaction(ImperialFaction)	; Reddit BugFix #9
		; Myself.RemoveFromFaction(CWImperialFaction)	; Reddit BugFix #9
		; Myself.RemoveFromFaction(ImperialCrimeFaction); Reddit BugFix #9
		Myself.AddToFaction(SonsFaction)
		Myself.AddToFaction(CWSonsFaction)
		Myself.AddToFaction(SonsCrimeFaction)
		Myself.AddToFaction(CWSoldierNoGuardDialogueFaction)
		;Myself.AddToFaction(CrimeFactionEastmarch)	;schofida - Remove crime for attacking
		Myself.GetLeveledActorBase().SetName("Stormcloak Spy")
	endIf
	Myself.EvaluatePackage()
endEvent
