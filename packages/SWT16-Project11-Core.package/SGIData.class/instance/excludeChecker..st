file-operations
excludeChecker: anObject 
	(((anObject testing at: self class excludeDictionaryString ) at: self class categoriesCollectionString ) size == 0)
	ifTrue: [(anObject testing at: self class excludeDictionaryString) removeKey: (self class categoriesCollectionString)].
	
	(((anObject testing at: self class excludeDictionaryString ) at: self class packagesCollectionString  ) size == 0)
	ifTrue: [(anObject testing at: self class excludeDictionaryString) removeKey: (self class packagesCollectionString )].
	
	(((anObject testing at: self class excludeDictionaryString ) at: self class testCasesCollectionString ) size == 0)
	ifTrue: [(anObject testing at: self class excludeDictionaryString) removeKey: (self class testCasesCollectionString )].
	
	((anObject testing at: self class excludeDictionaryString ) size == 0)
	ifTrue: [anObject testing removeKey: (self class excludeDictionaryString )].
	
	^ anObject