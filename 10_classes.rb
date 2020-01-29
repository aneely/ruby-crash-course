require_relative 'helpers/title'

title("Classes")
# What if we could teach a little robot to do this
# whenever we turned it on and pressed a button?

# A class is like a factory that builds little robots
# that are called "instances"
class FizzBuzz
  # when you turn it on, it needs input...
  def initialize(number)
    @range = (1..number)
  end

  # Then you tell it to do the work!
  # Here's the button to press to make it go:
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

  private

  # This is now one of the gears inside the robot
  def even_split?(num, by)
    num % by == 0
  end
end

# BIG IDEA: 'private' separates the public interface
# from the private details that can change. This
# let's our code change over time without users
# having to worry about it breaking when they use it.
# This is called encapsulation.

# Let's turn it on!
buzzy = FizzBuzz.new(10)
# Now let's press the button to make it go!
puts "buzzy the FizzBuzz robot's (instance) output:"
buzzy.output

pause_here

# We can keep stamping them out with different input and
# hitting their output buttons, too.

puts "dizzy the FizzBuzz robot's (instance) output:"
dizzy = FizzBuzz.new(12)
dizzy.output

pause_here

# We don't even need to name them if we just want the output
puts "\nUnnamed Robot: Why do I exist?"
puts   "Programmer:    To print 'FizzBuzz"
puts   "Unnamed Robot: ...oh my god..."
FizzBuzz.new(13).output
puts   "(garbage collector fires up and sweeps him away)"

# Extra credit: The next factory is broken. Fix it up then
# uncomment the last line from the file.

# Counts up to a number, puts "Pling" if even, "Plong" if odd
class PlingPlang
  # when you turn it on, it needs input...
  def initialize(number)
    @range = (1..number)
  end

  # Then you tell it to do the work!
  # Here's the button to press to make it go:
  def output
    @range.each do |number|
      if
        puts "Pling"
      else
        puts "Plang"
      end
    end
  end
end

# PlingPlang.new(12).output