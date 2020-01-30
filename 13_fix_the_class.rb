require_relative 'helpers/title'

title("Extra Classy")
# Let's make the factory build smarter robots

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
    # Let's learn an alternative to if..elsif..elsif..else for handling 15:
    # Start with an empty string, maybe change it, but definitely return it.
    "".tap do |output|
      # Add 'fizz' to the end of whatever's in the string.
      # Note: adding "fizz" to the end of "" gives us "fizz"
      output << "fizz" if even_split?(number, 3)
      # Add 'buzz' to the end of whatever's in the string.
      # Note: adding "buzz" to the end of "" gives us "buzz"...
      # adding "buzz" to the end of "fizz" gives us "fizzbuzz"
      output << "buzz" if even_split?(number, 5)
      # If nothing was added, lets just cast the number and add that to the end.
      output << number.to_s if output.empty?
    end
  end
end

puts "new fizzy hotness"
fizzy = FizzBuzz.new(15)
fizzy.output
puts "\nWoo-hoo! We got our 'fizzbuzz' for 15 and it should scale up from here"
