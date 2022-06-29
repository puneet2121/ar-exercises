require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: "Surrey", annual_revenue: 224000,mens_apparel: false, womens_apparel: true)
store = Store.create(name: "Whistler", annual_revenue: 1900000,womens_apparel: false, mens_apparel: true)
store = Store.create(name: "Yaletown", annual_revenue: 430000,mens_apparel: true, womens_apparel: true)

@men_store = Store.where(mens_apparel:true)
puts @men_store

store = Store.new do |s|
  puts s.name 
  s.annual_revenue
end
