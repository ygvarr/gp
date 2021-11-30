require "json"

db = File.read("db.json")
hash = JSON.parse(db)
arr = hash.to_a
arr.sort_by!{ |x,y| y }
arr.reverse!
i = 1
puts "Самый популярный язык: #{arr[0][0]} (#{arr[0][1]}) \n "
arr.each{ |x,y|
  puts "#{i}: #{x} (#{y})"
  i += 1
}