grocery_store = {
	"produce" =>[
		"fruits",
		"vegetables"],
	"meat" => [
		"pork", 
		"chicken", 
		"red meat"], 
	"bakery" => [
		"bread",
		"sweets"
	]
}

#find sweets
p grocery_store["bakery"][0]
#place herbs in produce
p grocery_store["produce"].push ("herbs")
#replace sweets with doughnuts
p grocery_store["bakery"][1] = "doughnuts"
#check new bakery item
p grocery_store["bakery"][1] 
#insert new bakery category
p grocery_store["bakery"].insert(2, "cakes")
# remove and return the last element in the meat array
p grocery_store["meat"].pop 
#insert two more categories to the meat array
p grocery_store["meat"].insert(2, "red meat", "seafood")