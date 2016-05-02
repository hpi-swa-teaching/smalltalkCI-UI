user interface
buildWith: builder 

	| window |
	window := builder pluggableWindowSpec new.
	window 
		model: self;
		label: 'smalltalkCI';
		extent: 500@300.
		
	^ builder build: window.