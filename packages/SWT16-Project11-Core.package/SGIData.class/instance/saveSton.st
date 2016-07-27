file-operations
saveSton
	| convertedCollection outputStream outputName |
	self refactoringNote: 'Hier wären ein paar Kommentare wirklich angebracht.'.
	convertedCollection := self generateSmalltalkCISpecObject.
	convertedCollection := self checkTesting: convertedCollection.
	outputName := self path.
	(outputName = '') ifFalse: [ outputName := outputName , FileDirectory primPathNameDelimiter ].
	outputStream := StandardFileStream forceNewFileNamed: (outputName , self fileName).
	(STON writer on: outputStream)
		prettyPrint: true;
		jsonMode: false;
		referencePolicy: #error;
		nextPut: convertedCollection