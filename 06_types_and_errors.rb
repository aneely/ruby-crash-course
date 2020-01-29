require_relative 'helpers/title'

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

number = 1234
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

puts "Hi Mom!"
