testing
testLoadSton
	| spec |
	spec := (self setup loadSton: (FileStream fileNamed: self class fileName)) loadingSpecs at: 1.
	self assert: spec notNil;
		assert: spec baseline equals: 'SWT16Project11';
		assert: spec directory fullName equals: FileDirectory root fullName;
		assert: spec platforms equals: 'squeaksumpsest'