accessing
projectName

	(projectName isNil)
		ifTrue: [^ 'Project Name'.]
		ifFalse: [^ projectName.].