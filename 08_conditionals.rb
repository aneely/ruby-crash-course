require_relative 'helpers/title'

title("Conditionals")
# How to do work only when you want it done

# What about only printing every non-even number?

puts "Do one thing or don't do anything:"
range = (1..10)
range.each { |number| puts number unless number.even? }

# What about only printing every even number?

pause_here

puts "Do one thing or don't do anything:"
range = (1..10)
range.each { |number| puts number if number.even? }

pause_here

# We can add another outcome to the same check if it's false:

puts "\nDo one thing or do something else:"
range.each do |number|
  if number.even?
    puts number
  else
    puts "odd"
  end
end

pause_here

title("Back to FizzBuzz")
# The return of our problem to solve.
#
# We have used '%' # to get remainders of dividing two numbers.
# We can compare two things to see if they're equal. Let's
# pull that together with our conditionals.
#
# Let's add another comparision with its own outcome:

puts "Do one thing if it evenly divides by 3,",
     "something else if it evenly divides by 5,",
     "or something else if neither was true:"
range.each do |number|
  if number % 3 == 0
    puts "fizz"
  elsif number % 5 == 0
    puts "buzz"
  else
    puts number
  end
end

# BIG IDEA: Ruby lets you define conditionals in whatever way
# makes your code easy to think about and read.

# E