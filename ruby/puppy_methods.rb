class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age)
    age * 7
  end

  def play_dead
    puts "lays down and doesn't move for 20 seconds"
  end
end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
p fido.dog_years(3)
fido.play_dead