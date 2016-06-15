utils
acceptAddSpecDialogAction
	| newLoadSpec |
	newLoadSpec := SCIMetacelloLoadSpec new.
	
	newLoadSpec
		baseline: self sgiModel baseline;
		configuration: self sgiModel configuration;
		directory: self sgiModel path;
		platforms: self writeUsedPlatforms;
		repository: self sgiModel package.
	
	self sgiModel baseline: [ nil ].
	self sgiModel configuration: [ nil ].
	self resetUsedPlatforms.
	self sgiModel package: ''.
	self sgiModel loadingSpecs: newLoadSpec.
		
	"self addSpecDialog delete"