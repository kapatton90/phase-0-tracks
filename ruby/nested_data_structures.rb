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
#