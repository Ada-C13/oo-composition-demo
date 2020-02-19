class Product

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def print_name
    puts @name
  end

end