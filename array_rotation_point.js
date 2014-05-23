var testArray = [4, 5, 6, 7, 8, 1, 2, 3];

function rotationPoint(array, min, max) {

  if ( array.length === 1 || array[0] < array[array.length - 1] ) return 0;

  min = min || 0;
  max = max || array.length - 1;

  var midIndex = Math.floor( (max + min) / 2 );
  var midValue = array[midIndex];
  var nextValue = array[midIndex + 1];

  if ( midValue > nextValue ) {
    return midIndex + 1;
  } else if ( midValue < array[array.length - 1] ) {
    return rotationPoint(array, min, midIndex);
  } else {
    return rotationPoint(array, midIndex, max);
  }

}