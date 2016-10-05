require './storage'

class Kitchen
  def order(dish)
    p "KITCHEN:  Order received for #{dish.name}"
    p "I will need:"

    dish.ingredients.each do |ingredient|
      p "#{ingredient.amount} - #{ingredient.name}"
      #dish goes to ingredient tab, to initialize with paramaters amount, name
    end

    @storage.fetch(dish.ingredients)
  end

  def initialize
    @storage = Storage.new
  end

end #end class Kitchen
