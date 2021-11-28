class Product
  attr_accessor :price, :count, :name

  def initialize(params)
    @price = params[:price]
    @count = params[:count]
    @name = params[:name]
  end

  def to_s
  end

  def self.from_file(file_path)
    raise NotImplementedError
  end
end
