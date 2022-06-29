require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

sum = Store.pluck(:annual_revenue).sum
puts sum
average = Store.pluck(:annual_revenue).sum/(Store.count)
puts average
store = Store.where("annual_revenue > ?" , 1000000).count
puts store