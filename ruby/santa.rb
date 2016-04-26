class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @age = rand(140)
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at
    @reindeer_ranking.rotate!
  end

end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = []

10.times do
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

santas.each {|santa| puts "#{santa} is #{santa.age} years old, is of #{santa.ethnicity} ethnicity, and identifies as #{santa.gender}."}






#Driver Code:
#nick = Santa.new("male", "chinese")
#nick.speak
#nick.eat_milk_and_cookies("mint chocolate chip")
#santas = []
#santas << Santa.new("male", "Chinese")
#santas << Santa.new("female", "Dutch")
#santas << Santa.new("pangender", "German")
#santas << Santa.new("other", "Czech")
#santas << Santa.new("genderqueer", "Scandinavian")
#nick.celebrate_birthday
#nick.get_mad_at
#nick.gender = "bigender"
#p nick.age
#p nick.ethnicity
