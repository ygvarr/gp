require_relative "film"
require_relative "person"

person1 = Person.new("Сергей")
person1.favorit_film = Film.new("Челюсти")
person2 = Person.new("Марина")
person2.favorit_film = Film.new("Список Шиндлера")
person3 = Person.new("Мадонна")
person3.favorit_film = Film.new("Парк Юрского периода")

puts person1.first_name
puts "С любимым фильмом: #{person1.favorit_film.film_name}"
puts person2.first_name
puts "С любимым фильмом: #{person2.favorit_film.film_name}"
puts person3.first_name
puts "С любимым фильмом: #{person3.favorit_film.film_name}"