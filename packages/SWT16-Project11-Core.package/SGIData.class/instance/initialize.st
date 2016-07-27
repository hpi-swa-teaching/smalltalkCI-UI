initialize
initialize
	super initialize.
	self
		exclude: self class defaultIncludingAndExcluding;
		fileName: self class defaultFileName;
		include: self class defaultIncludingAndExcluding;
		loadingSpecs: self class defaultLoadingSpecs;
		loadingSpecsNames: self class defaultLoadingSpecsNames;
		path: self class defaultPath;
		projectName: self class defaultProjectName
