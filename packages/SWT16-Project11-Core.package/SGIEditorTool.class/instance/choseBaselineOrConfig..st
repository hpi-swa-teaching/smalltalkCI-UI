chosing
choseBaselineOrConfig: anInputSpec

	| package name |
	package := self promptForBaselineConfigs at: 1.
	package notNil
		ifTrue: [name := self retrieveName: package packageName.].