puts "how many dice?"
dice = gets.to_i
total = 0
dice.times {
  2.times {
    puts "...#{rand(6)+1}"
  }
  num = rand(6)+1
  puts "dice: #{num}"
  total += num
}

puts "total sum: #{total}"