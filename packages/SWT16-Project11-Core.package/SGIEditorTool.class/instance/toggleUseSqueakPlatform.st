accessing
toggleUseSqueakPlatform

	self useSqueakPlatform 
		ifTrue: [self useSqueakPlatform: false]
		ifFalse: [self useSqueakPlatform: true].
	^ self useSqueakPlatform.