file-operations
saveSton
	| outputDirectory |
	outputDirectory := self path.
	(outputDirectory = '') ifFalse: [ outputDirectory := outputDirectory , FileDirectory primPathNameDelimiter ].
	self writeStonFile: (outputDirectory , self fileName) withContent: (self checkTesting: (self generateSmalltalkCISpecObject))