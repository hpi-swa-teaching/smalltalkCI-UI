button-actions
removeSpecButtonAction
	(self loadingSpecs size > 1) ifTrue: 
		[self loadingSpecs removeAt: self loadingSpecsIndex.
		self changed: #loadingSpecs]