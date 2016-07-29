prompting
promptForPackagesWithTestsWithPreChoice: aCollection 
	| packages testPackages |
	testPackages := (PackageOrganizer default packages select: [ :package | (package classes detect: [ :class | class allSuperclasses includes: TestCase ] ifNone: [  ]) notNil ]) sort: [ :a :b | a packageName < b packageName ].
	packages := Array with: (SGIListMultipleChooser
		chooseItemListFrom: (testPackages collect: [ :package | package packageName ])
		title: self class selectPackagesTitle
		preChoose: aCollection).
	^ packages