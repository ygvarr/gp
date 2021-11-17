humanChoise = nil
until humanChoise == 1 || humanChoise == 2 || humanChoise == 0
  puts "Введите вариант: 0 - Камень, 1 - Ножницы, 2 - Бумага"
  humanChoise = gets.to_i
end
puts "Вы выбрали вариант #{humanChoise}"
