button-actions
loadSpecButtonAction
	| selectedLoadSpec loadingSpecsCollection |
	loadingSpecsCollection := OrderedCollection new.
	selectedLoadSpec := self sgiModel loadingSpecs at: self sgiView loadingSpecsIndex.
	
	self baseline: selectedLoadSpec baseline.
	self configuration: selectedLoadSpec configuration.
	"self loadUsedPlatforms: selectedLoadSpec platforms."
	self package: selectedLoadSpec repository.
	
	self changed: #baseline.
	self changed: #configuration