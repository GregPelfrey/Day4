class Menu

	attr_accessor :entree_data
	attr_accessor :order_data

	def initialize
		self.entree_data = [ ]
		self.order_data = [ ]
	end


	def add_item item
		self.entree_data.push(item)
	end
	

	def remove_item name
		self.entree_data.delete_if do |item|
			item.name == name
		end
	end

	def action_to_do
# does employee want to take order or edit menu

	end


	def take_order
		order_item = Order.new
		add_order_item = true
		while add_order_item
			self.item_ordered.each do |i|
				puts i.name
				puts i.description
				puts i.price
			end


			puts "Can I take your order?\n\n"			
			user_input = gets.chomp.capitalize
			if user_input != "yes" ||  user_input != "no"
				puts "I didn't get that, please enter yes or no."
				user_input = gets.chomp
			end
			until user_input == "no"
				puts "What can I get for you?"
			order_item = self.order_data.push.gets.chomp.capitalize
			puts "Would you like anything else" "Yes or No"
			user_input = gets.chomp.capitalize
			end

			puts "Ok so I've got #{order_data}"

		end


	end

class Entree
	attr_accessor :name
	attr_accessor :description
	attr_accessor :price
	attr_accessor :category	

	def initialize
		self.name = "Entree"
		self.description = "Entree Description"
		self.price = 0.00
		self.category = 1
		Entree.menu_printout.push(self)
	end

end

# "*menu_layout" should put new items in an array??? if so how do I print elements of array???
	def populate_menu  
		puts "Lets edit your menu!"
		new_item = Entree.new
		keep_populating = true
		while keep_populating
			puts "CURRENT MENU:\n\n"
			self.entree_data.each do |i|
				puts i.name
				puts i.description
				puts i.price
			end
			puts "Enter item"
			new_item.name = gets.chomp
			puts "Enter description"
			new_item.description = gets.chomp
			puts "Whats the price"
			new_item.price = gets.chomp.to_f
			puts "Choose a category for this item: (0 = appetizer, 1 = entree, 2 = desserts, 3 = drinks)"
			new_item.category = gets.chomp
			self.add_item(new_item)
				puts "Add another item y/n"
				answer = gets.chomp
				if answer == "n"
					keep_populating = false
				end
		end
	end

end

class Order
	attr_accessor :item_ordered
	attr_accessor :item_price

end


order = Order.new 

guacamole = Entree.new
guacamole.name = "Guacamole"
guacamole.description = "We make our's with chunky goodness"
guacamole.price = 7.99
guacamole.category = 1
order.add_item(guacamole)

# menu = Menu.new
nachos = Entree.new
nachos.name = "Crazy Nacho's"
nachos.description = "Topped with beef and cheese"
nachos.price = 9.99
nachos.category = 0
order.add_item(nachos)

# menu = Menu.new
pizza = Entree.new
pizza.name = "Pizza"
pizza.description = "Hawaian with Pineapple and Shrimp"
pizza.price = 15.99
pizza.category = 1
order.add_item(pizza)

# menu = Menu.new
hamburger = Entree.new
hamburger.name = "Hamburger"
hamburger.description = "All American Hamburger"
hamburger.price = 10.99
hamburger.category = 1
order.add_item(hamburger)

# menu = Menu.new
creame_brulee = Entree.new
creame_brulee.name = "Creame Brulee"
creame_brulee.description = "To DIE for!!!"
creame_brulee.price = 7.99
creame_brulee.category = 2
order.add_item(creame_brulee)

# menu = Menu.new
pudding = Entree.new
pudding.name = "Pudding"
pudding.description = "Like Moms"
pudding.price = 4.99
pudding.category = 2
order.add_item(pudding)

# menu = Menu.new
water = Entree.new
water.name = "Water"
water.description = "Dasani"
water.price = "Free"
water.category = 3
order.add_item(water)

# menu = Menu.new
pepsi = Entree.new
pepsi.name = "Pepsi"
pepsi.description = "soda"
pepsi.price = 1.99
pepsi.category = 3
order.add_item(pepsi)


order.populate_menu

# menu.entree_data.each do |i|
# 	puts i.name
# 	puts i.description
# 	puts i.price
# end


# menu.populate_menu_order


# menu.entree_data.each do


# end


# p Entree.menu_printout


