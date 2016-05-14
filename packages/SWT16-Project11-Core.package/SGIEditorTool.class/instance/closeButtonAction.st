user interface
closeButtonAction

	| yesButtonSpec noButtonSpec |
	closeDialog := windowBuilder pluggableWindowSpec new.
	yesButtonSpec := windowBuilder pluggableButtonSpec new.
	noButtonSpec := windowBuilder pluggableButtonSpec new.
		
 	closeDialog
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
	
	closeDialog children add: yesButtonSpec.
	closeDialog children add: noButtonSpec.
		
	ToolBuilder default open: ( windowBuilder build: closeDialog).
