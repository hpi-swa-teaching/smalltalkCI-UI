initialize
initializeWithLogic: aLogic
	| UI |
	UI := self new logic: aLogic.
	ToolBuilder default open: UI.
	^ UI