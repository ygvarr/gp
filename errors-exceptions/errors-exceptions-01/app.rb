def calc a, b, operator
  case operator
  when "+"
    return puts a + b
  when "-"
    return puts a - b
  when "*"
    return puts a * b
  when "/"
    begin
      return puts a / b
    rescue ZeroDivisionError => error
      puts error
    end
  else
    puts "invalid operator"
  end
end

puts "enter 1st number"
a = gets.to_i
puts "enter 2st number"
b = gets.to_i
puts "enter operator (+ - * /)"
operator = gets.chomp

calc a,b,operator