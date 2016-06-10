generating
generateSmalltalkCISpecObject
	|object|
	object := SmalltalkCISpec new.
	"TODO: Remove if issue31 is done."
	self generateDumpSpec.
	self loadingSpecs do: [ :spec | object addLoadSpec: spec].
	^object