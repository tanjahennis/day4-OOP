class Waiter #name of the 'blueprint' for Waiter
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
