accessing
update: aSymbol
	super update: aSymbol.
	(aSymbol == #exit)
	ifTrue: [self window delete]