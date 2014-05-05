// given a string, return another string with each character once preceded
// by the number of times it occured in the origninal string
// completed May 5 2014

// run time complexity  O(n)
// memory complexity    O(n)

function countCharacters(string) {
  var charCountStr = "";
  var charToCount = {};
  var character;

  for (var i = 0; i < string.length; i++) {
    character = string[i];
    if ( !charToCount[character] ) {
      charToCount[character] = 1;
    } else {
      charToCount[character] ++;
    }
  }

  for (var k in charToCount) {
    charCountStr += (charToCount[k] + k);
  }

  return charCountStr;
}