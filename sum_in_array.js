var array = [10, -9, -13, 4, 63, 0, 1]

function sum_in_array(int, array) {
  var valueToIndex = {};

  for (var i = 0; i < array.length; i++) {
    valueToIndex[array[i]] = i;
  }

  for (var i = 0; i < array.length; i++) {
    if ( valueToIndex[int - array[i]] && valueToIndex[int - array[i]] != i ) {
      return true;
    }
  }

  return false;

}