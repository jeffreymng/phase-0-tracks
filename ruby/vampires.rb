puts "How many employees will be processed?"
  employee_number = gets.chomp.to_i
employees_processed = 0
until employees_processed == employee_number
  puts  "What is your name?"
    vampire_name = gets.chomp.downcase
  puts "How old are you? What year were you born?"
    vampire_age = gets.chomp.to_i
    vampire_year = gets.chomp.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    garlic_bread = gets.chomp.downcase
  puts "Would you like to enroll in the company's health insurance?"
    health_insurance = gets.chomp.downcase
  if 2016 - vampire_year == vampire_age
    correct_age = true
  else
    correct_age = false
  end
  if garlic_bread == "yes"
    likes_garlic = true
  else
    likes_garlic = false
  end
  if health_insurance == "yes"
    sign_up = true
  else
    sign_up = false
  end
  user_allergies = nil
  until user_allergies == "done"
    puts "Please name any allergies one at a time. Type 'done' when finished."
    user_allergies = gets.chomp.downcase
    if user_allergies == "sunshine"
      correct_age = false
      likes_garlic = false
      sign_up = true
      user_allergies = "done"
    end
  end
  if correct_age && (likes_garlic || sign_up)
    puts "Probably not a vampire."
  elsif correct_age == false && (likes_garlic == false || sign_up == false)
    puts "Probably a vampire."
  elsif correct_age == false && likes_garlic == false && sign_up == false
    puts "Almost certainly a vampire."
  elsif vampire_name == "drake cula"
    puts "Definitely a vampire."
  elsif vampire_name == "tu fang"
    puts "Definitely a vampire."
  else
    puts "Results inconclusive."
  end
  employees_processed += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."