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
    puts "Всего строк: #{arr.size}"
    empty = 0
    for i in arr
      if i.size < 2
        empty += 1
      end
    end
    puts "Пустых строк: #{empty}"
    puts "Последние 5 строк файла: "
    
    # puts arr[arr.size - 5]
    # puts arr[arr.size - 4]
    # puts arr[arr.size - 3]
    # puts arr[arr.size - 2]
    # puts arr[arr.size - 1]

    # j = 0
    # for j <= arr.size
    #   if j <= arr.size-5
    #     puts arr[j]
    #   end
    #   j += 1
    # end

    file.close
  else
    puts "Неверное имя файла"
  end
else
  puts "Неверное имя файла"
end