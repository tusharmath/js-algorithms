module.exports = (items) ->
	maxSum = 0
	currVal = 0
	i = 0

	while i < items.length
		currVal += items[i]
		currVal = 0  if currVal < 0
		maxSum = currVal  if currVal > maxSum
		i++
	maxSum
