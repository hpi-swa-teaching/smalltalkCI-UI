utils
loadLoadingSpecs
	| selectedLoadSpec loadingSpecsCollection |
	self refactoringNote: 'Entweder tut loadingSpecsCollection wirklich nichts oder ich werde langsam bescheuert beim Refactoring Notizen schreiben.'.
	loadingSpecsCollection := SCIMetacelloLoadSpec new.
	selectedLoadSpec := self loadingSpecs at: self loadingSpecsIndex.
	self baseline: selectedLoadSpec baseline.
	self configuration: selectedLoadSpec configuration.
	self package: selectedLoadSpec repository.
	self projectName: (self loadingSpecsNames at: self loadingSpecsIndex).
	self platforms: selectedLoadSpec platforms