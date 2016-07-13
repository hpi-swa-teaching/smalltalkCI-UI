file-operations
loadSton: aFileStream
	| spec |
	spec := SmalltalkCISpec fromStream: aFileStream.
	(spec notNil) 
		ifTrue: [
			self 
				fileName: aFileStream localName;
				path: aFileStream fullName;
				loadingSpecs: spec loading asOrderedCollection;
				loadingSpecsNames: (self convertNamesFromLoadingSpecs: self loadingSpecs).
			(spec testing includes: self class excludeDictionaryString) ifTrue: [self exclude: (spec testing at: self class excludeDictionaryString)].
			(spec testing includes: self class includeDictionaryString) ifTrue: [self include: (spec testing at: self class includeDictionaryString)].]
