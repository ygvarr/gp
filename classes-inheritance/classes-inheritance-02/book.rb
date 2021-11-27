class Book < Product
  attr_accessor :genre, :author

  def initialize(params)
    super
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    puts "Книга \"#{@name}\", #{@genre}, автор - #{@author}, #{@price} руб. (осталось #{@count})"
  end
end
