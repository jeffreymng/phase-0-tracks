#Species------------------
#Werewolf (Lycanthrope)

#Characteristics----------
#Sharp Claws
#Enhanced Strength, Speed, and Smell
#Fur Color: Varies
#Fang Size: Varies
#Age: Varies

#Behavior-----------------
#Able to transform into a human or Werewolf
#Bloodthirsty
#Howls at the moon often
#Hates Silver

class Werewolf

  attr_reader :sharp_claws, :enhanced_body
  attr_accessor :fur_color, :fang_size, :age

  def initialize(age, fur, fang)
    puts "Bitten by a werewolf."
    @age = age
    @fur_color = fur
    @fang_size = fang
    @enhanced_body = "This is a very strong werewolf."
    @sharp_claws = "The werewolf unsheaths its claws."
  end

  def transform(form)
    if form == "human"
      puts "The werewolf is currently in human form."
    else
      puts "The werewolf is currently in wolf form."
    end
  end

  def howl
    puts "AWHOOOOOOOOOOOOOOOO"
  end

  def hungry
    puts "The werewolf stares at you and hungrily licks its lips."
  end

  def silver
    puts "*whimper*"
  end

end
