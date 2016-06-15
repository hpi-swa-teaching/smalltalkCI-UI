user-interface
buildWith: builder
	| dialogSpec firstAnswerButtonSpec secondAnswerButtonSpec |
	dialogSpec := self view windowBuilder pluggableWindowSpec new.
	firstAnswerButtonSpec := self view windowBuilder pluggableButtonSpec new.
	secondAnswerButtonSpec := self view windowBuilder pluggableButtonSpec new.

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
		action: [self firstAnswerAction value].
	secondAnswerButtonSpec
		model: self;
		label: self secondAnswer;
		frame: self class secondAnswerButtonFrame;
		action: [self secondAnswerAction value].
	dialogSpec children
		add: firstAnswerButtonSpec;
		add: secondAnswerButtonSpec.
	builder build: dialogSpec.
	^dialogSpec