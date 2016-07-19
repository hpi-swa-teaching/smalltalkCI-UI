testing
testRemoveSpecButtonAction
	|  logic |
	logic := self setup.
	logic addLoadingSpec: SCIMetacelloLoadSpec new with: 'name'.
	logic removeSpecButtonAction.
	self assert: logic loadingSpecs size = 1.
	
	"last loading spec should not be removed"
	logic removeSpecButtonAction.
	self assert: logic loadingSpecs size = 1.
	
	