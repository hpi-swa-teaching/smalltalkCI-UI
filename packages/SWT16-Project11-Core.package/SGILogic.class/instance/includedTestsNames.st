accessing
includedTestsNames
	| sci |
	sci := SmalltalkCI for: self data generateSmalltalkCISpecObject.
	^ sci classesToTest asOrderedCollection