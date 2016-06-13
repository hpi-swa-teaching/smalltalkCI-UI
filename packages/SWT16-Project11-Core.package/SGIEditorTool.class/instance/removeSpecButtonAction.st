user interface
removeSpecButtonAction
	"| help |
	self halt.
	help := loadingSpecsIndex. --> war für Bugtesting, weil manchmal (warum auch immer) der loadingSpecsIndex auf 0 gegangen ist"
	(loadingSpecs size >= 1) ifTrue: 
		[self loadingSpecs removeAt: loadingSpecsIndex.
		self changed: #loadingSpecs]