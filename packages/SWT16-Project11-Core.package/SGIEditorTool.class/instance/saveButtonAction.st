user interface
saveButtonAction

	| yesButtonSpec noButtonSpec |
	saveDialog := windowBuilder pluggableWindowSpec new.
	yesButtonSpec := windowBuilder pluggableButtonSpec new.
	noButtonSpec := windowBuilder pluggableButtonSpec new.
		
 	saveDialog 
		model: self;
		label: 'Name allready exists, overwrite?';
		extent: 330@50;
		children: OrderedCollection new;
		isDialog: true.

	yesButtonSpec
		model: self;
		label: #overwriteButtonLabel;
		frame: (0@0 corner: 0.5@1);
		action: #writeSton.
		
	noButtonSpec
		model: self;
		label: #dontSaveButtonLabel;
		frame: (0.5@0 corner: 1@1);
		action: #exitSaveDialog.
	
	saveDialog children add: yesButtonSpec.
	saveDialog children add: noButtonSpec.
		
	ToolBuilder default open: ( windowBuilder build: saveDialog).
