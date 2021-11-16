num = rand(16)

puts "Загадано число от 0 до 15, отгадайте какое?"

3.times {
  puts "Введите число:"
  answer = gets.to_i.abs
  if answer == num
    puts "Вы выиграли!"
    exit
  elsif (num - answer).abs <= 2
    puts "Тепло"
    puts num > answer ? "Нужно больше" : "Нужно меньше"
  elsif (num - answer).abs >= 2
    puts "Холодно"
    puts num > answer ? "Нужно больше" : "Нужно меньше"
  end
}

puts "Вы проиграли, число: #{num}"
