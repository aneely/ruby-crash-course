require_relative 'helpers/title'

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

pause_here

# Cool, cool; but we're working *way* harder than we need to.
# Let's pick up two new concepts that will make this easier!
# First one is lists, and the most common kind is an array:

array = [1,2,3,4,5,6,7,8,9,10] # an array is an explicit list of things
puts "\narray:"
puts array                     # just loops over all of them and prints each one!

pause_here

# We still have a typing problem though, we have to add any new numbers
# by hand if we need them. What if we could just spell out the ends?

range = (1..10)                # a range is defined by two end points
puts "\nrange:"
puts range                     # but it doesn't automatically print the rest

pause_here

# The range just prints the endpoints... How do we print each value?
# We *could* use casting to fix this by turning the range into an array.

puts "\nrange.to_a:"
puts range.to_a

pause_here

# But what if we want more control? Let's add a second tool: blocks.
# We'll use the method 'each' that every list knows...
# and give it work to do to each thing in the list with a block!

pause_here

puts "\nrange.each - simple:"
range.each { |number| puts number }

# If we want more lines of work in the block, we split it up like this:

pause_here

puts "\nrange.each - fancier:"
range.each do |number|
  # 'number' here becomes the name for each number inside the range
  # as the block iterates over them. Pretty cool!
  puts "The number is:"
  puts number
end

puts "\n"

# BIG IDEA: collections are anything you can iterate over that represent
# zero or more strings. Arrays are literal lists and ranges are just the ends.

# Extra credit: uncomment the following line. Before you re-run the file,
# consider that a String is a string of characters. Now take a guess:
# what do you think will happen?
#
# "INCOMPREHENSIBILITIES".each_char { |c| puts c }