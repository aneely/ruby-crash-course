require_relative '03_title'

title("Extra-Classy")
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
    # Start with an empty string;
    # maybe change it, but definitely return it.
    "".tap do |output|
      output << "fizz" if even_split?(number, 3)
      output << "buzz" if even_split?(number, 5)
      output << number.to_s if output.empty?
    end
  end
end

puts "new fizzy hotness"
fizzy = FizzBuzz.new(15)
fizzy.output
