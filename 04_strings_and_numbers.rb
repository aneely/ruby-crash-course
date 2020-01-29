require_relative 'helpers/title'

# Open your terminal and type 'ruby 04' and hit TAB then enter.
# Terminals can autocomplete! How cool is that?
# Do the same pattern from now on.

title("Strings")
# Strings are basically just text. We use them for input and output.

# BIG IDEA: Strings, like everything else in Ruby, are objects that can receive messages.

# Let's send a message to a string
puts "fizz".reverse
# Let's do it again.
puts "fizz".upcase

# The name of the message and the output should tell you all you need to know!
# Each time the string gave us back a copy made sense based on what we sent.

title("Numbers")
# Basically math: values and expressions that calculate values we need

puts 400 + 20
puts 1 * 2 * 3 * 4

# This one is special: divide 15 by 5 and return the remainder, even if
# it's zero. If it's zero, we know 15 is evenly divisible by 5...
puts 15 % 5
# Remember this for later for FizzBuzz

# Numbers, like everything else in Ruby, are objects that can receive messages.
puts 1.positive?
puts 0.zero?
puts -1.negative?

# Open the next file to keep going. I'll stop reminding you. You get it :)