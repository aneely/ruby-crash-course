require_relative 'helpers/title'

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
