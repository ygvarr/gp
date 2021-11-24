#считываем в строку файл
text = File.read(File.dirname(__FILE__) + "/text.txt")

#убираем все символы:
cleaned_text = text.gsub(/[,\(\)\.\-;:\?\!]/, "")

#разбиваем на массив слов:
words = cleaned_text.split

#возвращает число верных условий
puts words.count { |w| w =~ /^\S{3}$/ }
