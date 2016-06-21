//Create a function that takes an array of words or phrases and
//returns the longest word or phrase in the array.
//Create an array of words and phrase
var phraseArray = ["My name is Kimberly", "hello", "Kimberly", "turtle", "nonsense"];
//Create a funtion
var longestWord = function(array){
	//Create a variable for the longest element of the array
	var longestElement = "";
	//Set it equal to zero as a start
	var i = 0;
	//Iterate through the array
	for(var i = 0; i < array.length; i++){
		//IF statement to replace longest Element with each
		//by comparing each element's length
		if(array[i].length > longestElement.length){
			 //Variable changes each time an element is longer
			 //than the last one
			 longestElement = array[i];
		};		
	};
	//Return to make sure a value is given back 
	return longestElement;
};
//Test longestWord function
console.log(longestWord(phraseArray));