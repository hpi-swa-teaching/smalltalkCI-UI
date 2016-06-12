user interface
loadSpecButtonAction
	| selectedLoadSpec loadingSpecsCollection |
	loadingSpecsCollection := OrderedCollection new.
	selectedLoadSpec :=  loadingSpecs first.
	"Hier ist ein Fehler, loadingSpecs first ist kein SCIMetacelloLoadSpec"
	"An dieser Stelle angewähltes Listenelement auslesen (getselected oder so)"
	
	self baseline: selectedLoadSpec baseline.
	self configuration: selectedLoadSpec configuration.
	self loadUsedPlatforms: selectedLoadSpec platforms.
	self package: selectedLoadSpec repository.
	
	self changed: #baseline.
	self changed: #configuration