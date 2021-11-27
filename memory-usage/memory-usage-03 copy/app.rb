variable = nil

class MyClass
  def initialize
    @variable = nil
  end

  def check_variables
    puts defined?(variable)
    puts defined?(@variable)
  end
end

myclass = MyClass.new
myclass.check_variables
