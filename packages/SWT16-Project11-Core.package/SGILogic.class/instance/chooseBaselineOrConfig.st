choosing
chooseBaselineOrConfig
	| class |
	"It opens a prompter and selects the first choice. If nothing was chosen, nothing happens"
	class := self promptForBaselineConfigs at: 1.
	class notNil ifTrue: [ self retrieveName: class asString ]