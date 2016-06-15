testing
testRemoveLastLoadSpecDialog
	| builder logic panel |
	builder := ToolBuilder default.
	logic := self setup.
	"todo!!"
	"panel := logic removeLastLoadSpecDialog.
	self 
		assert: (panel notNil);
		assert: (panel children size = 1);
		assert: ((panel children at: 1) class = PluggableButtonSpec).
	logic deleteRemoveLastLoadSpecDialog."