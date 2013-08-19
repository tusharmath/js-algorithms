Stack = require './Stack'

operators = ['+', '-' , '*' , '/' , '(' , ')' , '^']
	
precedence = (n,m) ->
	precedence_key = 
		'+' : 1
		'-' : 1
		'*' : 2
		'/' : 2
		'^' : 3
	
	return -1 if(n is m and n is '^')
	precedence_key[n] - precedence_key[m]

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