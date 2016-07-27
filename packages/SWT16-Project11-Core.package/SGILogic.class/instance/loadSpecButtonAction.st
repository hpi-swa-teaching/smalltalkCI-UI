button-actions
loadSpecButtonAction
	| selectedLoadSpec loadingSpecsCollection |
	self refactoringNote: 'Sollte die Methode nicht loadLoadSpecButtonAction heißen?'.
	loadingSpecsCollection := SCIMetacelloLoadSpec new.
	(self loadingSpecs size >= self loadingSpecsIndex)
		ifTrue: [
			selectedLoadSpec := self loadingSpecs at: self loadingSpecsIndex.
			self baseline: selectedLoadSpec baseline.
			self configuration: selectedLoadSpec configuration.
			self package: selectedLoadSpec repository.
			self projectName: (self loadingSpecsNames at: self loadingSpecsIndex) ]
		ifFalse: [ self inform: 'No loadSpec selected!' ]