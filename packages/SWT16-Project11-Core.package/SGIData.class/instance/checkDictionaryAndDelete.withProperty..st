checking
checkDictionaryAndDelete: aDictionary withProperty: aKey 
	((aDictionary at: aKey) size == 0) ifTrue: [ aDictionary removeKey: aKey ]