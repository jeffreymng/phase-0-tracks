#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#  def self.yelling_happily(words)
#    words + "!!!" + " :D"
#  end
#end
#
#p Shout.yell_angrily("No")
#p Shout.yelling_happily("Yay")

module Shout
  def cheer(team)
    puts "GO #{team.upcase}!!!!!"
  end
end

class Football
  include Shout
end

class Basketball
  include Shout
end

football = Football.new
football.cheer("New York Jets")

basketball = Basketball.new
basketball.cheer("Pheonix Suns")