button-actions
acceptAddSpecDialogAction
	| newLoadSpec |
	newLoadSpec := SCIMetacelloLoadSpec new.
	
	newLoadSpec
		name: self projectName;
		baseline: self baseline;
		configuration: self configuration;
		directory: self path;
		platforms: self writeUsedPlatforms;
		repository: self package.
	
	self
		baseline: [ nil ];
		configuration: [ nil ];
		projectName: '';
		resetUsedPlatforms;
		package: '';
		addLoadingSpec: newLoadSpec