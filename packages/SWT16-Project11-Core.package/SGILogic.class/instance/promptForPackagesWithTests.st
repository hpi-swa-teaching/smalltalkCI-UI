prompting
promptForPackagesWithTests
	| packages testPackages |
	testPackages := (PackageOrganizer default packages
					select: [:package|  
						(package classes 
							detect: [:class | class allSuperclasses includes: TestCase] ifNone: []) notNil])
					sort: [:a :b | a packageName < b packageName].
	packages := Array
				with: (UIManager default
						chooseMultipleFrom: (testPackages
								collect: [:package | package packageName])
						values: testPackages
						title: 'Select Packages').
	^ packages