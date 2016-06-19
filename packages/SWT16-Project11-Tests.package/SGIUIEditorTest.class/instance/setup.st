testing
setup
	| editor |
	editor := SGIUIEditor new.
	editor logic: (SGILogic initializeWithModel: SGIData new).
	^ editor