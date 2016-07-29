testing
testSetup
	| dataObject |
	dataObject := self setup.
	dataObject
		baseline: self class defaultBaseline;
		configuration: self class defaultConfiguration;
		fileName: self class defaultFileName;
		loadingSpecs: self class defaultLoadingSpecs;
		package: self class defaultPackage;
		path: self class defaultPath;
		platforms: self class defaultPlatforms;
		projectName: self class defaultProjectName;
		exclude: self class defaultIncludingAndExcluding;
		include: self class defaultIncludingAndExcluding.
	self
		assert: dataObject notNil;
		assert: dataObject baseline = self class defaultBaseline;
		assert: dataObject configuration = self class defaultConfiguration;
		assert: dataObject fileName = self class defaultFileName;
		assert: dataObject loadingSpecs = self class defaultLoadingSpecs;
		assert: dataObject package = self class defaultPackage;
		assert: dataObject path = self class defaultPath;
		assert: dataObject platforms = self class defaultPlatforms;
		assert: dataObject projectName = self class defaultProjectName;
		assert: dataObject exclude = self class defaultIncludingAndExcluding;
		assert: dataObject include = self class defaultIncludingAndExcluding