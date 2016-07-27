utils
retrieveName: aPackageName
	self refactoringNote: 'Eine einsame Methode auf der Suche nach ihren Kommentaren.'.
	self refactoringNote: 'Vielleicht kann man die Methode in unterschiedliche Abstraktionslevel aufbrechen und diese aulagern? Ist doch etwas lang.'.
	(aPackageName beginsWith: self class baselinePrefix)
		ifTrue: [
			| baseline |
			baseline := aPackageName copyFrom: (self class baselinePrefix size + 1) to: (aPackageName size).
			self
				baseline: baseline;
				configuration: nil;
				projectName: baseline.
			^ baseline ]
		ifFalse: [ (aPackageName beginsWith: self class configurationPrefix)
			ifTrue: [
				| configuration |
				configuration := aPackageName copyFrom: (self class configurationPrefix size + 1) to: (aPackageName size).
				self
					configuration: configuration;
					baseline: nil;
					projectName: configuration.
				^ configuration ]
			ifFalse: [
				^ nil ] ]