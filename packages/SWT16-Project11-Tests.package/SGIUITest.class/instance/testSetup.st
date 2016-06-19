testing
testSetup 
	| uiObject |
	self 
		shouldnt: (uiObject := self setup) raise: Error;
		assert: uiObject logic notNil;
		assert: uiObject model notNil;
		assert: uiObject window notNil.
	uiObject window delete