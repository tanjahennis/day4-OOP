require './waiter'
require './menu'

menu = Menu.new
w = Waiter.new(menu)

w.greet_guest
w.serve_guests
w.take_order(order_number)
