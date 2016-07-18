button-actions
loadSpecButtonAction
	| selectedLoadSpec loadingSpecsCollection testIndex |
	loadingSpecsCollection := SCIMetacelloLoadSpec new.
	self halt.
	testIndex := self loadingSpecsIndex.	"remove later, added due to a bug"
	(testIndex == 0)
	ifTrue: [testIndex := 1].
	(self loadingSpecs size >= self loadingSpecsIndex) 
	ifTrue: [selectedLoadSpec := self loadingSpecs at: testIndex.
	
		self baseline: selectedLoadSpec baseline.
		self configuration: selectedLoadSpec configuration.
		self package: selectedLoadSpec repository.
		self projectName: (self loadingSpecsNames at: testIndex)]
	ifFalse: [self inform: 'No loadSpec selected!']