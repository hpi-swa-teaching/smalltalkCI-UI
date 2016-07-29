button-actions
addSpecButtonAction
	| newLoadSpec name |
	newLoadSpec := SCIMetacelloLoadSpec new.
	name := self projectName.
	newLoadSpec
		baseline: self baseline;
		configuration: self configuration;
		directory: self path;
		platforms: self loadUsedPlatforms;
		repository: self package.
	self 
		resetInstanceVariables;
		addLoadingSpec: newLoadSpec with: name;
		changed: #includedTestsNames