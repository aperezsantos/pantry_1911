class Pantry
  attr_reader :stock, :stock_check

  def initialize
    @stock = {}
  end

  def stock_check(ingredient)
    return 0 if @stock.empty?
  end

  def restock(ingredient_name, quantity)
    @stock[ingredient_name] = quantity
  require "pry"; binding.pry
  end

end
