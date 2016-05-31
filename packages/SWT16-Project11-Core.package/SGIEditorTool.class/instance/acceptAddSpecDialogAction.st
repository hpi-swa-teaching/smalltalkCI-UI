user interface
acceptAddSpecDialogAction
	| newLoadSpec loadingSpecsCollection |
	loadingSpecsCollection := OrderedCollection new.	"with: name aus Eingabe (später)"
	newLoadSpec := SCIMetacelloLoadSpec new.
	
	newLoadSpec
		baseline: self baseline;
		configuration: self configuration;
		directory: self path;
		"load: "
		"onWarningLog: " 
		"originalAuthor: Brauchen wir das?" 
		platforms: self writeUsedPlatforms;
		repository: self package.
		"version: Wodurch bestimmt sich die Version?"
	
		"loadingSpecsCollection add: newLoadSpec.
		self loadingSpecs: loadingSpecsCollection."
		loadingSpecsCollection add: newLoadSpec.
		self loadingSpecs: self loadingSpecs, loadingSpecsCollection.
		
		"(self loadingSpecs at: self loadingSpecs size) 
			ifNil: [self loadingSpecs at: self loadingSpecs size put: newLoadSpec]
			ifNotNil: [loadingSpecsCollection := Array new: 1.
				loadingSpecsCollection at: 1 put: newLoadSpec.
				self loadingSpecs: self loadingSpecs, loadingSpecsCollection]"
	
	"self addSpecDialog delete"