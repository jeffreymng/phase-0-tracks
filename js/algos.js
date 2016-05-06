//Write a function that takes an array of words or phrases and returns the longest word in the array.
//Using a loop, loop through the given array and find the length of each phrase in the array. Store these values in a separate array (phraseLength)
//Using another loop, compare each of the values stored in the phraseLength array to the next value in the same array. Use a conditional statement
  //If the current value is greater than the next value, store that value in a variable (longestPhrase)
  //If the current value is less than the next value, store the other value in longestPhrase
//Using indexOf, find the index of the value of longestPhrase in the phraseLength array and return the phrase from given array at that index

function longestPhrase(array) {
  var phraseLength = []
  for (var counter = 0; counter < array.length; counter ++) {
    phraseLength.push(array[counter].length);
  }
  var longestPhrase = "";
  for (var counter = 0; counter < phraseLength.length; counter ++) {
    if (phraseLength[counter] > phraseLength[counter + 1]) {
      longestPhrase = phraseLength[counter];
  } else if (phraseLength[counter] < phraseLength[counter + 1]) {
      longestPhrase = phraseLength[counter + 1];
  }
  }
  return array[phraseLength.indexOf(longestPhrase)];
}


// DRIVER CODE
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));
console.log(longestPhrase(["Phrase1", "Phrase 9 3/4", "This should be the longest phrase."]))