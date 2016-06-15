button-actions
acceptAddSpecDialogAction
	| newLoadSpec |
	newLoadSpec := SCIMetacelloLoadSpec new.
	
	newLoadSpec
		baseline: self baseline;
		configuration: self configuration;
		directory: self path;
		platforms: self writeUsedPlatforms;
		repository: self package.
	
	self baseline: [ nil ].
	self configuration: [ nil ].
	self resetUsedPlatforms.
	self package: ''.
	self loadingSpecs: newLoadSpec.
		
	"self addSpecDialog delete"