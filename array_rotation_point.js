// given a shifted, sorted array (such as [7, 8, 9, 3, 4, 5])
// return the index of the lowest value in the array
// completed May 22 2014

// run time   O(log(n))
// memory     O(1)

function rotationPoint(array, min, max) {

  if ( array.length === 1 || array[0] < array[array.length - 1] ) return 0;

  min = min || 0;
  max = max || array.length - 1;

  var midIndex  = Math.floor( (max + min) / 2 );
  var midValue  = array[midIndex];
  var nextValue = array[midIndex + 1];

  if ( midValue > nextValue ) {
    return midIndex + 1;
  } else if ( midValue < array[array.length - 1] ) {
    return rotationPoint(array, min, midIndex);
  } else {
    return rotationPoint(array, midIndex, max);
  }

}