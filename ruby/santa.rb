class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
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

  def change_gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end

nick = Santa.new("gender", "ethnicity")
nick.speak
nick.eat_milk_and_cookies("mint chocolate chip")
santas = []
santas << Santa.new("male", "Chinese")
santas << Santa.new("female", "Dutch")
santas << Santa.new("pangender", "German")
santas << Santa.new("other", "Czech")
santas << Santa.new("genderqueer", "Scandinavian")
