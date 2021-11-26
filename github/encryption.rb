require 'digest'

puts "Введите слово или фразу для шифрования:"
text = gets.chomp
puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
method = gets.to_i

method == 2 ? puts(Digest::SHA256.digest text) : puts(Digest::MD5.hexdigest text)
