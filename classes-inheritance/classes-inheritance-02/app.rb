require_relative "product-collection"
require_relative "product"
require_relative "book"
require_relative "film"

Path = File.dirname(__FILE__)
products = []

products << leon = Film.new(price: 290, count: 5, name: "Леон", director: "Люк Бессон", year: 1994)
products << durak = Film.new(price: 390, count: 1, name: "Дурак", director: "Юрий Быков", year: 2014)
products << idiot = Book.new(price: 1500, count: 10, name: "Идиот", author: "Федор Достоевский", genre: "роман")

products << film = Film.from_file("#{Path}/data/films/01.txt")
products << book = Book.from_file("#{Path}/data/books/01.txt")

begin
  products << product = Product.from_file(Path + "/data/films/01.txt")
rescue NotImplementedError
  puts "Метод класса Product.from_file не реализован"
end

products.each { |product| product.to_s }

# collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')
# collection.sort!(by: :price, order: :asc)
# collection.to_a.each do |product|
#   puts product
# end
