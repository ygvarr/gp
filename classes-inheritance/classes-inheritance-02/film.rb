class Film < Product
  attr_accessor :year, :director

  def initialize(params)
    super
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    puts "Фильм \"#{@name}\", #{@year} реж. #{@director}, #{@price} руб. (осталось #{@count})"
  end
end
