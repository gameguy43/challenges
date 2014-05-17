// given an integer k and an array of integers, return a boolean indicating
// whether there are two integers in the array whose sum is k
// completed May 16 2014

// run time   O(n)
// memory     O(n)

function sum_in_array(k, array) {
  var valueToIndex = {};

  for (var i = 0; i < array.length; i++) {
    valueToIndex[array[i]] = i;
  }

  for (var i = 0; i < array.length; i++) {
    if ( valueToIndex[k - array[i]] && valueToIndex[k - array[i]] != i ) {
      return true;
    }
  }

  return false;
}