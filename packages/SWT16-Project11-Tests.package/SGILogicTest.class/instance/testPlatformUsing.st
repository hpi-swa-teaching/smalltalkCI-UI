testing
testPlatformUsing
	| logicObject |
	logicObject := self setup.
	logicObject useSqueakPlatform: true.
	logicObject usePharoPlatform: true.
	logicObject useGemStonePlatform: true.
	self 
		assert: logicObject useSqueakPlatform  = true;
		assert: logicObject usePharoPlatform = true;
		assert: logicObject useGemStonePlatform = true
	
	