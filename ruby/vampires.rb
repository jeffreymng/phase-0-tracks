puts  "What is your name?"
  vampire_name = gets.chomp
puts "How old are you? What year were you born?"
  vampire_age = gets.chomp.to_i
  vampire_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic_bread = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
  health_insurance = gets.chomp

if 2016 - vampire_year == vampire_age
  correct_age = true
else
  correct_age = false
end

if garlic_bread == "Yes"
  likes_garlic = true
else
  likes_garlic = false
end

if health_insurance == "Yes"
  sign_up = true
else
  sign_up = false
end

if correct_age && (likes_garlic || sign_up)
  puts "Probably not a vampire."
elsif correct_age == false && (likes_garlic == false || sign_up == false)
  puts "Probably a vampire."
elsif correct_age == false && likes_garlic == false && sign_up == false
  puts "Almost certainly a vampire."
elsif vampire_name == "Drake Cula"
  puts "Definitely a vampire."
elsif vampire_name == "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Results inconclusive."
end