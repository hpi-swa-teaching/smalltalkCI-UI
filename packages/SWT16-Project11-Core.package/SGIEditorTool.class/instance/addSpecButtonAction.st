user interface
addSpecButtonAction
		| addSpecDialogSpec inputSpec acceptButtonSpec |
		addSpecDialogSpec := windowBuilder pluggableWindowSpec new.
		inputSpec := windowBuilder pluggableInputFieldSpec new.
		acceptButtonSpec := windowBuilder pluggableButtonSpec new.
		
 		addSpecDialogSpec 
			model: self;
			label: 'Which name should the new loadingSpec have?';
			extent: self class addSpecDialogExtent;
			children: OrderedCollection new;
			isDialog: true.
		inputSpec
			model: self;
			frame: self class addSpecDialogInputFrame.
		acceptButtonSpec
			model: self;
			label: #acceptButtonLabel;
			frame: self class addSpecDialogAcceptButtonFrame;
			action: #acceptAddSpecDialogAction.
		addSpecDialogSpec children
			add: inputSpec;
			add: acceptButtonSpec.
		self addSpecDialog: (ToolBuilder default open: ( windowBuilder build: addSpecDialogSpec))