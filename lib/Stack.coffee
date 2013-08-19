class Stack 
	constructor: ->
		@_stack = []

	push: (num) ->
		#console.log 'Push', @_stack, num
		@_stack.push(num)

	pop: ->
		#console.log 'Pop', @_stack, @top()
		@_stack.pop()


	top: ->
		#console.log @_stack
		@_stack[@_stack.length-1]

	isEmpty: ->		
		@_stack.length is 0


module.exports = Stack