should = require 'should'
describe 'Typed_Array_Performance', ->
	traveller = (item) ->
			i = 0
			start = new Date;
			while i < item.length
				i++;
			end = new Date;
			return end - start;
			
		size = 100 * 100 * 100 * 100 * 10;
		
	it 'should perform better', ->
		tArr = new Int8Array(size);
		oArr = new Array(size);
		tArrTime = traveller tArr
		oArrTime = traveller oArr
		tArrTime.should.be.below oArrTime
