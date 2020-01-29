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

