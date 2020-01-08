require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'
require './lib/ingredient'

class RecipeTest < Minitest::Test
  def test_it_exists
    recipe = Recipe.new("Mac and Cheese")

    assert_instance_of Recipe, recipe
  end

  def test_it_has_attributes
    recipe = Recipe.new("Mac and Cheese")

    assert_equal "Mac and Cheese", recipe.name
    assert_equal ({}), recipe.ingredients_required
  end

  def test_it_can_add_ingredients
    ingredient1 = Ingredient.new("Cheese", "C", 100)
    ingredient2 = Ingredient.new("Macaroni", "oz", 30)
    recipe = Recipe.new("Mac and Cheese")

    recipe.add_ingredient(ingredient1, 2)
    recipe.add_ingredient(ingredient2, 8)

    assert_equal ({ingredient1 => 2, ingredient2 => 8}), recipe.ingredients_required
  end

  def test_it_can_return_amount_required_per_ingredient
    ingredient1 = Ingredient.new("Cheese", "C", 100)
    ingredient2 = Ingredient.new("Macaroni", "oz", 30)
    recipe = Recipe.new("Mac and Cheese")

    recipe.add_ingredient(ingredient1, 2)
    recipe.add_ingredient(ingredient2, 8)

    assert_equal 2, recipe.amount_required(ingredient1)
    assert_equal 8, recipe.amount_required(ingredient2)
  end

  def test_it_can_return_ingredients
    ingredient1 = Ingredient.new("Cheese", "C", 100)
    ingredient2 = Ingredient.new("Macaroni", "oz", 30)
    recipe = Recipe.new("Mac and Cheese")

    recipe.add_ingredient(ingredient1, 2)
    recipe.add_ingredient(ingredient2, 8)

    assert_equal [ingredient1, ingredient2], recipe.ingredients
  end
end
