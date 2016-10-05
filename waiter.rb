require './check'

class Waiter #name of the 'blueprint' for Waiter

  def initialize(menu, kitchen)
    @menu = menu
    @kitchen = kitchen
    @check = Check.new
    @serving = true
  end

  def greet_guest
    p "Good day! Welcome to our lovely restaurant"
  end

  def serve_guests
    p "How can I be of service?"
    p "1. Would you like to order a pizza?"
    p "2. Would you like to leave?"
    @choice = gets.chomp.to_i #by using @choice it can communicatie directy with def take_order
    take_order
  end

  def take_order
    case @choice
      when 1
        p "Let me get the menu"
        list_menu
        order_food(gets.chomp.to_i)
      when 2
        @serving = false
        p "Thank you for your visit"
      else
        p "I don't understand"
    end #case end
  end

  def list_menu
    @menu.contents.each_with_index do |dish, index|
      p "#{index}. #{dish.name}"
    end
  end

  def order_food(choice)
    dish = @menu.contents[choice]
    if @kitchen.order(dish)
      p "Dish is on its way!"
      @check.add(dish)
    else
      p "Sorry, no pizza for you"
    end
  end

  def serving?
    return @serving
  end


end #end off waiter class
