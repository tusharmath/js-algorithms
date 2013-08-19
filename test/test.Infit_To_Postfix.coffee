should = require "should"
algo = require "../lib/Infix_To_Postfix_Expression"
describe "Infix_To_Postfix", ->

	it "should pass", ->
		(algo '2+3').should.equal '23+'
	
	it "should pass", ->
		(algo '2+3-4').should.equal '23+4-'
	
	it "should pass", ->
		(algo '2+3+4*7').should.equal '23+47*+'
		(algo '2+3*4/7').should.equal '234*7/+'
	
	it "should pass", ->
		(algo '2+3*4-5/7+4/8/2/4').should.equal '234*+57/-48/2/4/+'
	
	it "should pass power", ->
		(algo '2^3^4').should.equal '234^^'

	it "should pass", ->
		(algo '2+3/4*8').should.equal '234/8*+'
	
	it "should pass", ->
		(algo '2+(3-4)*1').should.equal '234-1*+'
		(algo '(((2+(3-((((4)*1)))))))').should.equal '2341*-+'
	
	it "should pass ", ->
		(algo '5/(7+4)*7').should.equal '574+/7*'

	it "should pass wiki example", ->
		(algo '3+4*2/(1-5)^2^3').should.equal '342*15-23^^/+'
