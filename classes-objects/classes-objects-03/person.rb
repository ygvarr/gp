class Person
  def initialize first_name, middle_name, age
    @first_name = first_name
    @middle_name = middle_name
    @age = age
  end

  def full_name
    puts "#{@first_name} #{@middle_name}"
  end

  def old?
    if @age > 60
      full_name
      puts "И ему #{@age} - пожилой"
    else 
      puts "#{@first_name} \nИ ему #{@age} - молодой"
    end
  end
end