utils
loadLoadingSpecs
	| selectedLoadSpec |
	selectedLoadSpec := self loadingSpecs at: self loadingSpecsIndex.
	self 
		baseline: selectedLoadSpec baseline;
		configuration: selectedLoadSpec configuration;
		package: selectedLoadSpec repository;
		projectName: (self loadingSpecsNames at: self loadingSpecsIndex);
		loadUsedPlatforms: selectedLoadSpec platforms