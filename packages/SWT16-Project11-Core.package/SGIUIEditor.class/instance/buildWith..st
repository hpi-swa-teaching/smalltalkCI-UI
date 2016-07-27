user-interface
buildWith: builder 
	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: self class sgiLabel;
		extent: self class editorExtent;
		closeAction: #systemCloseAction;
		children: OrderedCollection new.
	windowSpec children
		add: (self buildFilenameAndPathWith: builder);
		add: (self buildBaselineConfigChooseWith: builder);
		add: (self buildPackagePathWith: builder);
		add: (self buildPlatformChooseWith: builder);
		add: (self buildIncludedTestsListWith: builder);
		add: (self buildMenuButtonsWith: builder);
		add: (self buildLoadingSpecsWith: builder);
		add: (self buildIncludeExcludeWith: builder).
	self window: (builder build: windowSpec).
	^ self window