chosing
promptForPackagePath: fileChooser
	| model |
	fileChooser postOpen.
	fileChooser morphicView openInWorld.
	model := fileChooser morphicView model.
	FileChooser modalLoopOn: fileChooser morphicView.
	model directory ifNotNil:[
	^ model directory fullName.
	].
	^ nil.