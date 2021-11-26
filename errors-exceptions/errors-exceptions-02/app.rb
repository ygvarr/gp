def calc a, b, operator
  case operator
  when "+"
    return puts a + b
  when "-"
    return puts a - b
  when "*"
    return puts a * b
  when "/"
    return puts a / b
  else
    puts "invalid operator"
  end
end

puts "enter 1st number"
a = gets.to_f
puts "enter 2st number"
b = gets.to_f
puts "enter operator (+ - * /)"
operator = gets.chomp

calc a,b,operator