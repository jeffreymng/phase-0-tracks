def build_array(item1, item2, item3)
  [item1, item2, item3]
end

def add_to_array(array, item)
  array << item
end

random_array = []
p random_array

random_array << "1" << 2 << "3" << 4 << true
p random_array

random_array.delete_at(2)
p random_array

random_array.insert(2, "peanuts")
p random_array

random_array.delete("1")
p random_array

if random_array.include?("peanuts")
  puts "There are peanuts in this array."
else
  puts "There are no peanuts."
end

array2 = ["walnuts", "cashews"]

new_array = random_array + array2
p new_array

p build_array(true, false, "white")
p add_to_array([], "red")
p add_to_array(["red", "white", "blue"], "green")
p add_to_array(array2, "peanuts")