functionality
testSaveButtonAction
	|file tool fileName|
	file := FileDirectory default.
	tool := self setup.
	tool fileName: '.dump.ston'.
	tool path: ''.
	fileName := tool fileName.
	(file fileExists: fileName) ifTrue: [File deleteFileNamed: fileName].
	tool generateDumpSpec.
	tool saveSton.
	self assert: (file fileExists: tool fileName).
	
	file deleteFileNamed: tool fileName.