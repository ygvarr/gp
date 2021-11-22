require_relative "film"

puts "Фильмы какого режиссера Вы хотите посмотреть?"
director_name = gets.chomp
arr = []

3.times {
  puts "Какой-нибудь его хороший фильм?"
  film_name = gets.chomp
  arr << Film.new(film_name, director_name)
}

puts "И сегодня вечером рекомендую посмотреть: #{arr.sample.film_name}"
puts "Режиссера: #{director_name}"
