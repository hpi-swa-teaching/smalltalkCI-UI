accessing
toggleUsePharoPlatform

	self usePharoPlatform 
		ifTrue: [self usePharoPlatform: false]
		ifFalse: [self usePharoPlatform: true].
	^ self usePharoPlatform.