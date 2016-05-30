user interface
acceptAddSpecDialogAction

	| newLoadSpec loadingSpecsCollection |
	loadingSpecsCollection := OrderedCollection new.
	newLoadSpec := SCIMetacelloLoadSpec new.
	
	newLoadSpec
		baseline: self baseline;
		configuration: self configuration;
		directory: self path;
		"load: "
		"onWarningLog: " 
		"originalAuthor: Brauchen wir das?" 
		platforms: self usedPlatforms;
		repository: self package.
		"version: Wodurch bestimmt sich die Version?"
	
		loadingSpecsCollection add: newLoadSpec.
		self loadingSpecs: loadingSpecsCollection.
		"self loadingSpecs add: newLoadSpec. --> Warum geht das nicht?"
	
	self addSpecDialog delete