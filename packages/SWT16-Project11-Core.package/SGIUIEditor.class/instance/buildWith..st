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
		add: (self buildPathWith: builder);
		add: (self buildBaselineConfigChooseWith: builder);
		add: (self buildPackagePathWith: builder);
		add: (self buildPlatformChooseWith: builder);
		add: (self buildSaveAndCloseButtonWith: builder);
		add: (self buildLoadingSpecsWith: builder);
		add: (self buildStonInputFieldWith: builder);
		add: (self buildTestsIncludeWith: builder);
		add: (self buildTestsExcludeWith: builder);
		add: (self buildPackagesExcludeWith: builder);
		add: (self buildPackagesIncludeWith: builder);
		add: (self buildPreviewButtonWith: builder);
		add: (self buildCategoriesExcludeWith: builder);
		add: (self buildCategoriesIncludeWith: builder).

	self window: (builder build: windowSpec).
	^ self window