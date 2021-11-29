require "json"

doc = File.read("db.json")
hash = JSON.parse(doc)

puts "#{hash["firstname"]} #{hash["lastname"][0]}.
#{hash["contacts"]["phone"]} #{hash["contacts"]["mail"]}
#{hash["skills"]}"

def hash_steper(hash)
  hash.each { |i, j|
    hash_steper(j) if j.class == Hash
    # Рекурсивный обход вложенных хэшей
  }
end
