class Car
  attr_reader :name
  attr_accessor :color

  # Constructor - must be named 'initialize'!
  def initialize(color, name)
    puts 'Creating a new car!'
    @color = color
    @name = name
    @engine_started = false
  end

  def engine_started?
    @engine_started
  end

  def start_engine!
    start_fuel_pump
    init_spark_plug
    @engine_started = true
  end

  private

  def init_spark_plug
    puts 'Spark plug started'
  end

  def start_fuel_pump
    puts 'Fuel pump started'
  end

  # Explicit reader
  # def name
  #   return @name
  # end

  # def color
  #   return @color
  # end

  # Explicit writer
  # def color=(new_color)
  #   @color = new_color
  # end
end


# this_is_snake_case
# ThisIsCamelCase

red_car = Car.new('red', 'Chevy')
blue_car = Car.new('blue', 'Bentley')

puts "Red car started? #{red_car.engine_started?}"
puts "--------------------"
puts "\nStarting red car..."
red_car.start_engine!
puts "Done\n\n"
# Won't work! It's a private method.
red_car.start_fuel_pump

puts "--------------------"
puts "Red car started? #{red_car.engine_started?}"
puts "Blue car started? #{blue_car.engine_started?}"

puts '///////////'
puts red_car.name
puts red_car.color
puts blue_car.name
puts blue_car.color

puts 'Painting the red car pink...'
red_car.color = 'pink'
puts red_car.color

# Won't work - no writer defined!red_car.name = 'Mazda'
# red_car.name = 'Mazda'


p red_car
p blue_car


# my_string = String.new('hello world')
# p my_string


def full_name(first_name, last_name)
  formatted = "#{first_name.capitalize} #{last_name.capitalize}"
  return formatted
end

# Will NOT work:
# puts formatted

# puts full_name('bob', 'dylan')
