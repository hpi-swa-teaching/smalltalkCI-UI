initialize
initialize
	super initialize.
	self model: SGIModel new;
		logic: (SGILogic initializeWithModel: self model);
		view: (SGIEditorView initializeWithModel: self model andLogic: self logic).