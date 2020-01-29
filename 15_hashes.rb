require_relative 'helpers/title'

title("Hashes")
# Keys and values can come in handy sometimes

# What if we wanted to make it so we could change FizzBuzz
# in one place and affect both the trigger numbers and the
# output by modifying one place?

# Hashes are another kind of list: a list of names and values

name = { "first" => "Andy", "last" => "Neely"}

# You can grab the keys or the values:

puts name.keys
puts name.values

# But they come alive when you ask for what you need by the key:

puts "My name is #{name["first"]} #{name["last"]}"

pause_here

title("Hashes")

module NumberUtilities
  def even_split?(num, by)
    num % by == 0
  end
end

class FizzBuzz
  include NumberUtilities

  # turn it on, give it input...
  def initialize(number)
    @range = (1..number)
  end

  # the button to make it go:
  def output
    @range.each { |number| puts format(number) }
  end

  private

  # This is now another gear inside the robot
  def format(number)
    # Start with an empty string;
    # maybe change it, but definitely return it.
    "".tap do |output|
      output << "fizz" if even_split?(number, 3)
      output << "buzz" if even_split?(number, 5)
      output << number.to_s if output.empty?
    end
  end
end

# Let's subclass FizzBuzz and specialize it to run on a hash

class FuzzBizz < FizzBuzz
  include NumberUtilities

  # turn it on, give it input...
  def initialize(number)
    @range = (1..number)
    @format_data = { "fuzz" => 3, "bizz" => 5 }
  end

  private

  # This is a different gear inside the robot
  def format(number)
    # Start with an empty string;
    # maybe change it, but definitely return it.
    "".tap do |output|
      @format_data.each do |key, value|
        output << key if even_split?(number, value)
      end
      output << number.to_s if output.empty?
    end
  end
end

FuzzBizz.new(15).output

# Extra credit: can you fix up the factory below to make the
# hash an argument? How about changing what numbers cause which output?

class FozzBozzBazz < FuzzBizz
  # turn it on, give it input...
  def initialize(number, hash)
    @range = (1..number)
    @format_data = hash
  end
end

# FozzBozzBazz.new(30, {"fozz" => 2, "bozz" => 3, "bazz" => 4}).output