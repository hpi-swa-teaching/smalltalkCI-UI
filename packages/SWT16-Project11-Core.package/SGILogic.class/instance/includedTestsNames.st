accessing
includedTestsNames
	| sci |
	sci := SmalltalkCI for: self model generateSmalltalkCISpecObject.
	^ sci classesToTest asOrderedCollection