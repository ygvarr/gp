require "rexml/document"
require "date"

# Запоминаем путь к файлу
current_path = File.dirname(__FILE__)
file_name = current_path + "/wishes.xml"

abort "file not found" unless File.exist?(file_name)

# Открываем XML и забираем его в doc
file = File.new(file_name)
doc = REXML::Document.new(file)
file.close

#Запрашиваем данные
puts "Чего бы вы хотели?"
wish_text = STDIN.gets.chomp

puts "До какого числа вы хотите осуществить это желание?"
puts "Укажите дату в формате ДД.ММ.ГГГГ"
wish_date_input = STDIN.gets.chomp
wish_date = Date.parse(wish_date_input)

#Записываем обратно в XML
wish = doc.root.add_element("wish", { "date" => wish_date.strftime("%d.%m.%Y") })
wish.add_text(wish_text)
File.open(file_name, "w:UTF-8") do |file|
  doc.write(file, 2)
end
