ui requests
chooseItemListFrom: someObjects title: aString preChoose: preObjects 
	self refactoringNote: 'Was macht diese Methode? Bitte Methodenkommentar schreiben.'.
	^ self new
		title: aString;
		labels: (someObjects collect: [ :ea | ea asString ]);
		values: someObjects;
		setPrechoice: preObjects;
		choose