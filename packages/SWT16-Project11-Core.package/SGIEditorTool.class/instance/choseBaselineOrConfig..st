chosing
choseBaselineOrConfig: anInputSpec

	| class |
	class := self promptForBaselineConfigs at:  1.
	class notNil
			ifTrue: [self retrieveName: class asString.].