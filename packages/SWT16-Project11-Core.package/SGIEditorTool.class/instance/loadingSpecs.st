accessing
loadingSpecs
	"^ loadingSpecs"
	| name testCollection |
	name := 'test'.
	testCollection := OrderedCollection with: name.
	^ loadingSpecs ifNil: [testCollection] 
		ifNotNil: [loadingSpecs]