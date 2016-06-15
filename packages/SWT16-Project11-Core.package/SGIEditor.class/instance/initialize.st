initialize
initialize
	super initialize.
	self model: SGIData new;
		logic: (SGILogic initializeWithModel: self model);
		view: (SGIUIEditor initializeWithModel: self model andLogic: self logic).
	self model addDependent: self view.