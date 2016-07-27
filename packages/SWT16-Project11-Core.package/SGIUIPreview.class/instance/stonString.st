accessing
stonString
	^ STON toStringPretty: (self model checkTesting: (self model generateSmalltalkCISpecObject))