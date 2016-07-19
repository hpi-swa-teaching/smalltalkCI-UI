utils
loadLoadingSpecs
	| selectedLoadSpec loadingSpecsCollection |
	loadingSpecsCollection := SCIMetacelloLoadSpec new.
	selectedLoadSpec := self loadingSpecs at: self loadingSpecsIndex.
	self baseline: selectedLoadSpec baseline.
	self configuration: selectedLoadSpec configuration.
	self package: selectedLoadSpec repository.
	self projectName: (self loadingSpecsNames at:  self loadingSpecsIndex).
	self platforms: selectedLoadSpec platforms