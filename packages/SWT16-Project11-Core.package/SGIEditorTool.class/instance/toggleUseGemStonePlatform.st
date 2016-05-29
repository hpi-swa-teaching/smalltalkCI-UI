accessing
toggleUseGemStonePlatform
	self useGemStonePlatform == true
		ifTrue: [self useGemStonePlatform: false]
		ifFalse: [self useGemStonePlatform: true].
	^ self useGemStonePlatform