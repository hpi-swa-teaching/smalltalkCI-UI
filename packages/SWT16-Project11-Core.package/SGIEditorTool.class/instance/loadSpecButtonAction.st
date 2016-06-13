user interface
loadSpecButtonAction
	| selectedLoadSpec loadingSpecsCollection |
	loadingSpecsCollection := OrderedCollection new.
	selectedLoadSpec :=  loadingSpecs at: loadingSpecsIndex.
	
	self baseline: selectedLoadSpec baseline.
	self configuration: selectedLoadSpec configuration.
	"self loadUsedPlatforms: selectedLoadSpec platforms."
	self package: selectedLoadSpec repository.
	
	self changed: #baseline.
	self changed: #configuration