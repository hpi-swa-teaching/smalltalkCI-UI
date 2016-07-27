utils
loadUsedPlatforms: anOrderedCollection 
	| platforms |
	platforms := anOrderedCollection.
	(platforms contains: #Squeak) ifTrue: [ self useSqueakPlatform: true ].
	(platforms contains: #Pharo) ifTrue: [ self usePharoPlatform: true ].
	(platforms contains: #GemStone) ifTrue: [ self useGemStonePlatform: true ]