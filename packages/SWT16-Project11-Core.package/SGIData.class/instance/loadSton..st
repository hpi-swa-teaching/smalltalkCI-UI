file-operations
loadSton: aFileStream
	| spec |
	spec := SmalltalkCISpec fromStream: aFileStream.
	(spec notNil) 
		ifTrue: [
			self 
				fileName: aFileStream localName;
				path: aFileStream fullName;
				loadingSpecs: spec loading;
				loadingSpecsNames: (self convertNamesFromLoadingSpecs: self loadingSpecs);
				testing: spec testing]
