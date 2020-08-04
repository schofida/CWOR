scriptName QF__02015BA4 extends Quest hidden

;-- Properties --------------------------------------
locationalias property Alias_Hold auto
cwscript property CWS auto
referencealias property Alias_Player auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function Fragment_2()

	CWS.CWOStartCapital(Alias_Hold.GetLocation(), true); Reddit Bugfix #11
	utility.wait(5 as Float)
	if CWS.CWsiegeS.IsRunning()
		CWS.CWsiegeS.SetStage(1)
	elseIf CWS.CWFortSiegeCapital.IsRunning()
		CWS.CWFortSiegeCapital.SetStage(10)
	endIf
	self.stop()
endFunction
