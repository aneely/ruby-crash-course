require_relative 'helpers/title'

title("Strings")
# Basically text

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
