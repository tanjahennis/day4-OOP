class Kitchen
  def order(dish)
    p "KITCHEN:  Order received for #{dish.name}"
    p "I will need:"

    dish.ingredients.each do |ingredient|
      p "#{ingredient.amount} - #{ingredient.name}"
      #dish goes to ingredient tab, to initialize with paramaters amount, name
    end
  end

end #end class Kitchen
