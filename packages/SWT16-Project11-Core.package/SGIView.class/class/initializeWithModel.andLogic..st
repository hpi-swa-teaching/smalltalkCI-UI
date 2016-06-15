initialize
initializeWithModel: aModel andLogic: aLogic
	| view |
	view := self new
		model: aModel;
		logic: aLogic.
	^ ToolBuilder default open: view