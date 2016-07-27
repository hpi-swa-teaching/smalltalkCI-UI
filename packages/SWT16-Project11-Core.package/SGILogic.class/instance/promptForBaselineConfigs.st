prompting
promptForBaselineConfigs
	| subclasses baselines configurations |
	self refactoringNote: 'Kommentieren oder Umschreiben. Sieht sehr kompliziert aus.'.
	baselines := BaselineOf allSubclasses.
	configurations := (Object allSubclasses select: [ :subclass | (subclass asString beginsWith: self class configurationPrefix) ]) reject: [ :subclass | (subclass asString endsWith: ' class') ].
	subclasses := (baselines , configurations) sort: [ :a :b | a asString < b asString ].
	subclasses := Array with: (UIManager default
		chooseFrom: (subclasses collect: [ :subclass | subclass asString ])
		values: subclasses
		title: 'Select Baseline or Configuration').
	^ subclasses