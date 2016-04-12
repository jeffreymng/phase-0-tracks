puts "What is the hamster's name?"
  hamster_name = gets.chomp
puts "How loud on a scale of 1-10 is the hamster?"
  hamster_volume = gets.chomp
   hamster_volume = hamster_volume.to_i
puts "What color is the hamster's fur?"
  hamster_color = gets.chomp
puts "Is the hamster a good candidate for adoption?"
  hamster_candidate = gets.chomp
    if hamster_candidate == "Yes"
      good_candidate = true
    else
      good_candidate = false
    end
puts "What is the estimated age of the hamster?"
  hamster_age = gets.chomp
    if hamster_age.empty?
     p hamster_age = nil
    else
     p hamster_age
      hamster_age = hamster_age.to_i
    end
puts "The hamster's name is #{hamster_name}"
puts "This hamster's volume is #{hamster_volume}"
puts "The hamster's fur color is #{hamster_color}"
if good_candidate == true
  puts "This hamster is a good candidate for adoption"
else
  puts "This hamster is not a good candidate for adoption."
end

if hamster_age == nil
  puts "We don't know how old this hamster is"
else
  puts "This hamster is around #{hamster_age}"
end