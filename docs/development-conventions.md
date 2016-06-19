# Development Conventions

## Issues
- create a branch for each issue
- write tests for each issue
- merge the branch into master after you resolved the issue
- if you solved a user story issue, move it to **Closed** and mark it as **tobereviewed**

## Merging
- only merge into master if the corresponding travis test has passed

## Tests
- write tests for new functions

## Code style
- avoid using magic numbers
- create a own build-method for every tool-component
- "No dot after return" policie - no dots at the end of functions or closures
	- DO:
		^ self delete
	- DON'T:
		^ self delete.
- no newline after function title
