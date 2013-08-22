class TreeNode
	constructor: (val, left, right) ->
		return {val, left, right}

class BST
	add: (val, node) ->		
		if not @head
			return @head = new TreeNode val 
		node = node or @head 			
		if (val > node.val)
			if(node.right)
				add(val, node.right)
			else
				node.right = new TreeNode val
		else if (val < node.val)
			if(node.left)
				add(val, node.left)
			else
				node.left = new TreeNode val
		else 
			return new Error 'Value already present'
		return @head

	#PREFIX TRAVERSAL
	_prefix = (node, queue)-> 
		if node
			queue.push node.val 
			_prefix(node.left, queue)
			_prefix(node.right, queue)
		
	prefix: ()->
		queue = []
		_prefix(@head, queue)
		queue

	
	#INFIX TRAVERSAL
	_infix = (node, queue)-> 
		if node
			_infix(node.left, queue)
			queue.push node.val 
			_infix(node.right, queue)
	
	infix: ()->
		queue = []
		_infix(@head, queue)
		queue

	
	#POSTFIX TRAVERSAL
	_postfix = (node, queue)-> 
		if node
			_postfix(node.left, queue)
			_postfix(node.right, queue)
			queue.push node.val 
	
	postfix: ()->
		queue = []
		_postfix(@head, queue)
		queue

module.exports = BST