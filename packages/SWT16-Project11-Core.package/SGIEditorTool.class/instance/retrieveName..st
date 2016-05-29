chosing
retrieveName: aPackageName
	(aPackageName beginsWith: self class baselineOfPrefix)
		ifTrue: [|baseline|
			baseline := aPackageName copyFrom: (self class baselineOfPrefix size + 1) to: (aPackageName size).
			self baseline: baseline.
			self configuration: nil.
			self projectName: baseline.
			^ baseline]
		ifFalse: [
			(aPackageName beginsWith: self class configurationPrefix)
			ifTrue: [
				|configuration|
				configuration := aPackageName copyFrom: (self class configurationPrefix size + 1) to: (aPackageName size).
				self configuration: configuration.
				self baseline: nil.
				self projectName: configuration.
				^ configuration]
			ifFalse: [^ nil]]