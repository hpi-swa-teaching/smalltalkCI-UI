file-operations
saveSton
	| convertedCollection aStream outputName |
	convertedCollection := self generateSmalltalkCISpecObject.
	convertedCollection := self checkTesting: convertedCollection.
	outputName := self path.
	(outputName = '') ifFalse: [ outputName := outputName , FileDirectory primPathNameDelimiter ].
	aStream := StandardFileStream forceNewFileNamed: (outputName , self fileName).
	(STON writer on: aStream)
		prettyPrint: true;
		jsonMode: false;
		referencePolicy: #error;
		nextPut: convertedCollection