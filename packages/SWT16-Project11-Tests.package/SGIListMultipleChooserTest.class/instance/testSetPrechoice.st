testing
testSetPrechoice
	| chooser |
	chooser := self setup.
	self
		shouldnt: (chooser setPrechoice: self class defaultValues) raise: Error;
		assert: (chooser selection size > 0)