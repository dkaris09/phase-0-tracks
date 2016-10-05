# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# includes files from your machine vs relative, which is including files from a Ruby library
#
require_relative 'state_data'

class VirusPredictor
  # sets additional attributes when a class instance is created
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # runs two methods, predicted_deaths and speed_of_spread


  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private
  # estimates influenza virus deaths depending on pop. density by establishing a floor
  def predicted_deaths
    # predicted deaths is solely based on population density
     
    if @population_density >= 200
      population_multiplier = 0.4
    elsif @population_density >= 150
      population_multiplier = 0.3
    elsif @population_density >= 100
      population_multiplier = 0.2
    elsif @population_density >= 50
      population_multiplier = 0.1
    else
      population_multiplier = 0.05
    end
    number_of_deaths = (@population * population_multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # estimates in months the number of deaths based off pop. density and prints 2 additonal newlines
  def speed_of_spread  #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end
    
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
# state = Viruspredictor.new

STATE_DATA.each do |state, state_info| 
  VirusPredictor.new(state, state_info[:population_density], state_info[:population]).virus_effects
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# # Reflection Section

# # What are the differences between the two different hash syntaxes shown in the state_data file?
# - The first hash(state,collection) has a string key and a nested hash as a value. 
# - The second hash(population_density,population) is a pair of symbols.

# # What does require_relative do? How is it different from require?
# - require_relative provides access to files from your personal machine or local file whereas require includes data from a Ruby library

# What are some ways to iterate through a hash?
# - You can use the each method to receive both the keys and values vs. each_key or each_value which will iterate one of them. 

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# - They were instance variables which were already defined in the initialize method and their values are local to the 
# - specific class instances. In this example, the instances were the state names.

# What concept did you most solidify in this challenge?
# - The scope of the different types of Ruby variables and how they affect method parameters.