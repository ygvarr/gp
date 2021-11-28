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

  def self.from_file(file_path)
    lines = File.readlines(file_path).map { |l| l.chomp }

    self.new(
      name: lines[0],
      director: lines[1],
      year: lines[2].to_i,
      price: lines[3].to_i,
      count: lines[4].to_i,
    )
  end
end
