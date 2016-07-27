testing
testLoadSton
	| spec |
	spec := (self setup loadSton: (FileStream fileNamed: self class fileName)) loadingSpecs at: 1.
	self assert: spec notNil.
	self assert: spec baseline equals: 'SWT16Project11'.
	self assert: spec directory fullName equals: FileDirectory root fullName.
	self assert: spec platforms equals: 'squeaksumpsest'