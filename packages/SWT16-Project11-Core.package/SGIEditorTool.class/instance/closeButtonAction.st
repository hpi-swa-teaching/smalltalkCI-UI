user interface
closeButtonAction
	| closeDialogSpec yesButtonSpec noButtonSpec |
	closeDialogSpec := windowBuilder pluggableWindowSpec new.
	yesButtonSpec := windowBuilder pluggableButtonSpec new.
	noButtonSpec := windowBuilder pluggableButtonSpec new.
		
 	closeDialogSpec
		model: self;
		label: 'do you really want to close SGIEditor?';
		extent: self class dialogExtent;
		children: OrderedCollection new;
		isDialog: true.
	yesButtonSpec
		model: self;
		label: #exitSGIEditorButtonLabel;
		frame: self class dialogYesButtonFrame;
		action: #exitSGIEditor.
	noButtonSpec
		model: self;
		label: #dontCloseButtonLabel ;
		frame: self class dialogNoButtonFrame;
		action: #exitCloseDialog.
	closeDialogSpec children
		add: yesButtonSpec;
		add: noButtonSpec.
	self closeDialog: (ToolBuilder default open: (windowBuilder build: closeDialogSpec)).

	^closeDialogSpec