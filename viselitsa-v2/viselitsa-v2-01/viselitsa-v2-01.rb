puts "Врага какого персонажа вы хотите узнать?"
hero = gets.chomp
case hero
when "Бэтмен", "бэтмен"
  puts "Джокер"
when "Шерлок Холмс"
  puts "Профессор Мориарти"
when "Буратино"
  puts "Карабас-Барабас"
when "Фродо Бэггинс"
  puts "Саурон"
when "Моцарт"
  puts "Сальери"
else
  puts "Не удалось найти врага"
end
