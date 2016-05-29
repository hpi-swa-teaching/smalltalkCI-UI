accessing
toggleUsePharoPlatform

	self usePharoPlatform == true
		ifTrue: [self usePharoPlatform: false]
		ifFalse: [self usePharoPlatform: true].
	^ self usePharoPlatform.