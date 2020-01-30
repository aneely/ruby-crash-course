require_relative 'helpers/title'

title("Monkey-Patching")
# You can change the way things work at runtime. Try this at home!
# (But maybe not in production without talking to your team first...)

# Every whole number in Ruby is a tiny robot, stamped from this factory!
# We can monkey with the factory to change the way they all work!
class Integer
  def even_split?(by)
    self % by == 0
  end

  # whoa... we can rename the original #to_s so we can still call it!
  alias old_to_s to_s

  def to_s
    out = ""
    out << "fizz" if even_split?(3)
    out << "buzz" if even_split?(5)

    out.empty? ? old_to_s : out
  end
end

puts "Now the numbers themselves can handle the conditionals:"
puts 15.even_split?(3)
puts 15.even_split?(4)
puts 15.even_split?(5)

puts "\nAnd solving FizzBuzz is just outputting a range of numbers as strings:"
(1..15).each { |number| puts number }

# Congratulations! You've made it to the end of the crash course!
# Extra credit: Now go back to the 'helpers/' directory and read the 'title.rb' file.