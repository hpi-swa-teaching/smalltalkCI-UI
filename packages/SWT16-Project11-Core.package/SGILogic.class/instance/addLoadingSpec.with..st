accessing
addLoadingSpec: aLoadingSpec with: aName 
	self loadingSpecs add: aLoadingSpec.
	self loadingSpecsNames add: aName.
	self changed: #loadingSpecsNames.
	self changed: #loadingSpecs