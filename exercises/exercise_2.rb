require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
@store1.update(name: "landon")
# @store1.name = 'Dave'
# @store1.save
puts @store1.name

@store2 = Store.find_by(id: 2)
puts @store2.name