utils
loadUsedPlatforms: anOrderedCollection 
	| platforms |
	platforms := anOrderedCollection.
	self 
		useSqueakPlatform: (platforms includes: self class squeakSymbol);
	 	usePharoPlatform: (platforms includes: self class pharoSymbol);
		useGemStonePlatform: (platforms includes: self class gemStoneSymbol)