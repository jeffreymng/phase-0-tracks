class Puppy

  def initialize
    puts "Initializing new Puppy instance..."
  end

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

class Soccer_Player

  def initialize
    puts "new player joins the team"
  end

  def kick
    puts "kicks the ball"
  end

  def pass
    puts "passes the ball"
  end

  def steal
    puts "steals the ball"
  end

end

soccer_team = []
for i in 1 .. 50
  player = Soccer_Player.new
  soccer_team << player
end

puts soccer_team


soccer_team.each do |member|
  member.kick
  member.pass
  member.steal
end