constants
defaultIncludingAndExcluding
	| dictionary |
	dictionary := Dictionary new.
	dictionary at: (SGIData packagesCollectionString) put: OrderedCollection new.
	dictionary at: (SGIData testCasesCollectionString) put: OrderedCollection new.
	^ dictionary