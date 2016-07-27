accessing
addLoadingSpec: aLoadingSpec with: aName replaceAt: anIndex 
	self loadingSpecs
		add: aLoadingSpec afterIndex: anIndex;
		removeAt: anIndex.
	self loadingSpecsNames
		add: aName afterIndex: anIndex;
		removeAt: anIndex.
	self changed: #loadingSpecsNames.
	self changed: #loadingSpecs