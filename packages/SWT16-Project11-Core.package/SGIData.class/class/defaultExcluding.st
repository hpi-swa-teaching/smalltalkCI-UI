defaults
defaultExcluding
	| dictionary |
	dictionary := Dictionary new.
	dictionary at: (self packagesCollectionString) put: OrderedCollection new.
	dictionary at: (self testCasesCollectionString) put: OrderedCollection new.
	^ dictionary