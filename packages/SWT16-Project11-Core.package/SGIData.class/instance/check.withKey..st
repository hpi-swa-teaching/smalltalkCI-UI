checking
check: anObject withKey: aKey 
	"Removes the #categories, #packages and #classes string from the ston output and preview."
	| dictionary |
	dictionary := anObject testing at: aKey.
	self
		checkDictionaryAndDelete: dictionary
		withProperty: self class categoriesCollectionString.
	self
		checkDictionaryAndDelete: dictionary
		withProperty: self class packagesCollectionString.
	self
		checkDictionaryAndDelete: dictionary
		withProperty: self class testCasesCollectionString.
	self checkDictionaryAndDelete: anObject testing withProperty: aKey.
	^ anObject