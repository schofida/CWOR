scriptName CWCatapultStrikeScript extends ObjectReference

;-- Properties --------------------------------------
explosion property ExplosionObject auto
{BASEOBJECT: the explosion to use -> CWCatapultExp}

;-- Variables ---------------------------------------
Bool dead = false
Int deleteAfterTime = 10

;-- Functions ---------------------------------------

function OnLoad()

	if !dead
		Bool Registered = self.RegisterForAnimationEvent(self as ObjectReference, "end")
		self.RegisterForSingleUpdate(deleteAfterTime as Float)
	endIf
endFunction

function OnInit()

	cell parentCell = self.GetParentCell()
	if !parentCell || !parentCell.IsAttached()
		dead = true
		self.Delete()
	endIf
endFunction

function OnAnimationEventUnregistered(ObjectReference akSource, String asEventName)

	self.deleteMe()
endFunction

; Skipped compiler generated GotoState

function OnUpdate()

	self.deleteMe()
endFunction

; Skipped compiler generated GetState

function deleteMe()

	dead = true
	self.UnregisterforUpdate()
	self.UnregisterForAnimationEvent(self as ObjectReference, "end")
	self.Disable(false)
	self.Delete()
endFunction

function OnAnimationEvent(ObjectReference akSource, String asEventName)

	if asEventName == "end"
		self.PlaceAtMe(ExplosionObject as form, 1, false, false)
		self.RampRumble(0.600000, 0.350000, 1600.00)
		self.UnregisterForAnimationEvent(self as ObjectReference, "end")
		self.deleteMe()
	endIf
endFunction
