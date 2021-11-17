arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

def cut array
  puts "Вот какая палка колбасы у нас есть:"
  puts array.to_s
  puts "Сколько первых элементов вам отрезать?"
  n = 0
  n = gets.to_i
  puts array.take(n).to_s
end

cut arr
