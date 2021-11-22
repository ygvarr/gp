# # адресс папки запущенного скрипта:
# current_path = File.dirname(__FILE__)
# file_path = current_path + '/file.txt'
# # проверка существует ли файл
# if File.exist?(file_path)
# end

if ARGV[0]
  path = ARGV[0]
  if File.exist?(path)
    file = File.open(path, "r")

    puts "Открыт файл: #{path}"
    arr = file.readlines
    puts "Всего строк: #{arr.length}"

    empty = 0
    for i in arr
      if i.length < 2
        empty += 1
      end
    end
    puts "Пустых строк: #{empty}"

    puts "Последние 5 строк файла: "
    i = 0
    while i <= arr.length
      if i >= arr.length - 5
        puts arr[i]
      end
      i += 1
    end

    file.close
  else
    puts "Неверное имя файла"
  end
else
  puts "Неверное имя файла"
end
