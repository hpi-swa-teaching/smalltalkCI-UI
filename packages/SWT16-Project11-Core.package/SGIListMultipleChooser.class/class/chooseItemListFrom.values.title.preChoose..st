ui requests
chooseItemListFrom: someObjects values: values title: aString preChoose: preObjects
	^ self new
		title: aString;
		labels: (someObjects collect: [:ea | ea asString]);
		values: values;
		setPrechoice: preObjects;
		choose