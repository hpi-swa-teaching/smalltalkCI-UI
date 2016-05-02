user interface
buildWith: builder 

	| windowSpec listSpec multiSelectionListSpec|
	windowSpec := builder pluggableWindowSpec new.
	listSpec := builder pluggableListSpec new.
	multiSelectionListSpec := builder pluggableMultiSelectionListSpec new.
		
	windowSpec 
		model: self;
		label: 'smalltalkCI';
		extent: 500@300;
		children: OrderedCollection new.
		
	multiSelectionListSpec 
		list: #platforms;
		model: self;
		frame: (0@0.05 corner: 0.167@0.25).
	
	listSpec
		model: self;
		frame: (0@0.25 corner: 0.167@1).
		
	windowSpec children add: listSpec.
	windowSpec children add: multiSelectionListSpec.
		
		
	^ builder build: windowSpec.