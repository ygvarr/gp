puts "Какая у вас на руках валюта?\n1. Рубли\n2. Доллары"
currency = gets.to_i
if currency == 1
  puts "Сколько сейчас стоит 1 доллар в рублях?"
  a = gets.to_f
  puts "Cколько у вас рублей?"
  b = gets.to_f
  puts "Ваши запасы равны: $ #{(b / a).round(2)}"
else
  puts "Сколько сейчас стоит 1 доллар в рублях?"
  a = gets.to_f
  puts "Cколько у вас долларов?"
  b = gets.to_f
  puts "Ваши запасы равны: #{(b * a).round(2)} рублей"
end
