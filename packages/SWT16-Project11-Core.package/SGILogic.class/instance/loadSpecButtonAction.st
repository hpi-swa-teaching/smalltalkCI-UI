button-actions
loadSpecButtonAction
	| selectedLoadSpec loadingSpecsCollection |
	loadingSpecsCollection := OrderedCollection new.
	selectedLoadSpec := self model loadingSpecs at: self view loadingSpecsIndex.
	
	self baseline: selectedLoadSpec baseline.
	self configuration: selectedLoadSpec configuration.
	"self loadUsedPlatforms: selectedLoadSpec platforms."
	self package: selectedLoadSpec repository.
	
	self changed: #baseline.
	self changed: #configuration