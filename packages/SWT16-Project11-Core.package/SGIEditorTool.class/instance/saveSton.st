generating
saveSton
	|convertedCollection aStream|
	convertedCollection := self generateSmalltalkCISpecObject.
	aStream := StandardFileStream forceNewFileNamed: (self path,'\', self fileName).
	(STON writer on: aStream)
	prettyPrint: true;
        jsonMode: false;
        referencePolicy: #error;
        nextPut: convertedCollection.