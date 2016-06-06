accessing
toggleUseSqueakPlatform
	self useSqueakPlatform == true
		ifTrue: [self useSqueakPlatform: false]
		ifFalse: [self useSqueakPlatform: true].
	^ self useSqueakPlatform