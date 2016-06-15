button-actions
removeSpecButtonAction
	(self sgiModel loadingSpecs size = 1) ifTrue: 
		[self removeLastLoadSpecDialog].
	(self sgiModel loadingSpecs size > 1) ifTrue: 
		[self loadingSpecs removeAt: self sgiView loadingSpecsIndex.
		self changed: #loadingSpecs]