file-operations
generateSmalltalkCISpecObject
	"Generates the Object (SmalltalkCISpec) to be written to the disk or displayed in the preview."
	| object |
	object := SmalltalkCISpec new.
	self loadingSpecs do: [ :loadingSpec | object addLoadSpec: loadingSpec ].
	object testing at: (self class excludeDictionaryString) put: (self exclude copy).
	object testing at: (self class includeDictionaryString) put: (self include copy).
	^ object