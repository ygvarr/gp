wday = Time.now.wday
case wday
when 0 || 6
  puts "Сегодня выходной"
when 1..5
  puts "Сегодня будний день, за работу!"
end
