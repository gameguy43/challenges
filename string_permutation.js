// given two strings, return a boolean indicating if they are permutaions of each other

var string1 = "hello";
var string2 = "lolhe";
var string3 = "cantaloupe";

function arePermutations(stringA, stringB) {
  if (stringA.length != stringB.length ) return false;

  var charToOccurenceA = populateCharOccurences(stringA);
  var charToOccurenceB = populateCharOccurences(stringB);

  var characters = Object.keys(charToOccurenceA);

  for (var i = 0; i < characters.length; i++) {
    if (charToOccurenceA[characters[i]] != charToOccurenceB[characters[i]]) {
      return false;
    }
  }

  return true;

}

function populateCharOccurence(string) {
  var charToOccurence = {};
  for (var i = 0; i < string.length; i++) {
    if ( !charToOccurence[i] ) {
      charToOccurence[i] = 1;
    } else {
      charToOccurence[i] ++;
    }
  }
}

arePermutations(string1, string2);
arePermutations(string2, string3);