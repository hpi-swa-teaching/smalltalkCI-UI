choosing
chooseBaselineOrConfig
	| class |
	self refactoringNote: 'Nil check spotted'.
	class := self promptForBaselineConfigs at: 1.
	class notNil ifTrue: [ self retrieveName: class asString ]