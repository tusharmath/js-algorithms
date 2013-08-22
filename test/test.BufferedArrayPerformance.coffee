	operatorInt = (count, items) ->
		i=0
		start = (new Date).getTime()

		while(i++ != count)
			items[0] = 1000

		return (new Date).getTime() - start
	
	operatorSimple = (count, items) ->
		i=0
		start = (new Date).getTime()

		while(i++ != count)
			items[0] = 1000

		return (new Date).getTime() - start


	times = 1000 #* 1000
	simple = 0
	typed = 0
	while(times-- != 0)
		size = 1000*1000
		arrSize = size
		simpleArray = new Array arrSize
		i=0
		while (i isnt arrSize)
			simpleArray[i++] = 0

		uArray = new Uint8Array arrSize
		intArray = new Int8Array arrSize
		simple += operatorSimple(size, simpleArray)
		typed += operatorInt(size, intArray)
		console.log(times) if(times%100 is 0)
	console.log('Simple:', simple)	
	console.log('Typed:', typed)	
	done()







