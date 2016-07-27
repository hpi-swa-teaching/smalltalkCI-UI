utils
resetUsedPlatforms
	self useSqueakPlatform: false.
	self usePharoPlatform: false.
	self useGemStonePlatform: false.
	self changed: #useSqueakPlatform.
	self changed: #usePharoPlatform.
	self changed: #useGemStonePlatform