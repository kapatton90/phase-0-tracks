#define method that creates a hash that consists of grocery items as keys and quantities as values
def create(items, quantity)
	#initiate new hash
	@list = Hash.new
	
	#create an array from the string of items separated by spaces(example: "carrots apples cereal pizza")
	items = items.split(' ')
	
	#create an array from the string on quantities
	quantity = quantity.split(' ')
	
	#insert the items and quantities into the hash as key, value pairs
	@list = {items[0] => quantity[0], 
		items[1] => quantity[1], 
		items[2] => quantity[2],
		items[3] => quantity[3]}
end	

#test create method
# create ("carrots apples cereal pizza"), ("10 6 2 1") 
# p @list
create("Lemonade Tomatoes Onion IceCream", "2 3 1 4")
p @list
#define method that will add an item and quatity to the existing hash
def add(item, quantity)
	@list.store(item, quantity)
end

#test add method
# add("milk", "1")
# p @list

#define a method that will remove an item from the existing hash
def remove(item)
	@list.delete(item)
end

#test remove method
# remove("carrots")
# p @list
remove("Lemonade")
p @list

#define a method that will update the existing quantity of an item
def update(item, quantity)
	list2 = {item => quantity}
	@list.merge!(list2)
end

#test update method
# update("apples", "4")
# p @list
update("IceCream", "1")

#define a method that will display each pair in a more readable format
def display
    puts "-"*20
    puts "Current groceries to buy:"
   @list.each{|item, quantity| puts "item: #{item}, quantity: #{quantity}"}
   puts "-"*20
end 
#test display method
display

#Comments
=begin
Pseudocode definitely helps when you are writing up a first draft of your code. It can help you think through what you will need to do before you start coding.
Hashes work best for a list like this, since you need both a key and a value. It isn't just a list of grocery items, therefore you need more than just an array.
A method returns the information you give it in the ways you specified in your method. It takes the argument and uses the code in the body of the method to decide what to do with the argument.
You can pass strings or integers as arguments to methods.
You can pass information between methods by defining the variable's scope that you are passing the information between.
Passing infromation between methods without a class is still somewhat confusing. I am not sure if we did this part of the challenge correctly.
=end