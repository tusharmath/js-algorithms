should = require "should"
algo = require "../lib/Exponent_Calculation"
describe "Exponent_Calculation", ->
	it "should pass", ->
		algo(2, 40).should.equal 1099511627776