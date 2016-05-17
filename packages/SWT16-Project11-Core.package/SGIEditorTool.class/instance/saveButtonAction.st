user interface
saveButtonAction

	| saveDialogSpec yesButtonSpec noButtonSpec |
	saveDialogSpec:= windowBuilder pluggableWindowSpec new.
	yesButtonSpec := windowBuilder pluggableButtonSpec new.
	noButtonSpec := windowBuilder pluggableButtonSpec new.
		
 	saveDialogSpec 
		model: self;
		label: 'Name allready exists, overwrite?';
		extent: 330@50;
		children: OrderedCollection new;
		isDialog: true.

	yesButtonSpec
		model: self;
		label: #overwriteButtonLabel;
		frame: (0@0 corner: 0.5@1);
		action: #saveSton.
		
	noButtonSpec
		model: self;
		label: #dontSaveButtonLabel;
		frame: (0.5@0 corner: 1@1);
		action: #exitSaveDialog.
	
	saveDialogSpec children add: yesButtonSpec.
	saveDialogSpec children add: noButtonSpec.
		
	self saveDialog: (ToolBuilder default open: ( windowBuilder build: saveDialogSpec)).
