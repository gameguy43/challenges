// find the fewest number of coins needed for a given total value
// coin denominations are 1, 5, 7, 9, and 11
// completed April 27 2014

var coinDenoms = [1, 5, 7, 9, 11];

function findMinCoins(total) { 

  var numOfCoins = 0;
  var valOfCoins = 0;
  
  for (var i = coinDenoms.length - 1; i >= 0; i--) {
    while (total - valOfCoins >= coinDenoms[i]) {
      valOfCoins += coinDenoms[i];
      numOfCoins ++;
    }
    if (valOfCoins === total) return numOfCoins;
  }

}