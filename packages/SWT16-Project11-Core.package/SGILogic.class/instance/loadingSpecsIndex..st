accessing
loadingSpecsIndex: anObject
	(anObject == 0)
	ifTrue: [loadingSpecsIndex := 1]
	ifFalse: [loadingSpecsIndex := anObject].
	self loadLoadingSpecs