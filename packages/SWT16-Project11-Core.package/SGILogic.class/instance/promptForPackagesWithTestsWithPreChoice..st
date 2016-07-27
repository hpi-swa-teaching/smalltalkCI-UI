prompting
promptForPackagesWithTestsWithPreChoice: aCollection 
	| packages testPackages |
		self refactoringNote: 'Kommentieren oder Umschreiben. Sieht sehr kompliziert aus.'.
	testPackages := (PackageOrganizer default packages select: [ :package | (package classes detect: [ :class | class allSuperclasses includes: TestCase ] ifNone: [  ]) notNil ]) sort: [ :a :b | a packageName < b packageName ].
	packages := Array with: (SGIListMultipleChooser
		chooseItemListFrom: (testPackages collect: [ :package | package packageName ])
		title: 'Select Packages'
		preChoose: aCollection).
	^ packages