constants
promptForPackagePath: fileChooser
	| model |
	fileChooser postOpen. "Funny name in this context, should be renamed, but whatever..."
	fileChooser morphicView openInWorld.
	model := fileChooser morphicView model.
	FileChooser modalLoopOn: fileChooser morphicView.
	model directory ifNotNil:[
	^ model directory fullName.
	].
	^ nil.