puts "Введите вариант: 0 - Камень, 1 - Ножницы, 2 - Бумага"

game = %w(Камень Ножницы Бумага)
humanChoise = gets.to_i
compChoise = rand(3)

puts "Вы выбрали: #{game[humanChoise]}"
puts "Компьютер выбрал: #{game[compChoise]}"

if humanChoise === compChoise
  puts "Ничья"
elsif case humanChoise
when 0
  case compChoise
  when 1
    puts "Победили вы"
  when 2
    puts "Победил компьютер"
  end
when 1
  case compChoise
  when 0
    puts "Победил компьютер"
  when 2
    puts "Победили вы"
  end
when 2
  case compChoise
  when 0
    puts "Победили вы"
  when 1
    puts "Победил компьютер"
  end
end
end
