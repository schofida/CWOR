scriptName DefaultAliasModAggression extends ReferenceAlias
{Script used to temporarily mod an actor's aggression. You will need to call a ModAggression() and ResetAggression() to mod and unmod it.}

;-- Properties --------------------------------------
Int property MaxAggression = 2 auto
{Default: 2, set both MinAggression and MaxAggresion to the same number to temporarily force it to be that number regardless of where it currently is.}
Int property MinAggression = 1 auto
{Default: 1, set both MinAggression and MaxAggresion to the same number to temporarily force it to be that number regardless of where it currently is.}
Bool property ModOnlyOnce = true auto
{Default: true, only allow modding and unmodding once.}

;-- Variables ---------------------------------------
Bool Unmodded
Int currentAggression
Bool Modded
Int startingAggression

;-- Functions ---------------------------------------

function OnInit()

	if MinAggression > MaxAggression
		MinAggression = MaxAggression
	endIf
endFunction

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function ResetAggression()

	if Modded == false
		return 
	endIf
	if ModOnlyOnce as Bool && Unmodded as Bool
		return 
	endIf
	Unmodded = true
	actor ActorRef = self.GetActorReference()
	Int actualAggression = ActorRef.GetAV("Aggression") as Int
	if currentAggression != actualAggression
		
	endIf
	ActorRef.SetAV("Aggression", startingAggression as Float)
endFunction

function ModAggression()

	if ModOnlyOnce as Bool && Modded as Bool
		return 
	endIf
	Modded = true
	actor ActorRef = self.GetActorReference()
	startingAggression = ActorRef.GetAV("Aggression") as Int
	currentAggression = startingAggression
	if currentAggression < MinAggression
		currentAggression = MinAggression
	elseIf currentAggression > MaxAggression
		currentAggression = MaxAggression
	endIf
	ActorRef.SetAV("Aggression", currentAggression as Float)
endFunction
