button-actions
addSpecButtonAction
	| newLoadSpec name |
	newLoadSpec := SCIMetacelloLoadSpec new.
	name := self projectName.
	newLoadSpec
		baseline: self baseline;
		configuration: self configuration;
		directory: self path;
		platforms: self platforms;
		repository: self package.
	self
		baseline: [ nil ];
		configuration: [ nil ];
		projectName: '';
		resetUsedPlatforms;
		package: '';
		addLoadingSpec: newLoadSpec with: name.
	self changed: #includedTestsNames