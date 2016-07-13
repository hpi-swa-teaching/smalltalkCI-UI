converting
convertNamesFromLoadingSpecs: aList
	| names |
	names := OrderedCollection new.
	aList do:  [:aSpec | names add: (self convertNameFromLoadingSpec: aSpec)].
	^ names