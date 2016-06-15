file-operations
saveSton
	| convertedCollection aStream outputName |
	convertedCollection := self generateSmalltalkCISpecObject.
	outputName := self path.
	(outputName = '') ifFalse: [outputName := outputName, '\'].
	aStream := StandardFileStream forceNewFileNamed: (outputName, self fileName).
	(STON writer on: aStream)
		prettyPrint: true;
		jsonMode: false;
		referencePolicy: #error;
		nextPut: convertedCollection