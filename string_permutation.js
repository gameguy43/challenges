// given two strings, return a boolean indicating if they are permutaions of each other
// completed May 4 2014

function arePermutations(stringA, stringB) {
  if (stringA.length != stringB.length ) return false;

  var charToOccurA = populateCharOccur(stringA);
  var charToOccurB = populateCharOccur(stringB);
  var chars = Object.keys(charToOccurA);

  for (var i = 0; i < chars.length; i++) {
    if (charToOccurA[chars[i]] != charToOccurB[chars[i]]) {
      return false;
    }
  }
  return true;
}

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