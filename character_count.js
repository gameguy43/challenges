var string = "abcbcdhhh";

function countCharacters(string) {
  var charCount = "";
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
    charCount += (charToCount[k] + k);
  }

  return charCount;

}