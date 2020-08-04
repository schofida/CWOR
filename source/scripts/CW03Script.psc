scriptName CW03Script extends Quest conditional

;-- Properties --------------------------------------
miscobject property CWDocumentsImperial auto
weapon property SteelWarAxe auto
scene property MQ104OutroScene auto
referencealias property AxeUlfrics auto
actor property CWFieldCOSonsWhiterunCamp auto
actorbase property BalgruufTheGreater auto
scene property CW03SiegeScene auto
referencealias property MessageAlias auto
globalvariable property CWOCurrentHold auto
referencealias property MessageFromTullius auto
scene property CW03Scene auto
referencealias property AxeHrongars auto
scene property CW03ToWarScene auto
cwscript property CWs auto
referencealias property AxeBalgruufs auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

ObjectReference function CreateAndGiveMessageToPlayer(Form ThingToCreate, referencealias AliasToForceIntoThatHasName)

	ObjectReference PlayerRef = game.GetPlayer() as ObjectReference
	ObjectReference MessageRef = PlayerRef.PlaceAtMe(ThingToCreate, 1, false, false)
	MessageAlias.ForceRefTo(MessageRef)
	AliasToForceIntoThatHasName.ForceRefTo(MessageRef)
	PlayerRef.AddItem(MessageRef as Form, 1, false)
endFunction

function StartWhiterunAttack()

	CWs.CreateMissions(CWs.GetMyCurrentHoldLocation(CWFieldCOSonsWhiterunCamp as ObjectReference), CWFieldCOSonsWhiterunCamp as ObjectReference, true, none)
endFunction

function GivePlayerMessageToWhiterun()

	ObjectReference MessageRef
	ObjectReference PlayerRef = game.GetPlayer() as ObjectReference
	if CWs.PlayerAllegiance == CWs.iImperials
		self.CreateAndGiveMessageToPlayer(CWDocumentsImperial as Form, MessageFromTullius)
	elseIf CWs.PlayerAllegiance == CWs.iSons
		self.CreateAndGiveMessageToPlayer(SteelWarAxe as Form, AxeUlfrics)
	endIf
endFunction

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

function GivePlayerMessageToUlfric()

	if CWs.PlayerAllegiance == CWs.iImperials
		if BalgruufTheGreater.GetDeadCount() == 0
			self.CreateAndGiveMessageToPlayer(SteelWarAxe as Form, AxeBalgruufs)
		else
			self.CreateAndGiveMessageToPlayer(SteelWarAxe as Form, AxeHrongars)
		endIf
	elseIf CWs.PlayerAllegiance == CWs.iSons
		self.CreateAndGiveMessageToPlayer(SteelWarAxe as Form, AxeUlfrics)
	endIf
endFunction

function JarlTakesMessage()

	ObjectReference MessageRef = MessageAlias.GetReference()
	game.GetPlayer().RemoveItem(MessageRef as Form, 1, false, none)
endFunction
