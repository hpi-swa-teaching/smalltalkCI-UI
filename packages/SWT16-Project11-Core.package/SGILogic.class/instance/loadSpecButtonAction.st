button-actions
loadSpecButtonAction
	| selectedLoadSpec loadingSpecsCollection testIndex |
	loadingSpecsCollection := SCIMetacelloLoadSpec new.
	testIndex := self loadingSpecsIndex.
	(self loadingSpecs size >= self loadingSpecsIndex)
		ifTrue: [
			selectedLoadSpec := self loadingSpecs at: self loadingSpecsIndex.
			self baseline: selectedLoadSpec baseline.
			self configuration: selectedLoadSpec configuration.
			self package: selectedLoadSpec repository.
			self projectName: (self loadingSpecsNames at: self loadingSpecsIndex) ]
		ifFalse: [ self inform: 'No loadSpec selected!' ]