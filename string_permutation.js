// given two strings, return a boolean indicating if they are permutaions of each other
// completed May 4 2014

// run time complexity   O(n)
// memory complexity     O(n)

function arePermutations(stringA, stringB) {

  // return false if the strings are different lengths
  if (stringA.length != stringB.length ) return false;

  // set hashes of all characters to their occurences
  var charToOccurA = populateCharOccur(stringA);
  var charToOccurB = populateCharOccur(stringB);
  var chars = Object.keys(charToOccurA);

  // check for differences
  for (var i = 0; i < chars.length; i++) {
    if (charToOccurA[chars[i]] != charToOccurB[chars[i]]) {
      return false;
    }
  }
  return true;
}

// populate hashes of characters to the number of times they occur
function populateCharOccur(string) {
  var charToOccur = {};
  for (var i = 0; i < string.length; i++) {
    if ( !charToOccur[string[i]] ) {
      charToOccur[string[i]] = 1;
    } else {
      charToOccur[string[i]] ++;
    }
  }
  return charToOccur;
}