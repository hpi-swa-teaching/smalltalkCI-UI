utils
loadLoadingSpecs
	| selectedLoadSpec |
	self refactoringNote: 'Entweder tut loadingSpecsCollection wirklich nichts oder ich werde langsam bescheuert beim Refactoring Notizen schreiben.'.
	selectedLoadSpec := self loadingSpecs at: self loadingSpecsIndex.
	self 
		baseline: selectedLoadSpec baseline;
		configuration: selectedLoadSpec configuration;
		package: selectedLoadSpec repository;
		projectName: (self loadingSpecsNames at: self loadingSpecsIndex);
		loadUsedPlatforms: OrderedCollection new;
		loadUsedPlatforms: selectedLoadSpec platforms