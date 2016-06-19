testing
setup 
	| model |
	model := SGIData new.
	^ SGIUI new
		model:  model;
		logic: (SGILogic initializeWithModel: model);
		window: (ToolBuilder default open: SystemWindow new)