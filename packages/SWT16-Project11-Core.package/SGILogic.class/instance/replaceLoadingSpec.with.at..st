accessing
replaceLoadingSpec: aLoadingSpec with: aName at: anIndex 
	self loadingSpecs
		add: aLoadingSpec afterIndex: anIndex;
		removeAt: anIndex.
	self loadingSpecsNames
		add: aName afterIndex: anIndex;
		removeAt: anIndex.
	self changed: #loadingSpecsNames;
		changed: #loadingSpecs