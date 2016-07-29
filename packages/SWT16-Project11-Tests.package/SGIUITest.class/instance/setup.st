testing
setup
	| model |
	model := SGIData new.
	^ SGIUI new
		logic: (SGILogic initializeWithModel: model);
		window: (ToolBuilder default open: SystemWindow new)