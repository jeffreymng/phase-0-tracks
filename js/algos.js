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

//Write a function that takes two objects and checks to see if the objects share at least one key-value pair.
//Return true if there is a key-value match and return false if nothing matches
//Create arrays for the keys and values of the two objects
//Use a loop to store keys and values in the arrays
//Create another loop to compare the two arrays containing the keys of the two objects
  //If the two keys match, store their respective values (stored in arrays earlier) using their index.
  //If the values match, return true.
  //Else return false.

function sharePair(object1, object2) {
  var key_array1 = [];
  var value_array1 = [];
  for (var key in object1) {
    key_array1.push(key);
    value_array1.push(object1[key]);
  }
  var key_array2 = [];
  var value_array2 = [];
  for (var key in object2){
    key_array2.push(key);
    value_array2.push(object2[key]);
  }
  var value1 = "";
  var value2 = "";
  for (var counter = 0; counter < key_array1.length; counter ++) {
    if (key_array1[counter] == key_array2[counter]) {
      value1 = value_array1[counter];
      value2 = value_array2[counter];
    }
  }
    if (value1 == value2) {
      return true;
    } else {
      return false;
    }
}

//Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
//Create a function that takes an integer as an argument
  //create an empty array to store words in (wordStorage)
  //Create a variable for the alphabet
  //Create a variable to store the newly created word (createdWord)
  //Create a loop to perform an algorithm based on the given integer
    //create another loop to generate a random letter from alphabet between 1 and 10 times
    //Add the randomly generated letter to createdWord
    //Add the newly created word to array
    //reset the createdWord variable for next word
    //return the array

function createWords(wordAmount) {
  var wordStorage = [];
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var createdWord = "";
  for (var counter = 0; counter < wordAmount; counter++) {
    for (var letterCount = 0; letterCount < Math.floor(Math.random() * 10) + 1; letterCount++) {
    var randomLetter = alphabet[Math.floor(Math.random() * 26)];
    createdWord = createdWord + randomLetter;
    }
    wordStorage.push(createdWord);
    createdWord = "";
  }
  return wordStorage;
}

// DRIVER CODE
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));
console.log(longestPhrase(["Phrase1", "Phrase 9 3/4", "This should be the longest phrase."]));
console.log(sharePair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(sharePair({name: "Steven", age: 54}, {name: "Tamir", age: 95}));
console.log(createWords(4));
console.log(createWords(8));