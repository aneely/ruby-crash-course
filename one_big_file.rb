
# This is a comment; anything following a '#'.
# Humans can read comments, but Ruby ignores them.

# Ignore this for now; we'll come back to it.
# TL;DR: it's a tool to make this program's output
# a little easier to follow in the terminal. :)
# Don't worry, you'll be able to read this when we
# come back to it! :D
def title(text, max_length = 48)
  padding = max_length - text.length
  puts "\n<#{text}#{'-' * padding}>\n\n"
rescue ArgumentError => error
  custom_message =
    if padding.negative?
      " - Text too long; #{max_length} characters or less, please"
    else
      ""
    end
  raise "#{error.class}: #{error}#{custom_message}"
end


title("Basics")
# The simplest first program:
# prints the phrase "Hello world"

puts "Hello world"
print "My name is ", "A", "n", "d", "y", "\n"
puts "Thing one", "Thing two"


# Strings, like everything else in Ruby, are objects that can receive messages.
puts "fizz".reverse
puts "fizz".upcase


title("Numbers")
# Basically math

puts 400 + 20
puts 1 * 2 * 3 * 4
puts 15 % 5 # more on this later

# Numbers, like everything else in Ruby, are objects that can receive messages.
puts 1.positive?
puts 0.zero?
puts -1.negative?


title("Variables")
# Placeholders (buckets) for text, math, and other kinds of values

# Let's put the value "fizz" into a bucket called word.
word = "fizz"

# We can now call the same methods for the string "fizz"
# on the bucket that contains it.
puts word
puts word.reverse
puts word.upcase

# This works for numbers or any other type of value.
number = 1234

puts number
puts number.positive?
puts number.negative?


title("Types, Coercion, and Casting")
# Kinds of things and turning them from one to the other 

# Calling puts turns non-strings into strings before
# printing them. This is called coercion.
puts 1234
# The outcome is the same as us casting it first:
puts 1234.to_s

# String "1234" vs. Integer 1,234
puts "1234".class
puts 1234.class
puts "1234" == 1234.to_s # comparison; more on this later

puts "1234".reverse
# This next line will explode if we uncomment it (delete the first '#').
# It's because we're calling #reverse before turning a number into a string:
# puts number.reverse # same as => puts(number.reverse)

# Method chaining to the rescue! Let's cast it into a string,
# then reverse the characters (letters), then give it to puts.
puts number.to_s.reverse 

# Casting Strings to Integers works too, within reason
puts "1234".to_i == 1234
puts "non-digit strings turn into zero".to_i


title("Error-Handling")
# Useful tools when things go wrong

# un-comment next line to cause an explosion!
# number.upcase

begin
  puts number.reverse
rescue => error
  puts error.class
  puts error.message
  puts error
end


title("Loops, Lists, and Iteration")
# Let's make Ruby repeat itself so we don't have to

# Loops are great ways of doing the same work over and over
# on a collection of things you need worked on.
# You may have seen loops like this in other languages:

puts "while loop:"
num = 1
while num < 31 # more comparison!
  puts num
  num = num + 1
end

# Cool, cool; but we're working *way* harder than we need to.
# Let's pick up two new concepts that will make this easier!
# First one is lists, and the most common kind is an array:

array = [1,2,3,4,5,6,7,8,9,10] # an array is an explicit list of things
puts "\narray:"
puts array                     # just loops over all of them and prints each one!

# We still have a typing problem though, we have to add any new numbers
# by hand if we need them. What if we could just spell out the ends?

range = (1..10)                # a range is defined by two end points
puts "\nrange:"
puts range                     # but it doesn't automatically print the rest

# The range just prints the endpoints... How do we print each value?
# We *could* use casting to fix this by turning the range into an array.

puts "\nrange.to_a:"
puts range.to_a

# But what if we want more control? Let's add a second tool: blocks.
# We'll use the method 'each' that every list knows...
# and give it work to do to each thing in the list with a block!

puts "\nrange.each - simple:"
range.each { |number| puts number }

# If we want more lines of work in the block, we split it up like this:

puts "\nrange.each - fancier:"
range.each do |number|
  # 'number' here becomes the name for each number inside the range
  # as the block iterates over them. Pretty cool!
  puts "The number is:"
  puts number
end


title("Conditionals")
# How to do work only when you want it done

# What about only printing every even number?

puts "Do one thing or don't do anything:"
range.each { |number| puts number if number.even? }

# We can add another outcome to the same check if it's false:

puts "\nDo one thing or do something else:"
range.each do |number|
  if number.even?
    puts number
  else
    puts "NOPE"  
  end
end


title("Back-to-FizzBuzz")
# The return of our problem to solve

# Let's add another comparision with its own outcome:

puts "Do one thing if it evenly divides by 3,",
     "something else if it evenly divides by 5,",
     "or something else if neither was true:"
range.each do |number|
  if number % 3 == 0
    puts "fizz"
  elsif number % 5 == 0
    puts "buzz"
  else
    puts number 
  end
end


title("Methods")
# Naming reusable work

# We're doing nearly the same work for each branch above except for the number...
# Let's pack that work up to reuse in a method! It's like a block with a name!

def even_split?(num, by)
  num % by == 0
end

range.each do |number|
  if even_split?(number, 3)
    puts "fizz"
  elsif even_split?(number, 5)
    puts "buzz"
  else
    puts number
  end
end


title("Classes")
# What if we could teach a little robot to do this
# whenver we turned it on and pressed a button?

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


title("Oh-noes!-An-edge-case!")
# Hrm... this is going to break down at 15, because we don't ever get both..

puts "old and busted fuzzy output"
fuzzy = FizzBuzz.new(15)
fuzzy.output
# We need 15 to print "fizzbuzz", not just "fizz"... :thinking-face:


title("Extra-Classy")
# Let's make the factory build smarter robots

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


title("Monkey-Patching")
# You can change the way things work at runtime. Try this at home!
# (But maybe not in production without talking to your team first...)

# Every whole number in Ruby is a tiny robot, stamped from this factory!
# We can monkey with the factory to change the way they all work!
class Integer
  def even_split?(by)
    self % by == 0
  end

  # whoa... we can rename the original #to_s so we can still call it!
  alias old_to_s to_s 

  def to_s
    out = ""
    out << "fizz" if even_split?(3)
    out << "buzz" if even_split?(5)

    out.empty? ? old_to_s : out
  end
end

puts "Now the numbers themselves can handle the conditionals:"
puts 15.even_split?(3)
puts 15.even_split?(4)
puts 15.even_split?(5)

puts "\nAnd fizz buzz is just iterating outputing numbers as strings:"
(1..15).to_a.each { |number| puts number }

