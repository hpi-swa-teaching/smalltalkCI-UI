button-actions
closeButtonAction
	| closeDialogSpec yesButtonSpec noButtonSpec |
	closeDialogSpec := self windowBuilder pluggableWindowSpec new.
	yesButtonSpec := self windowBuilder pluggableButtonSpec new.
	noButtonSpec := self windowBuilder pluggableButtonSpec new.
		
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
	(self closeDialog isNil)
	ifTrue:  [self closeDialog: (ToolBuilder default open: (self windowBuilder build: closeDialogSpec))].

	^closeDialogSpec