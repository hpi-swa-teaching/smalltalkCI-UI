initialize
initialize
	self model: SGIModel new;
		logic: SGILogic new;
		viewList: OrderedCollection new.
	self viewList add: (SGIEditorView initializeWithModel: self model andLogic: self logic).