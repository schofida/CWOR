scriptName CWOPlayerEnters extends ReferenceAlias

;-- Properties --------------------------------------
ReferenceAlias property MarkarthMarker auto
ReferenceAlias property WhiterunMarker auto
locationalias property CityAlias auto
cwscript property CWS auto
ReferenceAlias property CityCenterMarkerAlias auto
locationalias property CapitalHQ auto
ReferenceAlias property RiftenMarker auto
actor property PlayerRef auto

;-- Variables ---------------------------------------
Objectreference CWOMarker
Bool IsInArea
Location CWOMarkerLocation

;-- Functions ---------------------------------------

function OnLocationChange(Location akOldLoc, Location akNewLoc)

	if akNewLoc == CityAlias.getLocation()
		if CWS.CWSiegeS.isRunning()
			if CWS.PlayerAllegiance == CWS.iSons
				IsInArea = true
			endIf
		endIf
	else
		IsInArea = false
	endIf
endFunction

function OnUpdate()

	self.RegisterForSingleUpdate(1.50000)
	if IsInArea == true
		if PlayerRef.isinlocation(CityAlias.getLocation()) && self.GetOwningQuest().GetStage() == 10 ; Reddit BugFix #9
			if PlayerRef.getworldspace() == RiftenMarker.getreference().getworldspace()
				CWS.CWOSendForPlayer.setstage(30)
				self.UnRegisterForUpdate()
			elseIf PlayerRef.getworldspace() == MarkarthMarker.getreference().getworldspace()
				CWS.CWOSendForPlayer.setstage(30)
				self.UnRegisterForUpdate()
			elseIf PlayerRef.getworldspace() == WhiterunMarker.getreference().getworldspace()
				CWS.CWOSendForPlayer.setstage(30)
				self.UnRegisterForUpdate()
			endIf
		endIf
	endIf
endFunction

; Skipped compiler generated GetState

function OnInit()

	CWOMarkerLocation = CityAlias.getLocation()
	IsInArea = false
	if CWOMarkerLocation == CWS.RiftenLocation
		CWOMarker = RiftenMarker.getreference()
	elseIf CWOMarkerLocation == CWS.MarkarthLocation
		CWOMarker = MarkarthMarker.getreference()
	elseIf CWOMarkerLocation == CWS.WhiterunLocation
		CWOMarker = WhiterunMarker.getreference()
	endIf
	self.RegisterForSingleUpdate(10 as Float)
endFunction

; Skipped compiler generated GotoState
