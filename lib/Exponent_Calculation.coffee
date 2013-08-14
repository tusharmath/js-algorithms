_calculator = (num, exp) ->
	return num if exp == 1
	return 1 if exp == 0
	if exp % 2 == 0
		val = _calculator num, exp / 2
		return val * val
	else
		val = _calculator num, ( exp - 1) / 2
		return val * val * num
module.exports = _calculator