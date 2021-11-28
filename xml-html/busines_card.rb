require "rexml/document"

current_path = File.dirname(__FILE__)
file_name = current_path + "/business_card.xml"

abort "file not found" unless File.exist?(file_name)

file = File.new(file_name)
doc = REXML::Document.new(file)
file.close

card = {}

["first_name", "second_name", "last_name", "phone", "email", "skills"].each do |field|
  card[field] = doc.root.elements[field].text
end

puts "#{card["first_name"]} #{card["second_name"][0]}. #{card["last_name"]}"
puts "#{card["phone"]}, #{card["email"]}"
puts "#{card["skills"]}"
