PATH_FILMS = File.dirname(__FILE__) + "/data/films.txt"
File.exist?(PATH_FILMS) ? (films = File.open(PATH_FILMS, "r").readlines) : (puts "file not found")

num = rand(films.length)
num.even? ? (puts "#{films[num]} #{films[num + 1]}") : (puts "#{films[num + 1]} #{films[num + 2]}")
