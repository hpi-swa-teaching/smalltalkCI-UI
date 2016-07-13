button-actions
openButtonAction
	| fileStream |
	fileStream := FileList2 modalFileSelector.
	(fileStream notNil)
		ifTrue: [((fileStream localName) endsWith: '.ston')
			ifTrue: [self model loadSton: fileStream]
			ifFalse: [self inform: 'Please import a ston file']] 
		