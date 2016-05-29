# Development Conventions

## Issues
- Create a branch for each issue and merge it into master after you are done solving the issue.
- After solving a User-Story-ticket, move it to **Closed** and mark it with the **tobereviewed** label

## Code styles
- avoid using magic numbers, e.g. create a frame constant for every toolSpec 
- for every tool-component, create a own build-method
- "No dot after return" policie - no dots at the end of functions or closures
	- DO:
		^ self delete
	- DON'T:
		^ self delete.
- no newline after function title