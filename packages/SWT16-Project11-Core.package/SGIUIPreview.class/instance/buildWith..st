user interface
buildWith: builder 
	| windowSpec previewText |
	windowSpec := builder pluggableWindowSpec new.
	previewText := builder pluggableTextSpec new.
	windowSpec
		model: self;
		label: self class previewLabel;
		extent: self class previewExtent;
		children: OrderedCollection new.
	previewText
		model: self;
		getText: #stonString;
		frame: self class previewTextFrame;
		readOnly: self class defaultReadOnly.
	windowSpec children add: previewText.
	self window: (builder build: windowSpec).
	^ self window