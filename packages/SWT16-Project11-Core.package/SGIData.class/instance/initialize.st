initialize
initialize
	super initialize.
	self 
		fileName: self class defaultFileName;
		loadingSpecs: self class defaultLoadingSpecs;
		loadingSpecsNames: self class defaultLoadingSpecsNames;
		path: self class defaultPath;
		projectName: self class defaultProjectName;
		include: self class defaultIncluding;
		exclude: self class defaultExcluding