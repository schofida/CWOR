scriptName cwsiegebarricadescript extends ReferenceAlias

;-- Properties --------------------------------------
Bool property SetPathClear1 auto
{Should I set PathClear1 to 1? - Don't use with "SetPathClear2 or 3"}
globalvariable property CWPathClear2 auto
Bool property SetPathClear2 auto
{Should I set PathClear2 to 1? - Don't use with "SetPathClear1 or 3"}
Int property StageToSetWhenDestroyed auto
{What stage in CWSiege should I set when I'm destroyed}
Bool property SetPathClear3 auto
{Should I set PathClear3 to 1? - Don't use with "SetPathClear1 or 2"}
globalvariable property CWPathClear1 auto
globalvariable property CWPathClear3 auto
Int property OldStage = 3 auto
{The destruction stage that is before the stage you want to trigger at
- Default = 3}
Int property NewStage = 4 auto
{The destruction stage that you want the trigger to happen at
- Default = 4}

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

; Skipped compiler generated GotoState

; Skipped compiler generated GetState

function ClearGlobals()

	if CWPathClear1
		CWPathClear1.SetValue(0 as Float)
	endIf
	if CWPathClear2
		CWPathClear2.SetValue(0 as Float)
	endIf
	if CWPathClear3
		CWPathClear3.SetValue(0 as Float)
	endIf
endFunction

function OnDestructionStageChanged(Int aiOldStage, Int aiCurrentStage)
	; OCW 2.5.7 fix
	; if (aiOldStage == OldStage) && (aiCurrentStage == NewStage)
	if (aiCurrentStage == NewStage)
		self.GetOwningQuest().SetStage(StageToSetWhenDestroyed)
		if SetPathClear1 == true
			CWPathClear1.SetValue(1 as Float)
		endIf
		if SetPathClear2 == true
			CWPathClear2.SetValue(1 as Float)
		endIf
		if SetPathClear3 == true
			CWPathClear3.SetValue(1 as Float)
		endIf
	endIf
endFunction
