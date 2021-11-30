require "json"

db = File.read("db.json")
hash = JSON.parse(db)
puts "О каком элементе хотите узнать?"
element = gets.chomp
if hash.key?(element)
  elem = hash[element]
  puts "Порядковый номер: #{elem["number"]}"
  puts "Название: #{elem["name"]}"
  puts "Первооткрыватель: #{elem["discoverer"]} (#{elem["year"]} год.)"
  puts "Плотность: #{elem["density"]} г/см³"
else
  puts "Извините, про такой элемент мы еще не знаем."
end