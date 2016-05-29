user interface
buildWith: builder
	| windowSpec pathSpec baselineConfigSpec packagePathSpec platformSpec saveAndCloseButtonSpec loadingSpecsSpec |
	windowSpec := builder pluggableWindowSpec new.
	pathSpec := self buildPathWith: builder.
	baselineConfigSpec := self buildBaselineConfigChoseWith: builder.
	packagePathSpec := self buildPackagePathWith: builder.
	platformSpec := self buildPlatformChoseWith: builder.
	saveAndCloseButtonSpec := self buildSaveAndCloseButtonWith: builder.
	loadingSpecsSpec := self buildLoadingSpecsWith: builder.
	self windowBuilder: builder.
		
	windowSpec 
		model: self;
		label: 'smalltalkCI';
		extent: 800@600;
		children: OrderedCollection new.
	windowSpec children 
		add: pathSpec;
		add: baselineConfigSpec;
		add: packagePathSpec;
		add: platformSpec;
		add: saveAndCloseButtonSpec;
		add: loadingSpecsSpec.
	self mainWindow: (builder build: windowSpec).
		
	^ self mainWindow