should = require("should")
algo = require("../lib/Maximum_Subsequence_Sum_Problem")
describe "Maximum_Subsequence_Sum_Problem", ->
	it "should pass", ->
		algo([-2, 1, -3, 4, -1, 2, 1, -5, 4]).should.equal 6
		algo([4, -3, 5, -2, -1, 2, 6, -2]).should.equal 11


