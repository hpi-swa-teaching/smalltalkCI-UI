button-actions
loadSpecButtonAction
	| selectedLoadSpec loadingSpecsCollection |
	loadingSpecsCollection := OrderedCollection new.
	selectedLoadSpec := self loadingSpecs at: self loadingSpecsIndex.
	
	self baseline: selectedLoadSpec baseline.
	self configuration: selectedLoadSpec configuration.
	self package: selectedLoadSpec repository.