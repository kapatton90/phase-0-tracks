//Create a function that takes a string and returns the reverse of that string
var reverseString = function(string){
	//First split the string into a new array
	var splitString = string.split('');
	//Then reverse the new array
	var reverseString = splitString.reverse();
	//Finally connect the elements again
	var joinString = reverseString.join('');
	//Return the reversed string
	return joinString;
}

if (1 == 1){
var myReversedString = console.log(reverseString("Kimberly"));
}