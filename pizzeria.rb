require './waiter' #calls on classes in other tabs
require './menu'
require './kitchen'

menu = Menu.new #contructor method to call the instance of the class, here Menu
kitchen = Kitchen.new
w = Waiter.new(menu, kitchen)

w.greet_guest
w.serve_guests
