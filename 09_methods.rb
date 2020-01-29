require_relative 'helpers/title'

title("Methods")
# Naming reusable work

# We're doing nearly the same work for each branch above except for the number...
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

