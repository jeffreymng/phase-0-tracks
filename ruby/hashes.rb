# initialize a hash
# ask the user for their name, age, # of children, decor theme, is their favorite color red, address, phone #, and if they like feng shui
# store in symbols
# convert input to appropriate data type
# print hash out back to user when they are finished
# allow user to change any incorrect key
# if none, skip and print again
# else ask what needs to be changed
# convert gets.chomp string to symbol
# call symbol and change it to new value
# print hash

puts "What is your name?"
designer_applicant[:name] = gets.chomp

puts "How old are you?"
designer_applicant[:age] = gets.chomp.to_i

puts "What is your address?"
designer_applicant[:address] = gets.chomp

puts "What is your phone number? (Only numbers, please)"
designer_applicant[:phone_number] = gets.chomp.to_i

puts "How many children do you have?"
designer_applicant[:children] = gets.chomp.to_i

puts "What is your preferred decor theme?"
designer_applicant[:decor_theme] = gets.chomp

puts "Is your favorite color red?"
designer_applicant[:red_favorite] = gets.chomp.downcase
  if designer_applicant[:red_favorite] == "yes"
    designer_applicant[:red_favorite] = true
  else
    designer_applicant[:red_favorite] = false
  end

puts "Do you like feng shui?"
designer_applicant[:feng_shui] = gets.chomp.downcase
  if designer_applicant[:feng_shui] == "yes"
    designer_applicant[:feng_shui] = true
  else
    designer_applicant[:feng_shui] = false
  end

p designer_applicant

puts "Is there anything you would like to change? (none if nothing)"
change_key = gets.chomp
  if change_key == "none"
    p designer_applicant
  else
    new_key = change_key.to_sym
  end

puts "What would you like your new #{new_key} to be?"
designer_applicant[new_key] = gets.chomp

p designer_applicant