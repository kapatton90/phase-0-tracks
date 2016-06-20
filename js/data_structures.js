//Create an array of horse colors
var horseColors = ["blue", "green", "orange", "purple"];
//Create an array of horse names
var horseNames = ["Ed", "Wildfire", "Black Beauty", "Hidalgo"];
//Add a new color to the colors array 
horseColors.push("red");
//Add a new name to the names array
horseNames.push("Thunder");

console.log(horseNames);

var newHorse = {name: horseNames, color:horseColors};

for (var index = 0; index < horseNames.length; index++){
	console.log(horseNames[index])
}

console.log(newHorse)

