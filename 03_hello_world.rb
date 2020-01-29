require_relative 'helpers/title'

title("Basics")
# The simplest first program:
# prints out the phrase "Hello world"

# 'puts' prints whatever follows, then moves to the next line.
puts "Hello world"
# 'print' is in Ruby but it stays on the same line.
print "My name is ", "A", "n", "d"
# Still on the same line.
print "y"
# Let's give it a 'newline' character to push the output down.
print "\n"
# Let's stick with 'puts' for now. By the way, look how we can
# feed it more things and it goes to the next line after each one.
puts "Thing one", "Thing two"
