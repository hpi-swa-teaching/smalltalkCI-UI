user-interface
buildWith: builder
	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec 
		model: self;
		label: self class sgiLabel;
		extent: self class editorExtent;
		children: OrderedCollection new.
	windowSpec children 
		add: (self buildPathWith: builder);
		add: (self buildBaselineConfigChoseWith: builder);
		add: (self buildPackagePathWith: builder);
		add: (self buildPlatformChoseWith: builder);
		add: (self buildSaveAndCloseButtonWith: builder);
		add: (self buildLoadingSpecsWith: builder);
		add: (self buildStonInputFieldWith: builder);
		add: (self buildTestsChooseWith: builder);
		add: (self buildPackagesChooseWith: builder).
	self mainWindow: (builder build: windowSpec).
		
	^ self mainWindow