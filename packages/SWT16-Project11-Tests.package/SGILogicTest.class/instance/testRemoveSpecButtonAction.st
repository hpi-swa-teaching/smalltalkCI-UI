testing
testRemoveSpecButtonAction
	|  logic |
	logic := self setup.
	logic addLoadingSpec: SCIMetacelloLoadSpec new.
	logic addLoadingSpec: SCIMetacelloLoadSpec new.
	logic removeSpecButtonAction.
	self assert: logic loadingSpecs size = 1.
	
	"last loading spec should not be removed"
	logic removeSpecButtonAction.
	self assert: logic loadingSpecs size = 1.
	
	