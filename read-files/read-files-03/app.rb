PATH_QUESTIONS = File.dirname(__FILE__) + "/data/questions.txt"
PATH_ANSWERS = File.dirname(__FILE__) + "/data/answers.txt"

File.exist?(PATH_QUESTIONS) ? (questions = File.open(PATH_QUESTIONS, "r").readlines) : (puts "file not found")
File.exist?(PATH_ANSWERS) ? (answers = File.open(PATH_ANSWERS, "r").readlines) : (puts "file not found")

i = 0
j = 0

while i <= questions.length - 1
  puts questions[i]
  answer = gets.chomp
  answer == answers[i].chomp ?
    (puts "Верный ответ!"
    j += 1) :
    (puts "Неправильно. Правильный ответ: #{answers[i]}")
  i += 1
end

puts "У вас #{j} правильных ответов из #{questions.length}"
