testing
testRemoveSpecButtonAction
	| logic |
	logic := self setup.
	logic addLoadingSpec: SCIMetacelloLoadSpec new with: 'name'.
	logic removeSpecButtonAction.
	self assert: logic loadingSpecs size = 1.
	logic removeSpecButtonAction.
	self assert: logic loadingSpecs size = 1