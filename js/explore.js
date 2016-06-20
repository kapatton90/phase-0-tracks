//Create a function that takes a string and returns the reverse of that string
var reverseString = function(string){
	return string.split('').reverse().join('');
}

console.log(reverseString("Kimberly"));