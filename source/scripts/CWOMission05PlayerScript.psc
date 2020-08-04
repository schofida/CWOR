scriptName CWOMission05PlayerScript extends ReferenceAlias

;-- Properties --------------------------------------
ReferenceAlias property EnemyfieldCO auto
actor property Player auto

;-- Variables ---------------------------------------
actor Target

;-- Functions ---------------------------------------

function OnInit()

	Target as objectreference == EnemyfieldCO.GetReference()
	self.RegisterforsingleUpdate(2.00000)
endFunction

function OnUpdate()

	if self.GetowningQuest().GetStage() == 10 && Player.IsDetectedBy(Target)
		self.GetowningQuest().Setstage(20)
	endIf
	if self.GetowningQuest().GetStage() == 5 && Player.Getdistance(Target as objectreference) < 5000 as Float
		self.GetowningQuest().Setstage(10)
	endIf
	if self.GetowningQuest().GetStage() == 20 && Player.Getdistance(Target as objectreference) < 5000 as Float
		self.GetowningQuest().Setstage(201)
	endIf
	if self.GetowningQuest().GetStage() < 20
		self.RegisterforsingleUpdate(1.00000)
	else
		self.RegisterforsingleUpdate(2.00000)
	endIf
endFunction

; Skipped compiler generated GotoState

; Skipped compiler generated GetState
