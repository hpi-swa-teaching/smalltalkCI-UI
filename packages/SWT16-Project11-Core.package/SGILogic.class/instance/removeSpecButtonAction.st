button-actions
removeSpecButtonAction
	(self model loadingSpecs size = 1) ifTrue: 
		[self removeLastLoadSpecDialog].
	(self sgiModel loadingSpecs size > 1) ifTrue: 
		[self loadingSpecs removeAt: self view loadingSpecsIndex.
		self changed: #loadingSpecs]