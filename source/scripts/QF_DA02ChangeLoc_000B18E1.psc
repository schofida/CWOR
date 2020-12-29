;/ Decompiled by Champollion V1.0.1
Source   : QF_DA02ChangeLoc_000B18E1.psc
Modified : 2014-03-22 22:50:43
Compiled : 2014-03-22 22:50:44
User     : Slugman
Computer : SLUGMAN-PC
/;
scriptName QF_DA02ChangeLoc_000B18E1 extends Quest hidden

;-- Properties --------------------------------------
referencealias property Alias_GuardB auto
referencealias property Alias_GuardA auto
referencealias property Alias_ElisifMarker auto
referencealias property Alias_GuardD auto
referencealias property Alias_GuardC auto
referencealias property Alias_MarkerD auto
referencealias property Alias_Elisif auto
referencealias property Alias_MarkerC auto
referencealias property Alias_MarkerA auto
referencealias property Alias_MarkerB auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function Fragment_0()

	Quest __temp = self as Quest
	da02changelocscript kmyQuest = __temp as da02changelocscript
	debug.messagebox("DA02ChangeLoc")
	kmyQuest.DA02GuardA.ForceRefTo(Alias_GuardA.GetReference())
	kmyQuest.DA02GuardA.TryToMoveTo(Alias_MarkerA.GetReference())
	kmyQuest.DA02GuardB.ForceRefTo(Alias_GuardB.GetReference())
	kmyQuest.DA02GuardB.TryToMoveTo(Alias_MarkerB.GetReference())
	kmyQuest.DA02GuardC.ForceRefTo(Alias_GuardC.GetReference())
	kmyQuest.DA02GuardC.TryToMoveTo(Alias_MarkerC.GetReference())
	kmyQuest.DA02GuardD.ForceRefTo(Alias_GuardD.GetReference())
	kmyQuest.DA02GuardD.TryToMoveTo(Alias_MarkerD.GetReference())
	Alias_Elisif.TryToMoveTo(Alias_ElisifMarker.GetReference())
	self.stop()
endFunction
