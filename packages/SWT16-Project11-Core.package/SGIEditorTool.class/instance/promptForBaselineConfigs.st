chosing
promptForBaselineConfigs
	| packages |
	packages := (PackageOrganizer default packages
				select: [:package | (package packageName beginsWith: self class baselineOfPrefix)
						or: [(package packageName beginsWith: self class configurationPrefix)
								]])
				sort: [:a :b | a packageName < b packageName].
	packages := Array
				with: (UIManager default
						chooseFrom: (packages
								collect: [:package | package packageName])
						values: packages
						title: 'Select Package').
	^ packages.