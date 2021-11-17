puts "Введите число:"
n = gets.to_i
arr = []
sum = 0
i = 1

while i <= n do
  arr << i
  sum += i
  i += 1
end

puts arr.to_s
puts "Сумма чисел: #{sum}"