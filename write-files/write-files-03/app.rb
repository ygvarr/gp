file = File.open(File.dirname(__FILE__) + "/holidays.txt", "r")
holidays = file.readlines
file.close

case Time.now.wday
when 0 || 6
  puts "Сегодня выходной"
when 1..5
  holidays.include?(Time.now.strftime("%d.%m")) ? 
  puts("Сегодня выходной") : 
  puts("Сегодня будний день")
end