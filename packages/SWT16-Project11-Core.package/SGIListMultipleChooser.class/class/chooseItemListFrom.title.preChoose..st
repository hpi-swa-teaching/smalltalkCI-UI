ui requests
chooseItemListFrom: someObjects title: aString preChoose: prechoiceObjects 
	"opens a new list-multi-chooser with the given prechoice"
	^ self new
		title: aString;
		labels: (someObjects collect: [ :ea | ea asString ]);
		values: someObjects;
		setPrechoice: prechoiceObjects;
		choose