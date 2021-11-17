def circle_square radius
  3.14 * radius**2
end

puts "Введите радиус круга:"
r = gets.to_f
puts "Площадь круга: #{circle_square r}\n\n"

puts "Введите радиус второго круга:"
r = gets.to_f
puts "Площадь второго круга: #{circle_square r}"