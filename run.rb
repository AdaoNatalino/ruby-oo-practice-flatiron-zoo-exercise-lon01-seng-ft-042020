require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

z1 = Zoo.new("GREENFOREVER", "LONDON")
z2 = Zoo.new("FREELAND", "NEWZELAND")
z3 = Zoo.new("ICELAND", "NEWZELAND")


a1 = Animal.new("Dog", 10, "ringo", z1)
a2 = Animal.new("TRex", 20, "bob", z2)
a3 = Animal.new("Pokemon", 57, "lazy", z1)
a4 = Animal.new("Dog", 5, "Trump", z1)
a5 = Animal.new("Dog", 11, "Boris", z2)
a6 = Animal.new("Dog", 18, "Bolsonaro", z3)


binding.pry
puts "done"
