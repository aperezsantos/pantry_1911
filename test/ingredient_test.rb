require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test
  def test_it_exists
    ingredient = Ingredient.new("Cheese", "oz", 50)

    assert_instance_of Ingredient, ingredient
  end
end
