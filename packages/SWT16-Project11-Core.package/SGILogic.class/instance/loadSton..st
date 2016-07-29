utils
loadSton: aFileStream 
	"it loads the completely STON-spec from the given file and loads it to the UI and the model"
	| spec |.
	spec := SmalltalkCISpec fromStream: aFileStream.
	(spec notNil) ifTrue: [
		self
			fileName: aFileStream localName;
			path: aFileStream directory fullName;
			loadingSpecs: spec loading asOrderedCollection;
			loadingSpecsNames: (self convertNamesFromLoadingSpecs: self loadingSpecs).
		(spec testing includes: SGIData excludeDictionaryString) ifTrue: [ self exclude: (spec testing at: SGIData excludeDictionaryString) ].
		(spec testing includes: SGIData includeDictionaryString) ifTrue: [ self include: (spec testing at: SGIData includeDictionaryString) ] ]