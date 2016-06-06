accessing
loadingSpecs: aSCIMetacelloLoadSpec
	aSCIMetacelloLoadSpec
		ifNotNil: [loadingSpecs
			ifNil: [loadingSpecs := OrderedCollection with: aSCIMetacelloLoadSpec]
			ifNotNil: [loadingSpecs add: aSCIMetacelloLoadSpec]].
	self changed: #loadingSpecs