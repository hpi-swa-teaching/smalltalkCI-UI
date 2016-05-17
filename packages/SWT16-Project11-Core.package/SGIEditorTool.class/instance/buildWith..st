user interface
buildWith: builder 

	| windowSpec pathSpec baselineConfigSpec packagePathSpec saveAndCloseButtonSpec loadingSpecsSpec |
	
	windowSpec := builder pluggableWindowSpec new.
	pathSpec := self buildPathWith: builder.
	baselineConfigSpec := self buildBaselineConfigChoseWith: builder.
	packagePathSpec := self buildPackagePathWith: builder.
	saveAndCloseButtonSpec := self buildSaveAndCloseButtonWith: builder.
	loadingSpecsSpec := self buildLoadingSpecsWith: builder.
		
	windowSpec 
		model: self;
		label: 'smalltalkCI';
		extent: 800@600;
		children: OrderedCollection new.

	windowSpec children add: pathSpec.
	windowSpec children add: baselineConfigSpec.
	windowSpec children add: packagePathSpec.
	windowSpec children add: saveAndCloseButtonSpec.
	windowSpec children add: loadingSpecsSpec.		
		
	^ builder build: windowSpec. 