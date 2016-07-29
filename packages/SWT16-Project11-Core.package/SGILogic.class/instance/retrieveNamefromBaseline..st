utils
retrieveNamefromBaseline: aPackageName
	| baseline |
	baseline := aPackageName copyFrom: (self class baselinePrefix size + 1) to: (aPackageName size).
	self
		baseline: baseline;
		configuration: nil;
		projectName: baseline.
	^ baseline