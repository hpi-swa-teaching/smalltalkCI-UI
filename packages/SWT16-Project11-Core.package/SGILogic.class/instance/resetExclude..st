utils
resetExclude: aKey 
	self exclude at: aKey put: OrderedCollection new.
	self changed: #exclude;
		changed: #includedTestsNames