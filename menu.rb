class Menu

attr_reader :quit

# * allows the list to represent the whole array
def initialize(*list)
	@list = list
	@quit = @list.length
end

def order
	@list.each_with_index do |item, index|
		#adding 1 to our index allows us to start from 1
		puts "#{index + 1}. #{item}"
end
	puts "Welcome to Pop's"
	puts "What will it be partner"

	decision = gets.to_i
	return decision
end

end

menu = Menu.new("chilli fries", "Pop's hot soup", "wild fried bean pie", "fried chicken", "super burger", "quit ")

#while loop wont break until tthe chice is 6 which is the index for quit plus 1
while ((choice = menu.order) != menu.quit)

	#case statement within the while loop gives us the statements while still in the the loop.
	case choice
	when 1
		puts "great choice, itll just be a while now, for your chilli fries"
	when 2
		puts "great choice, itll just be a while now, for your Pop's hot soup"
	when 3
		puts "great choice, itll just be a while now, for your wild fried bean pie"
	when 4
		puts "great choice, itll just be a while now, for your fried chicken"
	when 5
		puts "great choice, itll just be a while now, for your super burger"
	end
		
end