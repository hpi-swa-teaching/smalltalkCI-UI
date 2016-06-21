ui requests
chooseItemListFrom: someObjects title: aString preChoose: preObjects
	^ self new
		title: aString;
		labels: (someObjects collect: [:ea | ea asString]);
		values: someObjects;
		setPrechoice: preObjects;
		choose