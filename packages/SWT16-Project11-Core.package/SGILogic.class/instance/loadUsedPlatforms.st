utils
loadUsedPlatforms

	| platforms |
	
	platforms := OrderedCollection new.
	self useSqueakPlatform == true
		ifTrue: [platforms add: #Squeak].
	self usePharoPlatform == true
		ifTrue: [platforms add: #Pharo].
	self useGemStonePlatform == true
		ifTrue: [platforms add: #GemStone].
	^ platforms