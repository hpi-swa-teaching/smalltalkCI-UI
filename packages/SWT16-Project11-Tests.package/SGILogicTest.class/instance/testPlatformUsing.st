testing
testPlatformUsing
	| logicObject |
	logicObject := self setup
		useSqueakPlatform: true;
		usePharoPlatform: true;
		useGemStonePlatform: true.
	self 
		assert: logicObject useSqueakPlatform  = true;
		assert: logicObject usePharoPlatform = true;
		assert: logicObject useGemStonePlatform = true
	
	