accessing
addLoadingSpec: aLoadingSpec 
	self loadingSpecs add: aLoadingSpec.
	self loadingSpecsNames add: aLoadingSpec name.
	self changed: #loadingSpecsNames.
	self changed: #loadingSpecs