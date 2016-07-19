checking
check: anObject withKey: aKey
	| dictionary |
	dictionary := anObject testing at: aKey.
	self checkDictionaryAndDelete: dictionary withProperty: self class categoriesCollectionString.
	self checkDictionaryAndDelete: dictionary withProperty: self class packagesCollectionString. 
	self checkDictionaryAndDelete: dictionary withProperty: self class testCasesCollectionString.
	self checkDictionaryAndDelete: anObject testing withProperty: aKey. 
	
	^ anObject