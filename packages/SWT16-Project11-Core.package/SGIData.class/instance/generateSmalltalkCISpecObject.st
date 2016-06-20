file-operations
generateSmalltalkCISpecObject
	| object |
	object := SmalltalkCISpec new.
	self loadingSpecs do: [:loadingSpec | object addLoadSpec: loadingSpec].
	object testing at: (self class excludeDictionaryString) put: self exclude.
	object testing at: (self class includeDictionaryString) put: self include.
	^ object