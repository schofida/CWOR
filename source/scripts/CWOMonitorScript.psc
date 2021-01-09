scriptName CWOMonitorScript extends ReferenceAlias

;-- Properties --------------------------------------
quest property Siege auto
cwscript property CWS auto

GlobalVariable property CWOVersion auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------


function OnInit()
	self.registerforsingleupdate(30 as Float)
endFunction

function OnUpdate()

	if Siege.IsRunning() && Siege.GetStage() > 0
		self.GotoState("Rolling")
	else
		self.registerforsingleupdate(30 as Float)
	endIf
endFunction

;schofida - hijacking this quest to add LoadGame specific stuff
function OnPlayerLoadGame()
	DoPlayerLoadGameStuff()
endfunction

function DoPlayerLoadGameStuff()
	Utility.Wait(10)
	(CWS as CWScript).debugOn.setValue(0)
	if CWOVersion.GetValueInt() < 302
		CWS.playerRef.RemoveFromFaction(CWs.CWSonsFactionNPC)
		CWS.playerRef.RemoveFromFaction(CWs.CWImperialFactionNPC)
		if CWs.playerAllegiance == CWs.iImperials && CWs.WhiterunSiegeFinished
			CWS.playerRef.AddToFaction(CWs.CWImperialFaction)
		endif
		CWOVersion.SetValueInt(302)
	endif
	if CWOVersion.GetValueInt() < 304
		if !CWs.WhiterunSiegeFinished
			CWS.CWOCurrentHold.SetValueInt(4)
		endif
		CWOVersion.SetValueInt(304)
	endif
	if CWOVersion.GetValueInt() < 405
		if CWs.CWOStilABetterEndingMonitor.IsRunning()
			CWs.CWOStilABetterEndingMonitor.Stop()
			utility.Wait(3.0)
			CWs.CWOStilABetterEndingMonitor.Start()
		endif
		CWOVersion.SetValueInt(405)
	endif
endfunction

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

;-- State -------------------------------------------
state Rolling
	;schofida - hijacking this quest to add LoadGame specific stuff
	function OnPlayerLoadGame()
		DoPlayerLoadGameStuff()
	endfunction

	function onBeginState()

		self.registerforsingleupdate(30 as Float)
	endFunction

	function OnUpdate()

		CWS.CWOCreateMissions(none, none, false, none)
		self.registerforsingleupdate(30 as Float)
	endFunction
endState
