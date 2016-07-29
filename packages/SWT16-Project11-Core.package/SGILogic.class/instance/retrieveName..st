utils
retrieveName: aPackageName
	(aPackageName beginsWith: self class baselinePrefix)
		ifTrue: [ ^ self retrieveNamefromBaseline: aPackageName ]
		ifFalse: [ (aPackageName beginsWith: self class configurationPrefix)
			ifTrue: [ ^ self retrieveNameFromConfiguration: aPackageName ]
			ifFalse: [
				^ nil ] ]