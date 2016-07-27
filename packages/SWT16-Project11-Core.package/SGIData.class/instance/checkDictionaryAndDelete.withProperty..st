checking
checkDictionaryAndDelete: aDictionary withProperty: aKey 
	self refactoringNote: 'Dieser Methode könnte eine OrderedCollection von Strings übergeben werden, die Sie entfernt. Das hilft der sender methode (keine duplizierten Aufrufe)'.
	self refactoringNote: 'Ich kann mir nicht vorstellen, dass es keine Methode gibt die diesen Check auf einem Dictionary übernimmt.'.
	((aDictionary at: aKey) size == 0) ifTrue: [ aDictionary removeKey: aKey ]