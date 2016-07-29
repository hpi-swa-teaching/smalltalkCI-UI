prechoice
setPrechoice: someObjects 
	1 to: self values size do: [ :i | | value |
		value := self values at: i.
		someObjects do: [ :prechoice | (value asString = prechoice asString) ifTrue: [ self selectionAt: i put: true ] ] ]