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

class Wish
  def initialize(node)
    @text = node.text.strip
    @date = Date.parse(node.attributes["date"])
  end

  def overdue?
    @date < Date.today
  end

  def to_s
    "#{@date.strftime("%d.%m.%Y")}: #{@text}"
  end
end

wishes = []
doc.elements.each("wishes/wish") do |wish_node|
  wishes << Wish.new(wish_node)
end

puts "Эти желания должны были сбыться к сегодняшнему дню"
wishes.each { |wish| puts wish if wish.overdue? }

puts "А этим желаниям ещё предстоит сбыться"
wishes.each { |wish| puts wish unless wish.overdue? }
