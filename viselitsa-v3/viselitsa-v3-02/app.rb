PATH_FILMS = File.dirname(__FILE__) + "/data/films.txt"
File.exist?(PATH_FILMS) ? (films = File.open(PATH_FILMS, "r").readlines) : (puts "file not found")
puts "Сегодня Вам предлагается к просмотру фильм: \n#{films.sample}"
