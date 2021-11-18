def check_number guess, number
  if guess == number
    puts "Вы выиграли!"
    exit
  end
  if guess > number
    puts 'Нужно меньше'
  else
    puts 'Нужно больше'
  end
  if (guess - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end

number = rand(16)
puts "Загадано число от 0 до 15, отгадайте какое?"

guess = gets.to_i
check_number(guess, number)

guess = gets.to_i
check_number(guess, number)

guess = gets.to_i
check_number(guess, number)

puts "Вы проиграли, число: #{number}"
