testing
testPlatformChoosing
	| logicObject |
	logicObject := self setup.
	self 
		shouldnt: (logicObject toggleUseSqueakPlatform) raise: Error;
		shouldnt: (logicObject toggleUsePharoPlatform) raise: Error;
		shouldnt: (logicObject toggleUseGemStonePlatform) raise: Error;
		assert: logicObject useSqueakPlatform  = true;
		assert: logicObject usePharoPlatform = true;
		assert: logicObject useGemStonePlatform = true.
	^ logicObject
	