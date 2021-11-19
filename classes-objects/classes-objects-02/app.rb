require_relative "./person.rb"

person1 = Person.new "Гаврила", "Петрович"
person2 = Person.new "Фёдор", "Петрович"
person3 = Person.new "Василий", "Алибабаевич"

puts "У нас есть три человека:"
person1.full_name
person2.full_name
person3.full_name