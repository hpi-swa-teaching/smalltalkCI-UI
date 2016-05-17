user interface
buildWith: builder 

	| mainWindowSpec baselineConfigSpec packagePathSpec saveAndCloseButtonSpec |
	mainWindowSpec := builder pluggableWindowSpec new.
	baselineConfigSpec := self buildBaselineConfigChoseWith: builder.
	packagePathSpec := self buildPackagePathWith: builder.
	saveAndCloseButtonSpec := self buildSaveAndCloseButtonWith: builder.
	windowBuilder := builder.
		
	mainWindowSpec 
		model: self;
		label: 'smalltalkCI';
		extent: 800@600;
		children: OrderedCollection new.

	mainWindowSpec children add: baselineConfigSpec.
	mainWindowSpec children add: packagePathSpec.
	mainWindowSpec children add: saveAndCloseButtonSpec.		
	
	self mainWindow: (builder build: mainWindowSpec).
	
	 ^ self mainWindow 