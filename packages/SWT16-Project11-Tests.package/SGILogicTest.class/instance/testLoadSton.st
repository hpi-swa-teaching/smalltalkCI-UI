testing
testLoadSton
	| logic fileName fullPath orderedSpec spec |
	logic := self setup.
	
	fileName := '.dump.ston'.
	fullPath := FileStream fileNamed: fileName.
	logic loadSton: fullPath.
	orderedSpec := logic loadingSpecs.
	spec := orderedSpec at: 1.
	self assert: spec notNil.
	self assert: spec baseline equals: 'SWT16Project11'.
	self assert: spec directory fullName equals: ''.
	self assert: spec platforms equals: 'squeaksumpsest'.
	