scriptName CWOSABETME3Monitor extends ReferenceAlias

;-- Properties --------------------------------------
musictype property MUSSpecialDeath auto
imagespacemodifier property pDoubleVision auto
globalvariable property CWPercentPoolRemainingAttacker auto
faction property CWOtemporaryAllies auto
idle property pIdleReset auto
idle property pGetUp auto
cwscript property CWS auto
sound property pQSTTG05ArrowKnockOut2D auto
globalvariable property CWPercentPoolRemainingDefender auto
quest property CWFinale auto
spell property CWOSABETME3Ability auto
quest property CWAttackCity auto
cwfinalescript property CWf auto
ObjectReference property pTG05ArrowHitRef auto
quest property WerewolfQuest auto
musictype property MUSCombatCivilWar auto
actor property PlayerRef auto
ObjectReference property pTG05TransitionAudio auto
ObjectReference property TG05UnconsciousAudioRef auto
imagespacemodifier property pStrikeandFall auto
idle property pKnockdown auto

;-- Variables ---------------------------------------
Bool WeBeImperials
Float WhenDoIFall = 0.0800000
ObjectReference WhereweGoinTo
Bool WeBeSons
Bool ThisIsFinale
Bool DisableIt
Location WhereAreWe
Bool DidWeFall = false
Float TotalHealth
Float HealthPercentage

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function OnUpdate()

	if CWS.CWSiegeS.IsRunning() || CWS.CWFortSiegeCapital.IsRunning() || CWS.CWFortSiegeFort.IsRunning()
		
	else
		DisableIt = true
		self.GetOwningQuest().Stop()
		return 
	endIf
	if DisableIt == false
		HealthPercentage = PlayerRef.getactorvaluepercentage("Health")
		if HealthPercentage < WhenDoIFall
			if WerewolfQuest.IsRunning()
				(WerewolfQuest as playerwerewolfchangescript).ShiftBack()
			endIf
			pStrikeandFall.Apply(1.00000)
			game.DisablePlayerControls(true, true, true, true, true, true, true, false, 0)
			PlayerRef.DamageAv("Health", 99999 as Float)
			PlayerRef.SetUnconscious(true)
			;if ThisIsFinale
			;	if DidWeFall
			;		MUSCombatCivilWar.Remove()
			;		MUSSpecialDeath.Add()
			;		CWS.CWOStillABetterEndingObjective.FailAllObjectives()
			;		CWS.CWOStillABetterEndingObjective.Setstage(10)
			;		game.enablefasttravel(true)
			;		game.EnablePlayercontrols(true, true, true, true, true, true, true, true, 0)
			;		DisableIt = true
			;		self.GetOwningQuest().Stop()
			;		return 
			;	else
			;		DidWeFall = true
			;		MUSCombatCivilWar.Remove()
			;		MUSSpecialDeath.Add()
			;		utility.wait(26 as Float)
			;		CWS.CWSiegeS.Setstage(60)
			;		game.enablefasttravel(true)
			;		PlayerRef.moveto(WhereweGoinTo, 0.000000, 0.000000, 0.000000, true)
			;		CWf.PlayerEnteredCastle()
			;		pStrikeandFall.Remove()
			;		utility.wait(10 as Float)
			;		if CWS.PlayerAllegiance == CWS.iImperials
			;			WhereweGoinTo = CWS.UlfricRef as ObjectReference
			;			CWS.PlayerAllegiance = 2
			;			PlayerRef.removefromfaction(CWS.CWImperialFactionNPC)
			;			PlayerRef.addtofaction(CWS.CWSonsFactionNPC)
			;			PlayerRef.addtofaction(CWOtemporaryAllies)
			;			CWS.GeneralTulliusRef.addtofaction(CWOtemporaryAllies)
			;			CWS.Rikke.GetActorRef().addtofaction(CWOtemporaryAllies)
			;		elseIf CWS.PlayerAllegiance == CWS.iSons
			;			WhereweGoinTo = CWS.GeneralTulliusRef as ObjectReference
			;			CWS.PlayerAllegiance = 1
			;			PlayerRef.removefromfaction(CWS.CWSonsFactionNPC)
			;			PlayerRef.addtofaction(CWS.CWImperialFactionNPC)
			;			PlayerRef.addtofaction(CWOtemporaryAllies)
			;			CWS.UlfricRef.addtofaction(CWOtemporaryAllies)
			;			CWS.Galmar.GetActorRef().addtofaction(CWOtemporaryAllies)
			;		endIf
			;	endIf
			;else
				DidWeFall = true
				MUSCombatCivilWar.Remove()
				utility.wait(20 as Float)
				game.enablefasttravel(true)
				utility.wait(2 as Float)
				PlayerRef.moveto(WhereweGoinTo, 0.000000, 0.000000, 0.000000, true)
				utility.wait(2 as Float)
				if CWS.CWSiegeS.IsRunning() && CWS.CWSiegeS.GetStage() < 50 && CWS.CWOStillABetterEndingGlobal.GetValue() as Int < 1 ;schofida - siege and capital are both running in final siege. Have capital take care of it
					if CWPercentPoolRemainingAttacker.GetValueInt() > CWPercentPoolRemainingDefender.GetValueInt()
						CWS.CWSiegeS.Setstage(50)
						CWAttackCity.Setstage(50)
					else
						CWS.CWSiegeS.Setstage(200)
					endIf
				elseIf CWS.CWFortSiegeCapital.IsRunning() && CWS.CWFortSiegeCapital.GetStage() < 1000
					if CWPercentPoolRemainingAttacker.GetValueInt() > CWPercentPoolRemainingDefender.GetValueInt()
						CWS.CWFortSiegeCapital.Setstage(1000)
					else
						CWS.CWFortSiegeCapital.Setstage(2000)
					endIf
				elseIf CWS.CWFortSiegeFort.IsRunning() && CWS.CWFortSiegeFort.GetStage() < 950
					if CWPercentPoolRemainingAttacker.GetValueInt() > CWPercentPoolRemainingDefender.GetValueInt()
						CWS.CWFortSiegeFort.Setstage(1000)
					else
						CWS.CWFortSiegeFort.Setstage(2000)
					endIf
				endIf
				utility.wait(3 as Float)
				game.EnablePlayercontrols(true, true, true, true, true, true, true, true, 0)
				game.DisablePlayerControls(true, true, false, false, false, true, true, false, 0)
				game.GetPlayer().SetUnconscious(false)
				game.GetPlayer().RestoreAv("Health", 9999 as Float)
				game.GetPlayer().PlayIdle(pIdleReset)
				utility.wait(5 as Float)
				game.EnablePlayercontrols(true, true, true, true, true, true, true, true, 0)
				utility.wait(1.50000)
				game.EnablePlayercontrols(true, true, true, true, true, true, true, true, 0)
			;endIf
		endIf
		if DidWeFall
			;if ThisIsFinale
			;	self.RegisterForSingleUpdate(0.250000)
			;else
				self.GetOwningQuest().Stop()
			;endIf
		else
			self.RegisterForSingleUpdate(0.250000)
		endIf
	else
		self.GetOwningQuest().Stop()
	endIf
