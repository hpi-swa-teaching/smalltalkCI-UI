accessing
toggleUseGemStonePlatform

	self useGemStonePlatform
		ifTrue: [self useGemStonePlatform: false]
		ifFalse: [self useGemStonePlatform: true].
	^ self useGemStonePlatform.