var testArray = [4, 5, 6, 7, 8, 1, 2, 3];

function rotationPoint(array, min, max) {

  min = min || 0;
  max = max || array.length - 1;

  // look at middle value and value at next index

  var midIndex = Math.floor( (max + min) / 2 );
  var midValue = array[midIndex];
  var nextValue = array[midIndex + 1];

  // if the middle value is greater than the next value, return the next value's index

  // else if the middle value is less than the last value, rerun between first and middle

  // else (the middle value is greater than the last value) rerun between middle and last

}

// edge cases

// array is sorted