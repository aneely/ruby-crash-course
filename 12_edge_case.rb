require_relative 'helpers/title'

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

title("Oh noes! An edge case!")
# Hrm... this is going to break down at 15, because we don't ever get both..

puts "old and busted fuzzy output"
fuzzy = FizzBuzz.new(15)
fuzzy.output
# crap
puts "\nWe need 15 to print 'fizzbuzz', not just 'fizz'... :thinking-face:"

# Extra credit: can you fix the factory above to handle 15? Check the conditionals example.