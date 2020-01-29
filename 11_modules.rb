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

pause_here

# We can reuse it for totally different robots, now.
class ThreeBot
  include NumberUtilities

  def initialize(number)
    @number = number
  end

  def run
    if even_split?(@number, 3)
      "Whacked #{@number} with 3 and got only DESIRABLE THREES"
    else
      "Whacked #{@number} with 3 and got JAGGED NON-THREE remainders"
    end
  end
end

puts "ThreeBot robot (instance) output:"
puts ThreeBot.new(5).run
puts ThreeBot.new(15).run

# EXTRA CREDIT: fix the next factory and uncomment the last two lines in the file.

class FourLocoBot
  # uncomment this
  # extend # what to extend?

  def self.run(number)
    if even_split?(number,) # hrm
      puts ""
    else
      puts ""
    end
  end
end

#FourLocoBot.run(8) # "AM LOCO"
#FourLocoBot.run(9) # "Not loco at all"