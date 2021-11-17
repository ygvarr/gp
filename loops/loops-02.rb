arr = []
puts "Какой длины будет массив случайных чисел?"
length = gets.to_i
counter = 0
max = 0

while counter < length do
  num = rand(100)
  arr << num
  if num > max 
    max = num
  end
  counter += 1
end

puts arr.to_s
puts "Самое большое число: #{max}"