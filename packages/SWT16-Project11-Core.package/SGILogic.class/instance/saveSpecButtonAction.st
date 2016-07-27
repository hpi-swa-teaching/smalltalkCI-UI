button-actions
saveSpecButtonAction
	| selectedLoadSpec name |
	selectedLoadSpec := self loadingSpecs at: self loadingSpecsIndex.
	name := self projectName.
	selectedLoadSpec
		baseline: self baseline;
		configuration: self configuration;
		directory: self path;
		platforms: self writeUsedPlatforms;
		repository: self package.
	self addLoadingSpec: selectedLoadSpec with: name replaceAt: self loadingSpecsIndex