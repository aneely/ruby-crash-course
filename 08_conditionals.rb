require_relative 'helpers/title'

title("Conditionals")
# How to do work only when you want it done

# What about only printing every even number?

puts "Do one thing or don't do anything:"
range = (1..10)
range.each { |number| puts number if number.even? }

# We can add another outcome to the same check if it's false:

puts "\nDo one thing or do something else:"
range.each do |number|
  if number.even?
    puts number
  else
    puts "odd"
  end
end


title("Back to FizzBuzz")
# The return of our problem to solve

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

