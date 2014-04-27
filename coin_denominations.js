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