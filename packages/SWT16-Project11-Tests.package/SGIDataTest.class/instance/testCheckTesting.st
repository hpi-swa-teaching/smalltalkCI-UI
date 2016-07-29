testing
testCheckTesting
	| object |
	object := self setup.
	self
		shouldnt: (object := object checkTesting: (object generateSmalltalkCISpecObject))
		raise: Error;
		assert: object notNil;
		assert: (object testing size = 0)