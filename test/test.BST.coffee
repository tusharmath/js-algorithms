should = require "should"
BST = require "../lib/BST"
describe "BST", ->

	bst = new BST;
	bst.add(100)
	bst.add(50)
	bst.add(150)
	
	it "should save correctly", ->
		bst.head.val.should.equal(100)
		bst.head.left.val.should.equal(50)
		bst.head.right.val.should.equal(150)

	it "should prefix traverse", ->
		bst.prefix().should.eql [100, 50, 150]

	it "should infix traverse", ->
		bst.infix().should.eql [50, 100, 150]

	it "should postfix traverse", ->
		bst.postfix().should.eql [50, 150, 100]
