button-actions
removeLastLoadSpecDialog
	| lastLoadSpecDialogSpec okayButtonSpec |
	lastLoadSpecDialogSpec := self sgiView windowBuilder pluggableWindowSpec new.
	okayButtonSpec := self sgiView windowBuilder pluggableButtonSpec new.
	
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
		ifTrue:  [self lastLoadSpecDialog: (ToolBuilder default open: (self sgiView windowBuilder build: lastLoadSpecDialogSpec))].
	^lastLoadSpecDialogSpec