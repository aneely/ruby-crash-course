require_relative '03_title'

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


title("Specialized Classes")
# Sometimes you need something a little extra from a robot

# What if our FizzBuzz works for our needs most of the time, but
# we need particular output for special occasions?
# That's where inheritance come in handy!

# By inheriting from (or subclassing) FizzBuzz,
# FlyWhizz pick up everything that factory know how to build.
class FlyWhizz < FizzBuzz
  private

  # By changing (or overriding) #format, we only override
  # that behavior when we press the button. Everything
  # else? Just Works™
  def format(number)
    if even_split?(number, 3) && even_split?(number, 5)
      "Tony"
    elsif even_split?(number, 3)
      "Rick"
    elsif even_split?(number, 5)
      "Dusty"
    else
      "Karen"
    end
  end
end

# Let's give feed it the input and press the button!
puts "In honor of Fly Fest:"
FlyWhizz.new(15).output

