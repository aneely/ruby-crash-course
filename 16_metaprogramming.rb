require_relative 'helpers/title'

title("Symbols")
# Symbols are kind of like strings but they're for the program.
# One cool thing they do is make hashes easier to write.
#
# Instead of string keys:

name = { "first" => "Andy", "last" => "Neely"}

# We can use symbols:

name = { :first => "Andy", :last => "Neely"}

# Which can be further shortened by ditching the 'hash rocket':

name = { first: "Andy", last: "Neely" }

# It's shorter to reference them now, we just use the ':' vs. "" for keys:

puts "My name is #{name[:first]} #{name[:last]}"

title("Metaprogramming")
# It's turtles all the way down, man...

# We can also use symbols to send messages dynamically.

[:reverse, :upcase, :empty?].each do |sym|
  puts "steve".send(sym)
end

# Ruby can create objects and methods at runtime that other
# code can call. It's powerful and a little goes a long ways.
#
# Here's a small example to get the wheels turning...

class FizzBuzz
  # turn it on, give it input...
  def initialize(number)
    @range = (1..number)
    @format_data = { "fuzz" => 3, "bizz" => 5 }
  end

  # Where'd 'range' come from?
  def output
    range.each { |number| puts format(number) }
  end

  private

  # any symbols we pass here turn into getter methods for
  # instance variables of the same name
  attr_reader :range, :format_data

  def even_split?(num, by)
    num % by == 0
  end

  # This is now another gear inside the robot
  def format(number)
    # Start with an empty string;
    # maybe change it, but definitely return it.
    "".tap do |output|
      format_data.each { |key, value| output << key if even_split?(number, value) }
      output << number.to_s if output.empty?
    end
  end
end

fizz_buzz = FizzBuzz.new(30)
# This will explode
# fizz_buzz.format(15)

# But this won't
puts fizz_buzz.send(:format, 15)

# If you kept up, great! Let's go to the last mind-bender in the next file.