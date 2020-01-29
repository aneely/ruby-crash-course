require_relative 'helpers/title'

title("Methods")
# Naming reusable work

# We're doing nearly the same work for each branch except for the number...
# Let's pack that work up to reuse in a method! It's like a block with a name!

def even_split?(num, by)
  num % by == 0
end

range = (1..10)

range.each do |number|
  if even_split?(number, 3)
    puts "fizz"
  elsif even_split?(number, 5)
    puts "buzz"
  else
    puts number
  end
end

# BIG IDEA: Methods not only make the work reusable, they name it
# in a way that describes what it does to the reader of the program.

# But what if we need to do this in more than one place?
# We don't want to copy and paste this, only to have to find all those
# places if we need to change the way this works...

# Extra credit: this method is incomplete, but nothing's exploding
# because we're not using it yet. Fill it out and uncomment the
# last line of the file.
def shout()
  puts .upcase
end

# puts shout("I'm from Philadelphia. This is my inside voice.")