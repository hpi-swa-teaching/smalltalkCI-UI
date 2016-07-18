file-operations
includeChecker: anObject 
	(((anObject testing at: self class includeDictionaryString ) at: self class categoriesCollectionString ) size == 0)
	ifTrue: [(anObject testing at: self class includeDictionaryString) removeKey: (self class categoriesCollectionString)].
	
	(((anObject testing at: self class includeDictionaryString ) at: self class packagesCollectionString  ) size == 0)
	ifTrue: [(anObject testing at: self class includeDictionaryString) removeKey: (self class packagesCollectionString )].
	
	(((anObject testing at: self class includeDictionaryString ) at: self class testCasesCollectionString ) size == 0)
	ifTrue: [(anObject testing at: self class includeDictionaryString) removeKey: (self class testCasesCollectionString )].
	
	((anObject testing at: self class includeDictionaryString ) size == 0)
	ifTrue: [anObject testing removeKey: (self class includeDictionaryString )].
	
	^ anObject