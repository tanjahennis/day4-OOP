class Waiter
  def greet_guest
    p "Good day! Welcome to our lovely restaurant"
  end

  def serve_guests
    p "How can I be of service?"
    p "1. Would you like to order a pizza?"
    p "2. Would you like to leave?"

    take_order(gets.chomp.to_i)
  end

  def take_order(order_number)
    case order_number
      when 1
        p "Let me get the menu"
        list_menu
      when 2
        p "Thank you for your visit"
      else
        p "I don't understand"
    end #case end
  end

  def initialize(menu)
    @menu = menu
  end

  def list_menu
    @menu.contents.each do |dish|
      p "#{dish.name}"
    end
  end

end #end off waiter class
