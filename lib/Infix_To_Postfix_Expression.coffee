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

operators = ['+', '-' , '*' , '/' , '(' , ')']
	
precedence = (n,m) ->
	precedence_key = 
		'+' : 1
		'-' : 1
		'*' : 2
		'/' : 3
		'(' : -1
		')'	: -2
	return precedence_key[n] - precedence_key[m]

isOperator = (opr) ->
	operators.indexOf(opr) > -1


algo = (exp) ->
	#console.log exp
	stack = new Stack
	postFix = []

	for opr in exp
		if (isOperator(opr) == true)
			if(opr is '(')
				stack.push opr
			else if(opr is ')')
				while(stack.isEmpty() is false and (s= stack.pop()) isnt '(')
					postFix.push(s)
			else if (stack.isEmpty())
				stack.push opr
			else
				if(precedence(stack.top(), opr) < 0)
					stack.push(opr)
				else	
					while(stack.top() and precedence(stack.top(), opr) >= 0)			
						postFix.push(stack.pop()) if (stack.top() isnt '(')
					stack.push(opr)	
		else
			postFix.push opr
	
	while (s = stack.pop())
		postFix.push s #if (s isnt '(')
	postFix.join ''	


module.exports = algo