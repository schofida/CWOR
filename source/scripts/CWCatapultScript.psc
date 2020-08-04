scriptName CWCatapultScript extends ObjectReference
{Script on the CWCatapult Activator}

;-- Properties --------------------------------------
keyword property CW5 auto
{BASEOBJET: pointer to keyword CW5 which defines the CWCatapultStrikerSpawner associated with phase 5 that should place catapult strike effects if this catapult is unloaded and CWBattlePhase is the correct phase}
keyword property CW1 auto
{BASEOBJET: pointer to keyword CW1 which defines the CWCatapultStrikerSpawner associated with phase 1 that should place catapult strike effects if this catapult is unloaded and CWBattlePhase is the correct phase}
ammo property AmmoToFire auto
{BASEOBJECT: Set this to CWCatapultAmmo, this is the ammo parameter that the fire() function is passed.}
keyword property CW3 auto
{BASEOBJET: pointer to keyword CW3 which defines the CWCatapultStrikerSpawner associated with phase 3 that should place catapult strike effects if this catapult is unloaded and CWBattlePhase is the correct phase}
weapon property WeaponToFire auto
{BASEOBJECT: Set this to CWCatapultWeapon, this is the weapon that the fire() function is called on.}
Bool property UseCWCatapultStrikeSpawners auto
{DON'T SET THIS, FOR DEBUGGING AND INTERNAL USE BY SCRIPT ONLY}
keyword property CW4 auto
{BASEOBJET: pointer to keyword CW4 which defines the CWCatapultStrikerSpawner associated with phase 4 that should place catapult strike effects if this catapult is unloaded and CWBattlePhase is the correct phase}
keyword property CWAllPhases auto
{BASEOBJET: pointer to keyword CWAllPhases which defines the CWCatapultStrikerSpawner associated with all phases that should place catapult strike effects if this catapult is unloaded}
ObjectReference property FaceTarget auto
{DEBUG: object ref id aim at, set before activating the Aiming mode menu in game}
Float property MaxStrikeSpawnerTime = 7.00000 auto
{Optional REFERENCE: maximum seconds that should pass between each CWCatapultStrike special effect Explosion from this catapult}
globalvariable property CWBattlePhase auto
{BASEOBJECT: Pointer to CWBattlePhase global}
Bool property TurnedOn auto
{DON'T SET THIS, FOR DEBUGGING AND INTERNAL USE BY SCRIPT ONLY}
message property CWCatapultMsgAngle auto
{BASEOBJECT: pointer to the CWCatapultMsgAngle message}
Bool property Aim auto
{DEBUG: Put the catapult in aiming mode.}
Float property MinStrikeSpawnerTime = 3.00000 auto
{Optional REFERENCE: minimum seconds that should pass between each CWCatapultStrike special effect Explosion from this catapult}
keyword property CW2 auto
{BASEOBJET: pointer to keyword CW2 which defines the CWCatapultStrikerSpawner associated with phase 2 that should place catapult strike effects if this catapult is unloaded and CWBattlePhase is the correct phase}
message property CWCatapultMsgPosition auto
{BASEOBJECT: pointer to the CWCatapultMsgAngle message}

;-- Variables ---------------------------------------
String busy = "busy"
String aeReloaded = "reloaded"
String aeStartFired = "startFired"
String fired = "fired"
String aeFired = "fired"
String aeLaunch = "launch"
String aeFire = "fire"
String aeReload = "reload"
String ready = "ready"

;-- Functions ---------------------------------------

function OnLoad()

	((self as ObjectReference) as cwcatapultoffscreenfirecontrolscript).StopOffscreenFiring()
	UseCWCatapultStrikeSpawners = false
	self.RegisterForAnimationEvent(self as ObjectReference, aeFire)
	self.RegisterForAnimationEvent(self as ObjectReference, aeLaunch)
	self.RegisterForAnimationEvent(self as ObjectReference, aeFired)
	self.RegisterForAnimationEvent(self as ObjectReference, aeReload)
	self.RegisterForAnimationEvent(self as ObjectReference, aeReloaded)
	self.RegisterForAnimationEvent(self as ObjectReference, aeStartFired)
endFunction

Float function GetFacingToTarget(ObjectReference TargetRef, Bool invertFacing)

	Float deltaX = TargetRef.X - self.X
	Float deltaY = TargetRef.Y - self.Y
	Float newAngle = math.atan(deltaX / deltaY)
	if TargetRef.Y < self.Y
		newAngle += 180 as Float
	endIf
	if invertFacing
		if newAngle >= 180 as Float
			newAngle -= 180 as Float
		else
			newAngle += 180 as Float
		endIf
	endIf
	return newAngle
endFunction

function TurnOn()

	TurnedOn = true
	self.startSpawningCatapultStrikes()
endFunction

function launch()

	self.GotoState(busy)
	self.PlayAnimationAndWait(aeFire, aeLaunch)
	WeaponToFire.fire(self as ObjectReference, AmmoToFire)
endFunction

; Skipped compiler generated GetState

function logPositionAndAngle()

	; Empty function
endFunction

function showPositioningMenu()

	Float yOffset
	Float xOffset
	Float translateSpeed = 100 as Float
	message thisMessage = CWCatapultMsgPosition
	Int button = thisMessage.Show(0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Int left = 0
	Int right = 1
	Int back = 2
	Int forward = 3
	Int up = 4
	Int down = 5
	Int nextMenu = 6
	Int log = 7
	Int done = 8
	Float offset = 1 as Float
	if button == left
		xOffset = offset * math.cos(self.GetAngleZ())
		yOffset = offset * -math.sin(self.GetAngleZ())
		self.translateTo(self.X + xOffset, self.Y + yOffset, self.Z, self.GetAngleX(), self.GetAngleY(), self.GetAngleZ(), translateSpeed, 0.000000)
	elseIf button == right
		xOffset = offset * math.cos(self.GetAngleZ())
		yOffset = offset * -math.sin(self.GetAngleZ())
		self.translateTo(self.X - xOffset, self.Y - yOffset, self.Z, self.GetAngleX(), self.GetAngleY(), self.GetAngleZ(), translateSpeed, 0.000000)
	elseIf button == back
		xOffset = offset * math.sin(self.GetAngleZ())
		yOffset = offset * math.cos(self.GetAngleZ())
		self.translateTo(self.X + xOffset, self.Y + yOffset, self.Z, self.GetAngleX(), self.GetAngleY(), self.GetAngleZ(), translateSpeed, 0.000000)
	elseIf button == forward
		xOffset = offset * math.sin(self.GetAngleZ())
		yOffset = offset * math.cos(self.GetAngleZ())
		self.translateTo(self.X - xOffset, self.Y - yOffset, self.Z, self.GetAngleX(), self.GetAngleY(), self.GetAngleZ(), translateSpeed, 0.000000)
	elseIf button == up
		self.translateTo(self.X, self.Y, self.Z + offset, self.GetAngleX(), self.GetAngleY(), self.GetAngleZ(), translateSpeed, 0.000000)
	elseIf button == down
		self.translateTo(self.X, self.Y, self.Z - offset, self.GetAngleX(), self.GetAngleY(), self.GetAngleZ(), translateSpeed, 0.000000)
	elseIf button == nextMenu
		self.showAimingMenu()
	elseIf button == log
		self.logPositionAndAngle()
	endIf
	if button != done
		self.showPositioningMenu()
	endIf
endFunction

function TurnOff(Bool AndDisable)

	TurnedOn = false
	if AndDisable == true
		self.disable(false)
	endIf
	((self as ObjectReference) as cwcatapultoffscreenfirecontrolscript).StopOffscreenFiring()
endFunction

function reload()

	self.GotoState(busy)
	self.PlayAnimation(aeReload)
endFunction

function showAimingMenu()

	Float translateSpeed = 100 as Float
	message thisMessage = CWCatapultMsgAngle
	Int button = thisMessage.Show(0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	Int left = 0
	Int right = 1
	Int back = 2
	Int forward = 3
	Int face = 4
	Int nextMenu = 5
	Int log = 6
	Int done = 7
	Float offset = 1 as Float
	if button == left
		self.translateTo(self.X, self.Y, self.Z, self.GetAngleX(), self.GetAngleY(), self.GetAngleZ() - offset, translateSpeed, 0.000000)
	elseIf button == right
		self.translateTo(self.X, self.Y, self.Z, self.GetAngleX(), self.GetAngleY(), self.GetAngleZ() + offset, translateSpeed, 0.000000)
	elseIf button == back
		self.translateTo(self.X, self.Y, self.Z, self.GetAngleX(), self.GetAngleY() - offset, self.GetAngleZ(), translateSpeed, 0.000000)
	elseIf button == forward
		self.translateTo(self.X, self.Y, self.Z, self.GetAngleX(), self.GetAngleY() + offset, self.GetAngleZ(), translateSpeed, 0.000000)
	elseIf button == face
		self.translateTo(self.X, self.Y, self.Z, self.GetAngleX(), self.GetAngleY(), self.GetFacingToTarget(FaceTarget, true), translateSpeed, 0.000000)
	elseIf button == nextMenu
		self.showPositioningMenu()
	elseIf button == log
		self.logPositionAndAngle()
	endIf
	if button != done
		self.showAimingMenu()
	endIf
endFunction

function startSpawningCatapultStrikes()

	if TurnedOn == false
		
	else
		UseCWCatapultStrikeSpawners = true
		((self as ObjectReference) as cwcatapultoffscreenfirecontrolscript).StartOffscreenFiring(self.GetTimeToNextLaunch())
	endIf
endFunction

function OnUnload()

	if UseCWCatapultStrikeSpawners == false && TurnedOn == true
		self.startSpawningCatapultStrikes()
	endIf
	self.UnRegisterForAnimationEvent(self as ObjectReference, aeFire)
	self.UnRegisterForAnimationEvent(self as ObjectReference, aeLaunch)
	self.UnRegisterForAnimationEvent(self as ObjectReference, aeFired)
	self.UnRegisterForAnimationEvent(self as ObjectReference, aeReload)
	self.UnRegisterForAnimationEvent(self as ObjectReference, aeReloaded)
	self.UnRegisterForAnimationEvent(self as ObjectReference, aeStartFired)
endFunction

Float function GetTimeToNextLaunch()

	Float timeToNextLaunch = utility.RandomFloat(MinStrikeSpawnerTime, MaxStrikeSpawnerTime)
	return timeToNextLaunch
endFunction

; Skipped compiler generated GotoState

function OnAnimationEvent(ObjectReference akSource, String asEventName)

	if asEventName == aeReloaded
		self.GotoState(ready)
	elseIf asEventName == aeFired
		self.GotoState(fired)
	endIf
endFunction

;-- State -------------------------------------------
state fired

	function onBeginState()

		; Empty function
	endFunction

	function OnActivate(ObjectReference akActionRef)

		self.reload()
	endFunction
endState

;-- State -------------------------------------------
auto state ready

	function onBeginState()

		; Empty function
	endFunction

	function OnActivate(ObjectReference akActionRef)

		if Aim == true
			self.showAimingMenu()
		elseIf UseCWCatapultStrikeSpawners == false
			self.launch()
		endIf
	endFunction
endState

;-- State -------------------------------------------
state busy

	function onBeginState()

		; Empty function
	endFunction

	function OnActivate(ObjectReference akActionRef)

		; Empty function
	endFunction
endState
