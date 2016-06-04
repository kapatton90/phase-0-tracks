# Jessica Bohn & Kimberly Patton
# 06/03/2016
# method to insert new items into an array
def method_of_arrays(array, y)
	new_array = array << y
end
# method to build an array
def build_array(x, y, z)
	array = [x, y, z]
end	
# create array 
books = []
p books
# add five items to the array
books = ["Harry Potter", "The Great Gatsby", "The Lord of the Rings", "The Hunger Games", "Pride & Prejudice"]
p books
# delete the item at index 2
books.delete_at(2)
p books
# insert a new item at index 2
books.insert(2, "The Adventures of Huckleberry Finn")
p books
# remove the first item of the array without using it's index
books.shift 
p books
# ask the array whether it has a certain item. 
p "The book The Great Gatsby appears in this array: #{books.include?("The Great Gatsby")}"
# create another array
colors = ["blue", "pink", "green"]
# add book and colors arrays together in new books_and_colors array
books_and_colors = books + colors
p books_and_colors

p build_array(1, "two", nil)


p method_of_arrays([], "Hi")
p method_of_arrays([3, 5], 1)
p method_of_arrays(["Hello"], 7)