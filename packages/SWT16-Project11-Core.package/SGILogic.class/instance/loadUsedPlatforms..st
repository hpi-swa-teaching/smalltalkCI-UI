utils
loadUsedPlatforms: anOrderedCollection 
	| platforms |
	self refactoringNote: 'Wird diese Methode wirklich nicht mehr benutzt oder findet er nur die senders nicht?'.
	platforms := anOrderedCollection.
	(platforms contains: #Squeak) ifTrue: [ self useSqueakPlatform: true ].
	(platforms contains: #Pharo) ifTrue: [ self usePharoPlatform: true ].
	(platforms contains: #GemStone) ifTrue: [ self useGemStonePlatform: true ]