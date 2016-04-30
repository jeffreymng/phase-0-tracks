# Method to create a list
# define method called new_list(string of items)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create an empty hash
  # separate string by each space
  # iterate over each value in array and input into hash
  # set default quantity to 1
  # print the list to the console [p hash]
# output: [hash]

def new_list(items)
  grocery_list = Hash.new
  items_array = items.split(" ")
  items_array.each do |item|
    grocery_list[item] = 1
  end
  grocery_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: add new item and quantity to hash
# output: print new hash with updated item

def add_item(list, item, quantity = 1)
  list[item] = quantity
end

# Method to remove an item from the list
# input: name of the item
# steps: use .delete to remove an item from the hash
# output: print new hash with deleted item

def remove_item(list, item)
  list.delete(item)
end

# Method to update the quantity of an item
# input: name as string, new quantity
# steps: search hash for string and make it equal to the new quantity
# output: print hash with updated quantity

def update_quantity(list, item, quantity)
  list[item] = quantity
end

# Method to print a list and make it look pretty
# input:
# steps: .each do puts "Buy # item"
# output: "Buy quantity of item"

def print_list(list)
  list.each do |item, quantity|
    puts "Buy #{quantity} of #{item}."
  end
end

# TEST CODE

grocery_list = new_list("")
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
remove_item(grocery_list, "Lemonade")
update_quantity(grocery_list, "Ice Cream", 1)

print_list(grocery_list)

# Reflect
# I don't usually pseudocode on my solo challenges unless it's specified as it is my preference to jump into coding immediately but from this challenge, I learned that specific pseudocode is actually extremely helpful and useful when translating that to code. Because of that, I knew exactly what to do and what methods to use. We chose to use a hash for this challenge because we felt it best fit the challenge. We were asked for two objects, one of which acted as the key and the other as the value, or quantity. An array would've worked fine as well, but the hash was much better suited to this one. A method returns the last line of what you defined in the method.You can pass any object into a method as an argument (arrays, hashes, strings, integers, etc.). Passing information between methods involves storing what a method returns into a new variable and then using that variable in another method. This challenge solidified my understanding of what a method returns and how to pass information between different methods.