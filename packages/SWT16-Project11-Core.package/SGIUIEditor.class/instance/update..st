observer
update: aSymbol
	super update: aSymbol.
	(aSymbol == #exit)
	ifTrue: [self okToClose: true.
		self window delete]