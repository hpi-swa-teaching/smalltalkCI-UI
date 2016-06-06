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
	
	self baseline: [ nil ].
	self configuration: [ nil ].
	self resetUsedPlatforms.
	self package: ''.
	
	self changed: #baseline.
	self changed: #configuration .
		
	self loadingSpecs: newLoadSpec.
		
	"self addSpecDialog delete"