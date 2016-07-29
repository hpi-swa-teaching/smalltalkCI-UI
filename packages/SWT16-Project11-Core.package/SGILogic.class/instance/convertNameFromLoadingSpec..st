utils
convertNameFromLoadingSpec: aLoadingSpec
	(aLoadingSpec baseline notNil)
		ifTrue: [
			^ aLoadingSpec baseline ]
		ifFalse: [ (aLoadingSpec configuration notNil)
			ifTrue: [
				^ aLoadingSpec configuration ]
			ifFalse: [
				^ SGIData defaultLoadingSpecName ] ]