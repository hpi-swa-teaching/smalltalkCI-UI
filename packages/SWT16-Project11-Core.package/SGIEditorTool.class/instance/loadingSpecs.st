accessing
loadingSpecs
	^ loadingSpecs 
		ifNil: [loadingSpecs := OrderedCollection new]
		ifNotNil: [loadingSpecs]