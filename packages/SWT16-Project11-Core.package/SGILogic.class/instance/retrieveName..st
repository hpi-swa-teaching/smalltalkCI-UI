utils
retrieveName: aPackageName
	(aPackageName beginsWith: self class baselinePrefix)
		ifTrue: [ | baseline |
			baseline := aPackageName copyFrom: (self class baselinePrefix size + 1) to: (aPackageName size).
			self model
				baseline: baseline;
				configuration: nil;
				projectName: baseline.
			^ baseline]
		ifFalse: [
			(aPackageName beginsWith: self class configurationPrefix)
			ifTrue: [ | configuration |
				configuration := aPackageName copyFrom: (self class configurationPrefix size + 1) to: (aPackageName size).
				self sgiModel
					configuration: configuration;
					baseline: nil;
					projectName: configuration.
				^ configuration]
			ifFalse: [^ nil]]