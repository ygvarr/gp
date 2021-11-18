def stars count
  puts "Вот ваши звезды :)"
  i = 0
  str = ""
  while i < count
    str += "*"
    i += 1
  end
  puts str
end

puts "Сколько вам звезд на погоны?"
num = gets.to_i
stars num