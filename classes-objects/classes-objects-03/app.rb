require_relative "./person.rb"

person1 = Person.new "Гаврила", "Петрович", 70
person2 = Person.new "Фёдор", "Петрович", 30
person3 = Person.new "Василий", "Алибабаевич", 65

puts "У нас есть три человека:"
person1.old?
person2.old?
person3.old?