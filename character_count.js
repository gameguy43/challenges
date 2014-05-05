// given a string, return another string with each character once preceded
// by the number of times it occured in the original string
// completed May 5 2014

// run time complexity  O(n)
// memory complexity    O(n)

function countCharacters(string) {
  var charCountStr = "";
  var charToCount = {};

  for (var i = 0; i < string.length; i++) {
    if ( !charToCount[string[i]] ) {
      charToCount[string[i]] = 1;
    } else {
      charToCount[string[i]] ++;
    }
  }

  for (var k in charToCount) {
    charCountStr += (charToCount[k] + k);
  }

  return charCountStr;
}