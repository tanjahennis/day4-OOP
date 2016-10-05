require './dish'
require './ingredient'

class Menu

  def initialize
    @menu = []
    #Ingredient:: accesses CONSTANT in Class
    @menu << Dish.new("Margherita", [
      Ingredient.new(Ingredient::TOMATO, 3),
      Ingredient.new(Ingredient::DOUGH, 0.25),
      Ingredient.new(Ingredient::MOZZARELLA, 0.2)
    ])
    @menu << Dish.new("Napoletana", [
      Ingredient.new(Ingredient::TOMATO, 3),
      Ingredient.new(Ingredient::DOUGH, 0.25),
      Ingredient.new(Ingredient::MOZZARELLA, 0.2),
      Ingredient.new(Ingredient::ANCHOVIES, 0.05)
      ])
    @menu << Dish.new("Pepperoni", [
      Ingredient.new(Ingredient::TOMATO, 3),
      Ingredient.new(Ingredient::DOUGH, 0.25),
      Ingredient.new(Ingredient::MOZZARELLA, 0.2),
      Ingredient.new(Ingredient::PEPERONI, 0.1)
      ])
  end

  def contents
    @menu
  end

end #end of menu class
