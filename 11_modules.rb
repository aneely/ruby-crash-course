require_relative 'helpers/title'

title("Modules")
# Code sharing for sane people

# Knowing if numbers are evenly divisible by another number
# might be useful for other robots... How to we make it so
# that our robots can have it without keeping in their Class?

# Let's move it to a module...
module NumberUtilities
  def even_split?(num, by)
    num % by == 0
  end
end


class FizzBuzz
  # ...and mix that into our robot factory!
  include NumberUtilities

  # turn it on, give it input
  def initialize(number)
    @range = (1..number)
  end

  # the button to make it go
  def output
    @range.each do |number|
      if even_split?(number, 3)
        puts "fizz"
      elsif even_split?(number, 5)
        puts "buzz"
      else
        puts number
      end
    end
  end
end

puts "bizzy the FizzBuzz robot's (instance) output:"
bizzy = FizzBuzz.new(10)
bizzy.output

