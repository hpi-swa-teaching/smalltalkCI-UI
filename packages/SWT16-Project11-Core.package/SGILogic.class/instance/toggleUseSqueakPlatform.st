accessing
toggleUseSqueakPlatform
	self useSqueakPlatform == true
		ifTrue: [useSqueakPlatform := false]
		ifFalse: [useSqueakPlatform := true]