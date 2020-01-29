
# Ignore this for now; we'll come back to it.

# TL;DR: title() is a tool to make this program's output
# a little easier to follow in the terminal. :)
#
# Don't worry, you'll be able to read this when we
# come back to it at the end of the presentation! :D
def title(text, max_length = 48)
  padding = max_length - text.length
  puts "\n<#{text}#{'-' * padding}>\n\n"
rescue ArgumentError => error
  custom_message =
      if padding.negative?
        " - Text too long; #{max_length} characters or less, please"
      else
        ""
      end
  raise "#{error.class}: #{error}#{custom_message}"
end

# It's being used by the rest of the demos, so you don't have to worry about running this one.