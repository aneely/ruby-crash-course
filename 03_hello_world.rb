
# I'll stop reminding you to ignore this.
require_relative 'helpers/title'

# I'll stop reminding you to open your terminal and type 'ruby 03_hello_world.rb'
# to see the output for now. But I'll give you a better hint next time.
title("Basics")

# The simplest first program: prints out the phrase "Hello world".
# This file does that and shows a bit more.

# 'puts' prints whatever follows, then moves to the next line.
# Open your terminal and type 'ruby 03_hello_world.rb' to see.
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

# Open the next file to keep going.