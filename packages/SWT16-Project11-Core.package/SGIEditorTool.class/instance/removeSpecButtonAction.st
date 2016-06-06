user interface
removeSpecButtonAction
	(loadingSpecs size >= 1) ifTrue: 
		[self loadingSpecs removeLast.	"TODO: Element an loadingSpecsIndex löschen"
		self changed: #loadingSpecs]
	"self loadingSpecs: []. ---> auch als Update möglich"
	"TODO: Updates auch in load - function einbauen"