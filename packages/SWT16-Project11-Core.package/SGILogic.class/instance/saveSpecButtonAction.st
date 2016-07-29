button-actions
saveSpecButtonAction
	| selectedLoadSpec |
	selectedLoadSpec := self loadingSpecs at: self loadingSpecsIndex.
	selectedLoadSpec
		baseline: self baseline;
		configuration: self configuration;
		directory: self path;
		platforms: self writeUsedPlatforms;
		repository: self package.
	self replaceLoadingSpec: selectedLoadSpec with: (self projectName) at: (self loadingSpecsIndex)