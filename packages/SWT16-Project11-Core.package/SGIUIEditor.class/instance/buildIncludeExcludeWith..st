user-interface
buildIncludeExcludeWith: builder
	| panelSpec includeTestsSpec excludeTestsSpec includeCategoriesSpec excludeCategoriesSpec includePackagesSpec excludePackagesSpec |
	panelSpec := builder pluggablePanelSpec new.
	includeTestsSpec := builder pluggableButtonSpec new.
	excludeTestsSpec := builder pluggableButtonSpec new.
	includeCategoriesSpec := builder pluggableButtonSpec new.
	excludeCategoriesSpec := builder pluggableButtonSpec new.
	includePackagesSpec := builder pluggableButtonSpec new.
	excludePackagesSpec := builder pluggableButtonSpec new.

	panelSpec 
		model: self logic;
		frame: self class includeExcludePanelFrame;
		children: OrderedCollection new.
	includeTestsSpec 
		model: self logic;
		label: self class testsIncludeButtonLabel;
		frame: self class testsIncludeFrame;
		action: [self logic includePackages].
	excludeTestsSpec 
		model: self logic;
		label: self class testsExcludeButtonLabel;
		frame: self class testsExcludeFrame;
		action: [self logic excludeTests].
	includeCategoriesSpec 
		model: self logic;
		label: self class categoriesIncludeButtonLabel;
		frame: self class categoriesIncludeFrame;
		action: [self logic includeCategories].
	excludeCategoriesSpec 
		model: self logic;
		label: self class categoriesExcludeButtonLabel;
		frame: self class categoriesExcludeFrame;
		action: [self logic excludeCategories].
	includePackagesSpec 
		model: self logic;
		label: self class packagesIncludeButtonLabel;
		frame: self class packagesIncludeFrame;
		action: [self logic includePackages].
	excludePackagesSpec 
		model: self logic;
		label: self class packagesExcludeButtonLabel;
		frame: self class packagesExcludeFrame;
		action: [self logic excludePackages].

	panelSpec children 
		add: includeTestsSpec;
		add: excludeTestsSpec;
		add: includeCategoriesSpec;
		add: excludeCategoriesSpec;
		add: includePackagesSpec;
		add: excludePackagesSpec.

	 ^ panelSpec