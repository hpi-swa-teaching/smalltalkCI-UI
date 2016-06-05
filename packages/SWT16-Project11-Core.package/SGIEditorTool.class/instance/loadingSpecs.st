accessing
loadingSpecs
	^ loadingSpecs 
		ifNil: [loadingSpecs := OrderedCollection with: SCIMetacelloLoadSpec new]	"Note: firstLoadSpec nicht hardcoden"
		ifNotNil: [loadingSpecs]