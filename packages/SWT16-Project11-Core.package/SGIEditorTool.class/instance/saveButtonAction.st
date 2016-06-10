user interface
saveButtonAction
	((FileDirectory on: self path) fileExists: self fileName) 
		ifFalse: [ self saveSton] 
		ifTrue: [
			| saveDialogSpec yesButtonSpec noButtonSpec |
			saveDialogSpec:= windowBuilder pluggableWindowSpec new.
			yesButtonSpec := windowBuilder pluggableButtonSpec new.
			noButtonSpec := windowBuilder pluggableButtonSpec new.
		
 			saveDialogSpec 
				model: self;
				label: 'Name allready exists, overwrite?';
				extent: self class dialogExtent;
				children: OrderedCollection new;
				isDialog: true.
			yesButtonSpec
				model: self;
				label: #overwriteButtonLabel;
				frame: self class dialogYesButtonFrame;
				action: #overwriteSton.
			noButtonSpec
				model: self;
				label: #dontSaveButtonLabel;
				frame: self class dialogNoButtonFrame;
				action: #exitSaveDialog.
			saveDialogSpec children
				add: yesButtonSpec;
				add: noButtonSpec.
			(self saveDialog isNil)
				ifTrue:  [self saveDialog: (ToolBuilder default open: (windowBuilder build: saveDialogSpec))].
			^saveDialogSpec ]