user interface
acceptAddSpecDialogAction
	| newLoadSpec |
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
	
		self loadingSpecs: newLoadSpec.
		
	"self addSpecDialog delete"