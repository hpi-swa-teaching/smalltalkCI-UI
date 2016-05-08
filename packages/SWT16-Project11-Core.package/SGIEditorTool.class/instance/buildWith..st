user interface
buildWith: builder 

	| windowSpec saveButtonSpec closeButtonSpec |
	windowSpec := builder pluggableWindowSpec new.
	saveButtonSpec := builder pluggableButtonSpec new.
	closeButtonSpec := builder pluggableButtonSpec new.
		
	windowSpec 
		model: self;
		label: 'smalltalkCI';
		extent: 800@600;
		children: OrderedCollection new.
		
	saveButtonSpec
		model: self;
		label: #saveButtonLabel;
		frame: (0.8@0.95 corner: 0.9@1).
	
	closeButtonSpec
		model: self;
		label: #closeButtonLabel;
		frame: (0.9@0.95 corner: 1@1).
		
	windowSpec children add: saveButtonSpec.
	windowSpec children add: closeButtonSpec.
		
		
	^ builder build: windowSpec.