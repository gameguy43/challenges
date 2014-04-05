# reverses an array of characters without storing a new array in memory
# completed April 4 2014

array = ['a', 'b', 'd', 'e']

def reverse_array(array)
  i = array.length - 1
  until i < array.length / 2
    replaced_value = array[i]
    array[i] = array[array.length - 1 - i]
    array[array.length - 1 - i] = replaced_value
    i -= 1
  end
  return array
end