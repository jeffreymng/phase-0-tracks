// Create a function to reverse a string of letters
// name and define the function
// separate each letter of the string
// create a new variable
// starting from the last letter of the string, add each letter to the new variable
// return the new variable, which should be the reverse of the original string

function reverse(string){
  var reversedString = "";
  for (var counter = string.length - 1; counter >= 0; counter--) {
  reversedString = reversedString + string[counter];
  }
  return reversedString;
}

