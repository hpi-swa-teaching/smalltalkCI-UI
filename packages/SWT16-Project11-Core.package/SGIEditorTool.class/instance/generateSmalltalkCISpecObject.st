generating
generateSmalltalkCISpecObject
	|object|
	object := SmalltalkCISpec new.
	self loadingSpecs do: [:loadingSpec | object addLoadSpec: loadingSpec].
	^object