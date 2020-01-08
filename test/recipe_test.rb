require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'
require './lib/ingredient'

class RecipeTest < Minitest::Test
  def test_it_exists
    ingredient1 = Ingredient.new("Cheese", "C", 100)
    ingredient2 = Ingredient.new("Macaroni", "oz", 30)
    recipe = Recipe.new("Mac and Cheese")

    assert_instance_of Recipe, recipe
  end

  def test_it_has_attributes
    ingredient1 = Ingredient.new("Cheese", "C", 100)
    ingredient2 = Ingredient.new("Macaroni", "oz", 30)
    recipe = Recipe.new("Mac and Cheese")

    assert_equal "Mac and Cheese", recipe.name
  end
end
