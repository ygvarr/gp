class Parents
  attr_accessor :name
  attr_reader :is_obedient

  def initialize(name)
    @name = name
    @is_obedient = true
  end

  def obedient
    puts "#{@name} послушный человек? #{@is_obedient}"
  end
end
