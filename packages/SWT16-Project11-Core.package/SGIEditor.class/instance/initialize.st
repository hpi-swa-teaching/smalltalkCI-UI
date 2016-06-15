initialize
initialize
	super initialize.
	self model: SGIData new;
		logic: (SGILogic initializeWithModel: self model);
		view: (SGIUIEditor initializeWithLogic: self logic)