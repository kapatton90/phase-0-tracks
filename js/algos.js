//RELEASE 0

//Create a function that takes an array of words or phrases and
//returns the longest word or phrase in the array.
//Create an array of words and phrase
var phraseArray = ["My name is Kimberly", "hello", "Kimberly", "turtle", "nonsense"];
//Create a funtion that takes an array as a parameter
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

//RELEASE 1
//Create a funtion that takes two objects and checks to
//see if they share at least one key-value pair.
//Create a function that takes two parameters, one for 
//each object.
var sameObject = function(object1, object2){
	//Create a variable for key 1
	var key1 = object1.key;
	//Create a variable for key 2
	var key2 = object2.key;
	//Create a variable for value 1
	var value1 = object1.key(value);
	//Create a variable for value 2
	var value2 = object2.key(value);
	//Use a FOR loop to iterate through objects 1 and 2
	for(var i = 0; i < object1.length; i++){
		//Use an IF statement to evaulate if the two keys are the same
		//Us an IF statement to evaluate if the two values are the same
		if(key1 === key2 && value1 === value2){
			return true;
		}
		else{
		return false;	
		}
	}
}		





//Test longestWord function
console.log(longestWord(phraseArray));