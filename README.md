# Ruby Crash Course

This project is a collection of Ruby language concepts demonstrated in the context of solving the classic programming exercise "Fizz Buzz". The big idea was to distill the first week of a coding boot camp into a single session that takes people from zero to real Ruby code that solves the problem.

We write a program that prints out whole numbers in a sequence, from one to some higher number. Whenever it's evenly divisible by 3 print "fizz", by 5 print "buzz", and by both print "fizzbuzz". Otherwise just print the number itself. The numbered files progressively introduce language concepts and the whole thing can be run in a single sitting by an experienced Rubyist discussing the contents.

The material can be covered by running `ruby one_big_file.rb` in a terminal. Otherwise, the suggested order is to read and run the first two files, read the third, then read and run the rest in order. The comments document the concepts involved in the code from each file. An experienced Rubyist leading a workshop can then circle back to the third file and discuss requiring code from other files.

Note: For ease of reading for beginners, classes and modules that are dependencies are grouped in the same files for the most part. The one big file has everything in a sequence and doesn't require external files. It's designed for situations where running a single file and comparing the output to the code is more ideal.

Topics yet to cover include: hashes, structs, metaprogramming, more standard library features, requiring files in depth, and gems or frameworks. The code has been tested with Ruby 2.5. This crash-course has been developed by Andrew Neely (@ravinglogic on Twitter and @aneely on Github) with the sponsorship of Flywheel (getflywheel.com) and is licensed under the MIT license. Attribution is appreciated if you find this useful in introducing more people to Ruby.