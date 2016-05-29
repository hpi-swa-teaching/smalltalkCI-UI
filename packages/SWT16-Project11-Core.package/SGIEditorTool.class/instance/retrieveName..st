chosing
retrieveName: aPackageName
	(aPackageName beginsWith: self class baselineOfPrefix)
		ifTrue: [ |baseline|
			baseline := aPackageName copyFrom: (self class baselineOfPrefix size + 1) to: (aPackageName size).
			self baseline: baseline;
				configuration: nil;
				projectName: baseline.
			^ baseline]
		ifFalse: [
			(aPackageName beginsWith: self class configurationPrefix)
			ifTrue: [ |configuration|
				configuration := aPackageName copyFrom: (self class configurationPrefix size + 1) to: (aPackageName size).
				self configuration: configuration;
					baseline: nil;
					projectName: configuration.
				^ configuration]
			ifFalse: [^ nil]]