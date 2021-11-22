#gem
require "translit"

puts "Введите фразу для транслитерации:"
words = gets
puts Translit.convert(words)
