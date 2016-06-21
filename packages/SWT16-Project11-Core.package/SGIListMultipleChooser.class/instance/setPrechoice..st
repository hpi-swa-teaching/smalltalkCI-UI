prechoice
setPrechoice: someObjects
	| i |

	i := 0.
	self values do: [:value | i := i + 1.
		someObjects do: [:pre |
			(value asString = pre asString) ifTrue: [self selectionAt: i put: true]]]
