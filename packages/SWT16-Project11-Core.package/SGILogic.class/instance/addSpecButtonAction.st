button-actions
addSpecButtonAction
		| addSpecDialogSpec inputSpec acceptButtonSpec |
		addSpecDialogSpec := self sgiView windowBuilder pluggableWindowSpec new.
		inputSpec := self sgiView windowBuilder pluggableInputFieldSpec new.
		acceptButtonSpec := self sgiView windowBuilder pluggableButtonSpec new.
		
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
		self addSpecDialog: (ToolBuilder default open: ( self sgiView windowBuilder build: addSpecDialogSpec))