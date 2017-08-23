# module Shout
  
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end

# end

# p Shout.yell_angrily('wow')
# p Shout.yell_happily('wow')

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :)"
  end
end

class Child
  include Shout
end

class Sports_fan
  include Shout
end

tom = Child.new
p tom.yell_angrily("I'm hungry")

joe = Sports_fan.new
p joe.yell_happily("gooaalllll")




