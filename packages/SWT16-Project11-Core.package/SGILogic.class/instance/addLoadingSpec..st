accessing
addLoadingSpec: aLoadingSpec
	self refactoringNote: 'Kann man die addLoadingSpec: , addLoadingSpec: with: und addLoadingSpec: with: replaceAt: so umschreiben, dass die Logik nur noch an einer stelle ist ? Derzeit ist der Code einfach 3x vorhanden.'.
	self loadingSpecs add: aLoadingSpec.
	self loadingSpecsNames add: aLoadingSpec name.
	self 
		changed: #loadingSpecs;
		changed: #loadingSpecsNames