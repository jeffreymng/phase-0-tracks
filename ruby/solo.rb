#Species------------------
#Werewolf (Lycanthrope)

#Characteristics----------
#Sharp Claws
#Enhanced Strength, Speed, and Smell
#Fur Color: Varies
#Fang Size: Varies
#Age: Varies
#Name: Varies

#Behavior-----------------
#Able to transform into a human or Werewolf
#Bloodthirsty
#Howls at the moon often
#Hates Silver

class Werewolf

  attr_reader :sharp_claws, :enhanced_body
  attr_accessor :fur_color, :fang_size, :age, :name

  def initialize(name, age, fur, fang)
    puts "Bitten by a werewolf."
    @name = name
    @age = age
    @fur_color = fur
    @fang_size = fang
  end

  def transform(form)
    if form == "human"
      puts "#{@name} is currently in human form."
    else
      puts "#{@name} is currently in wolf form."
    end
  end

  def howl
    puts "AWHOOOOOOOOOOOOOOOO"
  end

  def hungry
    puts "#{@name} stares at you and hungrily licks their #{@fang_size} fangs."
  end

  def silver
    puts "*#{@name} cowers and whimpers in fear.*"
  end

end

werewolves = []

end_program = false
until end_program
  puts "Let's create a werewolf! Press 'Enter' to continue and type 'done' when you've created enough."
    done = gets.chomp.downcase
      if done == "done"
        end_program = true
      else
        puts "What is its name?"
          name = gets.chomp
        puts "How old are they?"
          age = gets.chomp.to_i
        puts "What color is their fur?"
          fur_color = gets.chomp
        puts "How large are its fangs?"
          fangs = gets.chomp
        current_werewolf = Werewolf.new(name, age, fur_color, fangs)
        werewolves << current_werewolf
      end
end

werewolves.each do |werewolf|
  puts "This werewolf's name is #{werewolf.name}."
  puts "#{werewolf.name} is #{werewolf.age} years old and has #{werewolf.fur_color} fur."
  puts "#{werewolf.name}'s fangs are #{werewolf.fang_size}."
  werewolf.hungry
  werewolf.howl
end