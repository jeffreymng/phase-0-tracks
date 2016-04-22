def hello
  puts "Hello World"
  3.times { yield("3") }
end

hello { |count| puts "This is our new method #{count}." }

#In phase-0-tracks/ruby/iteration.rb, declare an array and a hash, and populate each of them with some data.

#Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way). Print the data structures before and after each call to demonstrate whether they have been modified or not.

names = ["john", "harry", "benjamin"]
food_types = {
  fruit: "banana",
  vegetable: "lettuce",
  nuts: "peanuts",
  meat: "beef"
  }

puts "before .each call"

p names
p food_types

puts "after .each call"

capitalized_names = []
names.each do |name|
  capitalized_names << name.capitalize
end
p capitalized_names

food_types.each do |category, food|
  puts "A type of #{category} is #{food}."
end

puts "after .map!"

names.map! do |name|
  name.capitalize
end

p names

int = [ 1, 2, 3, 4, 5, 6]
# delete_if { |item| block } → ary
int.delete_if { |integer| integer < 5 }
p int

int = [ 1, 2, 3, 4, 5, 6]
int.keep_if { |integer| integer < 5 }
p int

int = [ 1, 2, 3, 4, 5, 6]
int.keep_if { |integer| integer.odd? }
p int

# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
