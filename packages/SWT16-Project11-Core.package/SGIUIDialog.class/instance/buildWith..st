user-interface
buildWith: builder
	| dialogSpec firstAnswerButtonSpec secondAnswerButtonSpec |
	dialogSpec := builder pluggableWindowSpec new.
	firstAnswerButtonSpec := builder pluggableButtonSpec new.
	secondAnswerButtonSpec := builder pluggableButtonSpec new.

	dialogSpec 
		model: self;
		label: self dialogQuestion;
		extent: self class dialogExtent;
		children: OrderedCollection new;
		isDialog: true.
	firstAnswerButtonSpec
		model: self;
		label: self firstAnswer;
		frame: self class firstAnswerButtonFrame;
		action: [self executeFirstAnswerAction].
	secondAnswerButtonSpec
		model: self;
		label: self secondAnswer;
		frame: self class secondAnswerButtonFrame;
		action: [self executeSecondAnswerAction].
	dialogSpec children
		add: firstAnswerButtonSpec;
		add: secondAnswerButtonSpec.
	self window: (builder build: dialogSpec).
	^ self window
	