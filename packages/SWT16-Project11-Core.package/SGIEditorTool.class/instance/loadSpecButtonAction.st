user interface
loadSpecButtonAction
	| selectedLoadSpec loadingSpecsCollection |
	loadingSpecsCollection := OrderedCollection new.
	selectedLoadSpec :=  #loadingSpecs first.
	"An dieser Stelle angewähltes Listenelement auslesen (getselected oder so)"
	
	self baseline: selectedLoadSpec baseline.
	self configuration: selectedLoadSpec configuration.
	self path: selectedLoadSpec directory. 
	self loadUsedPlatforms: selectedLoadSpec platforms.
	self package: selectedLoadSpec repository