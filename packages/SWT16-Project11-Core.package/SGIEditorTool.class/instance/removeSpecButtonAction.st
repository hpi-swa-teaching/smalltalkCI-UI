user interface
removeSpecButtonAction
	(loadingSpecs size = 1) ifTrue: 
		[self removeLastLoadSpecDialog].
	(loadingSpecs size > 1) ifTrue: 
		[self loadingSpecs removeAt: loadingSpecsIndex.
		self changed: #loadingSpecs]