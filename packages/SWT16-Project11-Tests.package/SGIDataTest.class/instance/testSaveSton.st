testing
testSaveSton
	| file dataStorage fileName |
	file := FileDirectory default.
	dataStorage := self setup.
	dataStorage fileName: '.dump.ston'.
	dataStorage path: ''.
	fileName := dataStorage fileName.
	(FileDirectory default fileExists: fileName) ifTrue: [FileDirectory deleteFileNamed: fileName].
	dataStorage loadingSpecs add: self generateDumpSpec.
	dataStorage saveSton.
	self assert: (FileDirectory default fileExists: dataStorage fileName).
	
	FileDirectory default deleteFileNamed: dataStorage fileName.