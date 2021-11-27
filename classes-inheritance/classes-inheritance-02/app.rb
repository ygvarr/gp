require_relative "product"
require_relative "book"
require_relative "film"

products = []

products << leon = Film.new(price: 290, count: 5, name: "Леон", director: "Люк Бессон", year: 1994)
products << durak = Film.new(price: 390, count: 1, name: "Дурак", director: "Юрий Быков", year: 2014)
products << idiot = Book.new(price: 1500, count: 10, name: "Идиот", author: "Федор Достоевский", genre: "роман")

products.each { |product| product.to_s }
