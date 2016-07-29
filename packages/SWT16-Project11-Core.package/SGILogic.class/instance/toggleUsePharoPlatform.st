accessing
toggleUsePharoPlatform
	self usePharoPlatform == true ifTrue: [ usePharoPlatform := false ] ifFalse: [ usePharoPlatform := true ]