initialize
initializeWithModel: aModel 
	self refactoringNote: 'Nein! Aus! Pfui! Böser Konstruktor!'.
	self refactoringNote: 'Nutzt hier bitte den Konstruktor von UI. Das Model hat hier gar nichts verloren.'.
	^ ToolBuilder default open: (self new model: aModel)