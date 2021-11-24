puts "enter word:"
str = gets.chomp
str = str.downcase.delete(" ,<.>/?:;!@#$%^&*()-_=+")
str == str.reverse ? puts("palindrome") : puts("not palindrome")
