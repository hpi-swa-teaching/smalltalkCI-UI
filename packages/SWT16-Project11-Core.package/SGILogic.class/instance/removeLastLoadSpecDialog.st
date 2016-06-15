button-actions
removeLastLoadSpecDialog
	| lastLoadSpecDialogSpec okayButtonSpec |
	lastLoadSpecDialogSpec := self view windowBuilder pluggableWindowSpec new.
	okayButtonSpec := self view windowBuilder pluggableButtonSpec new.
	
	lastLoadSpecDialogSpec 
		model: self;
		label: 'You cant delete the last Loadspec.';
		extent: self class dialogExtent;
		children: OrderedCollection new;
		isDialog: true.
	okayButtonSpec
		model: self;
		label: #okayButtonLabel;
		frame: self class dialogOkayButtonFrame;
		action: #deleteRemoveLastLoadSpecDialog.
	lastLoadSpecDialogSpec children
		add: okayButtonSpec.
	(self lastLoadSpecDialog isNil)
		ifTrue:  [self lastLoadSpecDialog: (ToolBuilder default open: (self view windowBuilder build: lastLoadSpecDialogSpec))].
	^lastLoadSpecDialogSpec