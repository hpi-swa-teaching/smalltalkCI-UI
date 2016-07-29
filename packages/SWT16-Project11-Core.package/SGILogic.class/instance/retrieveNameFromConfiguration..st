utils
retrieveNameFromConfiguration: aPackageName
	| configuration |
	configuration := aPackageName copyFrom: (self class configurationPrefix size + 1) to: (aPackageName size).
	self
		configuration: configuration;
		baseline: nil;
		projectName: configuration.
	^ configuration