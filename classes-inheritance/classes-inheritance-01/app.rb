require_relative "parents"
require_relative "childs"

vasya = Parents.new("Василий Игоревич")
masha = Childs.new("Маша")
kolya = Childs.new("Коля")

puts vasya.obedient
puts masha.obedient
puts kolya.obedient
