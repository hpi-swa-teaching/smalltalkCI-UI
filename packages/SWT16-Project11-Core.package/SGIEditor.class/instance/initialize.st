initialize
initialize
	super initialize.
	self
		data: SGIData new;
		logic: (SGILogic initializeWithModel: self data);
		uiEditor: (SGIUIEditor initializeWithLogic: self logic).
	self logic addDependent: self uiEditor