checking
checkDictionaryAndDelete: aDictionary withKeys: aCollection 
	aCollection do: [ :aKey | self checkDictionaryAndDelete: aDictionary withKey: aKey]