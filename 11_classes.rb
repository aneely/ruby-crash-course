require_relative '03_title'

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

# Let's turn it on!
buzzy = FizzBuzz.new(10)
# Now let's press the button to make it go!
puts "buzzy the FizzBuzz robot's (instance) output:"
buzzy.output

