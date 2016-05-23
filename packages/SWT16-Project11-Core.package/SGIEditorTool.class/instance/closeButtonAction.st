user interface
closeButtonAction

	| closeDialogSpec yesButtonSpec noButtonSpec |
	closeDialogSpec := windowBuilder pluggableWindowSpec new.
	yesButtonSpec := windowBuilder pluggableButtonSpec new.
	noButtonSpec := windowBuilder pluggableButtonSpec new.
		
 	closeDialogSpec
		model: self;
		label: 'do you really want to close SGIEditor?';
		extent: 350@50;
		children: OrderedCollection new;
		isDialog: true.

	yesButtonSpec
		model: self;
		label: #exitSGIEditorButtonLabel;
		frame: (0@0 corner: 0.5@1);
		action: #exitSGIEditor.
		
	noButtonSpec
		model: self;
		label: #dontCloseButtonLabel ;
		frame: (0.5@0 corner: 1@1);
		action: #exitCloseDialog.
	
	closeDialogSpec children add: yesButtonSpec.
	closeDialogSpec children add: noButtonSpec.
		
	self closeDialog:(ToolBuilder default open: ( windowBuilder build: closeDialogSpec)).

	^closeDialogSpec.