endFunction

function OnInit()

	if CWS.CWSiegeS.IsRunning() || CWS.CWFortSiegeCapital.IsRunning() || CWS.CWFortSiegeFort.IsRunning()
		self.FigureItOut()
		;if CWS.CWOStillABetterEndingGlobal.GetValue() as Int == 1
		;	if CWS.PlayerAllegiance == CWS.iImperials
		;		WhereweGoinTo = CWS.UlfricRef as ObjectReference
		;		ThisIsFinale = true
		;		MUSCombatCivilWar.Add()
		;		PlayerRef.removefromfaction(CWS.CWImperialFactionNPC)
		;		PlayerRef.addtofaction(CWS.CWSonsFactionNPC)
		;	elseIf CWS.PlayerAllegiance == CWS.iSons
		;		WhereweGoinTo = CWS.GeneralTulliusRef as ObjectReference
		;		ThisIsFinale = true
		;		MUSCombatCivilWar.Add()
		;		PlayerRef.removefromfaction(CWS.CWSonsFactionNPC)
		;		PlayerRef.addtofaction(CWS.CWImperialFactionNPC)
		;	endIf
		;	CWS.CWOStillABetterEndingObjective.SetObjectiveDisplayed(10, true, false)
		;endIf
		if ThisIsFinale
			WhenDoIFall = 0.980000
		endIf
		self.RegisterForSingleUpdate(0.250000)
	else
		self.GetOwningQuest().Stop()
	endIf
endFunction

