checking
check: anObject withKey: aKey 
	"Removes the #categories, #packages and #classes string from the ston output and preview."
	| dictionary keys |
	dictionary := anObject testing at: aKey.
	keys := OrderedCollection
		with: self class categoriesCollectionString
		with: self class packagesCollectionString
		with: self class testCasesCollectionString.
	self checkDictionaryAndDelete: dictionary withKeys: keys.
	self checkDictionaryAndDelete: anObject testing withKey: aKey.
	^ anObject