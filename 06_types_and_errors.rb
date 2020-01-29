require_relative 'helpers/title'

title("Types, Coercion, and Casting")
# Kinds of things and turning them from one to the other

# Calling puts turns non-strings into strings before printing them.
# This is called coercion.
puts 1234

# The outcome is the same as us changing it ourselves first.
# This is called casting:
puts 1234.to_s

# String "1234" vs. Integer 1,234
puts "1234".class
puts 1234.class
puts "1234" == 1234.to_s # comparison; more on this later

puts "1234".reverse

# Casting Strings to Integers works too, within reason
puts "1234".to_i == 1234
puts "non-digit strings turn into zero".to_i

title("Explosive Errors")
# Problems can make your code explode!

number = 1234

# Question: If 'puts' turns things into a string, is this safe? 'puts number.reverse'
# NO!
#
# That will explode and the rest of this program won't run.
# BIG IDEA: unexpected errors can crash your Ruby program
#
# Try it now, CRASH THIS PROGRAM:
# 1) delete the '#' in front of the next 'puts'
# 2) run the file and look at the output
# 3) then put the '#' back to fix it
# 4) run the program again to make sure it works

# puts number.reverse

# It's because we're calling #reverse before turning a number into a string.
# BIG IDEA: the order of operations in a line of Ruby matters

# The explosive line above is the same as:

# puts(number.reverse)

# 'number' gets the 'reverse' message, but explodes before going to 'puts'

# Method chaining to the rescue! Let's cast it into a string,
# then reverse the characters (letters), then give it to puts.

puts number.to_s.reverse

# 'number' gets 'to_s' and returns a string which gets 'reverse', then
# it's fed (passed as an argument) to puts.
#
# BIG IDEA: in Ruby, every message returns something,
# and you can send what comes a message too.

title("Error-Handling")
# Useful tools when things go wrong

# What if something _might_ explode and we want to handle it?

# We can construct a little blast-chamber, catch the explosion,
# and give it a name.

begin
  puts number.reverse
rescue => error
  # 'error' is just another object. We can send it messages, too.
  puts error.class
  puts error.message
  puts error
end

# We can see that 'puts error.message' and 'puts error' have the
# output. 'puts' calls `.to_s` on what we give it, and Error
# objects respond by just handing back their 'message'. Sweet!
#
# Best of all, we can keep going.
puts "Hi Mom! Made it to the end of the file."
