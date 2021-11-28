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

  def self.from_file(file_path)
    lines = File.readlines(file_path).map { |l| l.chomp }

    self.new(
      name: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3].to_i,
      count: lines[4].to_i,
    )
  end
end
