file-operations
writeStonFile: aFileName withContent: aSTONSpec
	(STON writer on: (StandardFileStream forceNewFileNamed: aFileName))
		prettyPrint: true;
		jsonMode: false;
		referencePolicy: #error;
		nextPut: aSTONSpec