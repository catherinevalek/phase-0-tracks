
# Virus Predictor

# I worked on this challenge with Nikita.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows us to access a file in the same
# directory without having to copy the direct code
# require looks through ruby gems to see if a certain library is present
require_relative 'state_data'

class VirusPredictor
# assigns attributes of state, population, and population density to an instance of VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# calls predicted_deaths and speed_of_spread methods below
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
# takes pop., pop. density, and state as arguments and compares them against certain thresholds
# and generates a number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when 0...50
      number_of_deaths = (@population * 0.05).floor
    when 50...100
      number_of_deaths = (@population * 0.1).floor
    when 100...150
      number_of_deaths = (@population * 0.2).floor
    when 150...200
      number_of_deaths = (@population * 0.3).floor
    else
      number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# generates speed of spread of disease based on certain population densities
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    months = if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

    puts " and will spread across the state in #{months} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, data|
  current_state = VirusPredictor.new(state, data[:population_density], data[:population])
  current_state.virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in 
# the state_data file?
# One uses has rockets and one uses symbols. Hash rockets can facilitate strings
# as keys. 
# What does require_relative do? How is it different from require?
# Require_relative allows us to access a file in the same
# directory without having to copy the direct code.
# Require looks through ruby gems to see if a certain library is present.
# What are some ways to iterate through a hash?
# You can iterate with .each.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# It wasn't necessary to have the instance variables as arguments, because they are
# accessible in all the methods in the class. 
# What concept did you most solidify in this challenge?
# This solidified when and how to use attributes. 


