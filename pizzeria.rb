require './waiter' #calls on classes in other tabs
require './menu'
require './kitchen'

kitchen = Kitchen.new
menu = Menu.new #contructor method to call the instance of the class, here Menu
w = Waiter.new(menu, kitchen)

w.greet_guest
while(w.serving?) do
  w.serve_guests
end
