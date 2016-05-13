user interface
buildWith: builder 

	| windowSpec baselineConfigSpec packagePathSpec saveAndCloseButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	baselineConfigSpec := self buildBaselineConfigChoseWith: builder.
	packagePathSpec := self buildPackagePathWith: builder.
	saveAndCloseButtonSpec := self buildSaveAndCloseButtonWith: builder.
		
	windowSpec 
		model: self;
		label: 'smalltalkCI';
		extent: 800@600;
		children: OrderedCollection new.

	windowSpec children add: baselineConfigSpec.
	windowSpec children add: packagePathSpec.
	windowSpec children add: saveAndCloseButtonSpec.		
		
	^ builder build: windowSpec. 