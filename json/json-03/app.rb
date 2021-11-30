require "json"

db = File.read("db.json")
hash = JSON.parse(db)
puts "У нас всего элементов: #{hash.keys.size}"
puts hash.keys.join(", ")
puts "О каком элементе хотите узнать?"
element = gets.chomp
if hash.key?(element)
  puts "Первооткрывателем этого элемента считается: #{hash[element]}"
else
  puts "Извините, про такой элемент мы еще не знаем."
end