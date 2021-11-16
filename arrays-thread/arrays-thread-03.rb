cars = %w(Audi BMW Ford Honda Hyundai Kia Mazda Mercedes Mitsubishi Nissan)
puts "У нас всего #{cars.length} машин. Вам какую?"
gift = gets.to_i
if gift >= 1 && gift <= cars.length
  puts "Поздравляем, вы получили: #{cars[gift - 1]}"
else puts "Извините, машины с таким номером у нас нет :(" end
