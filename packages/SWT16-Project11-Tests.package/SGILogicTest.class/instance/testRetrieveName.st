testing
testRetrieveName
	self assert: ((self setup retrieveName: self class defaultDumpClass) isNil)