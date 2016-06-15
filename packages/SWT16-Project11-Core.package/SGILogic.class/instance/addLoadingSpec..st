accessing
addLoadingSpec: aLoadingSpec
	self loadingSpecs add: aLoadingSpec.
	self changed: #loadingSpecs
	