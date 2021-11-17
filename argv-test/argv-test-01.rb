temperature = ARGV[0]
season = ARGV[1]

if temperature == nil || season == nil 
  puts "Какая сейчас температура?"
  temperature = gets.to_i
  puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
  season = gets.to_i
end

if season.to_i == 1 && temperature.to_i >= 15 && temperature.to_i <= 35
  puts "Скорее идите в парк, соловьи поют!"
elsif temperature.to_i >= 22 && temperature.to_i <= 30
  puts "Скорее идите в парк, соловьи поют!"
else 
  puts "Сейчас соловьи молчат, греются или прохлаждаются :)"
end