function FigureItOut()

	HealthPercentage = PlayerRef.getactorvaluepercentage("Health")
	if CWS.PlayerAllegiance == CWS.iImperials
		if PlayerRef.IsInLocation(CWS.EastmarchHoldLocation)
			;WhereweGoinTo = CWS.UlfricRef as ObjectReference
			;if CWS.CWOStillABetterEndingGlobal.GetValue() as Int == 1
			;	ThisIsFinale = true
			;else
			;	DisableIt = true
			;endIf
			if CWS.CWFortSiegeFort.IsRunning() ; Final fort siege running but its just a fort battle. Make it loseable
				WhereweGoinTo = CWs.MilitaryCampWinterholdImperialMapMarker
			Else
				DisableIt = true ; schofida - Final attack siege. Unloseable
			endif
		elseIf PlayerRef.IsInLocation(CWS.HaafingarHoldLocation)
			;WhereweGoinTo = CWS.GeneralTulliusRef as ObjectReference
			;if CWS.CWOStillABetterEndingGlobal.GetValue() as Int == 1
			;	ThisIsFinale = true
			;else
			;	DisableIt = true
			;endIf
			WhereweGoinTo = CWs.MilitaryCampHjaalmarchImperialMapMarker ; schofida - final scene no longer occurs for losing battle
		elseIf PlayerRef.IsInLocation(CWS.HjaalmarchHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampReachImperialMapMarker		; schofida Edit
		elseIf PlayerRef.IsInLocation(CWS.WhiterunHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampPaleImperialMapMarker		; schofida Edit
		elseIf PlayerRef.IsInLocation(CWS.ReachHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampFalkreathImperialMapMarker		; schofida Edit
		elseIf PlayerRef.IsInLocation(CWS.RiftHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampWinterholdImperialMapMarker		; schofida Edit
		elseIf PlayerRef.IsInLocation(CWS.FalkreathHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampWhiterunImperialMapMarker		; schofida Edit
		elseIf PlayerRef.IsInLocation(CWS.PaleHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampRiftImperialMapMarker		; schofida Edit
		elseIf PlayerRef.IsInLocation(CWS.WinterholdHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampEastmarchImperialMapMarker		; schofida Edit
		;elseIf PlayerRef.IsInLocation(CWS.EastmarchHoldLocation)			; schofida Edit
		;	DisableIt = true							; schofida Edit
		else
			DisableIt = true
		endIf
	elseIf CWS.PlayerAllegiance == CWS.iSons
		if PlayerRef.IsInLocation(CWS.EastmarchHoldLocation)
			;WhereweGoinTo = CWS.Galmar.GetActorReference() as ObjectReference
			;if CWS.CWOStillABetterEndingGlobal.GetValue() as Int == 1
			;	ThisIsFinale = true
			;else
			;	DisableIt = true
			;endIf
			WhereweGoinTo = CWs.MilitaryCampWinterholdSonsMapMarker ; schofida - final scene no longer occurs for losing battle
		elseIf PlayerRef.IsInLocation(CWS.HaafingarHoldLocation)
			;WhereweGoinTo = CWS.GeneralTulliusRef as ObjectReference
			;if CWS.CWOStillABetterEndingGlobal.GetValue() as Int == 1
			;	ThisIsFinale = true
			;else
			;	DisableIt = true
			;endIf
			if CWS.CWFortSiegeFort.IsRunning() ; Final fort siege running. Make it loseable
				WhereweGoinTo = CWs.MilitaryCampHjaalmarchSonsMapMarker
			Else
				DisableIt = true ; schofida - Final attack siege. Unloseable
			endif
		elseIf PlayerRef.IsInLocation(CWS.WinterholdHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampRiftSonsMapMarker		; schofida Edit
		elseIf PlayerRef.IsInLocation(CWS.WhiterunHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampFalkreathSonsMapMarker		; schofida Edit
		elseIf PlayerRef.IsInLocation(CWS.PaleHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampWhiterunSonsMapMarker		; schofida Edit
		elseIf PlayerRef.IsInLocation(CWS.FalkreathHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampReachSonsMapMarker		; schofida Edit
		elseIf PlayerRef.IsInLocation(CWS.RiftHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampPaleSonsMapMarker		; schofida Edit
		elseIf PlayerRef.IsInLocation(CWS.ReachHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampHjaalmarchSonsMapMarker		; Reddit BugFix #12
		elseIf PlayerRef.IsInLocation(CWS.HjaalmarchHoldLocation)
			WhereweGoinTo = CWS.MilitaryCampHaafingarSonsMapMarker		; Reddit BugFix #12
		;elseIf PlayerRef.IsInLocation(CWS.HaafingarHoldLocation)		; schofida Edit
		;	DisableIt = true						; schofida Edit
		else
			DisableIt = true
		endIf
	endIf
endFunction
