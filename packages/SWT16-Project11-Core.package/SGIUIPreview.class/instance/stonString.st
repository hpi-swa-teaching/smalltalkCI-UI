accessing
stonString
	self refactoringNote: 'Bitte hier das model entfernen und den Zugriff über die Logik machen. Danach bitte die instanz Variable fürs Model komplett aus dem UI entfernen!!!'.
	^ STON toStringPretty: (self logic model checkTesting: (self logic model generateSmalltalkCISpecObject))