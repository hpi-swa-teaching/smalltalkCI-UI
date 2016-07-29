accessing
path
	Path ifNil: [ ^ FileDirectory root ].
	^ Path