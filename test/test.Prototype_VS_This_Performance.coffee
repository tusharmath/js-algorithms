should = require "should"

describe "Prototype_vs_This_Performance", ->

	creator = (count, obj) ->
		i=0
		start = (new Date).getTime()

		while i++ != count
			r = new obj
			r.executable1()
			r.executable2()
			r.executable3()
			r.executable4()
			r.executable5()
			#console.log 'Created:', i

		return (new Date).getTime() - start


	it "should pass", (done) ->
		class _prototype_constructor
			executable1:-> 
			executable2:-> 
			executable3:-> 
			executable4:-> 
			executable5:-> 
			

		class _this_constructor
			constructor: ->
				@executable1=-> 
				@executable2=-> 
				@executable3=-> 
				@executable4=-> 
				@executable5=-> 

		size = 100*100*100
		console.log('Prototype:',(creator size, _prototype_constructor))
		console.log('This:',(creator size, _this_constructor))
		done()







