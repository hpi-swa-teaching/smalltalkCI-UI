checking
checkDictionaryAndDelete: aDictionary withKey: aKey 
		(aDictionary at: aKey) size == 0 ifTrue: [ aDictionary removeKey: aKey ]