chosing
choseBaselineOrConfig: anInputSpec

	| package name |
	package := self promptForBaselineConfigs at: 1.
	self assert: package packageName notNil.
	name := self retrieveName: package packageName.