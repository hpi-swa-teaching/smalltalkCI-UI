utils
loadUsedPlatforms
	| platforms |
	self refactoringNote: 'Wird diese Methode wirklich nicht mehr benutzt oder findet er nur die senders nicht?'.
	platforms := OrderedCollection new.
	self useSqueakPlatform == true ifTrue: [ platforms add: #Squeak ].
	self usePharoPlatform == true ifTrue: [ platforms add: #Pharo ].
	self useGemStonePlatform == true ifTrue: [ platforms add: #GemStone ].
	^ platforms