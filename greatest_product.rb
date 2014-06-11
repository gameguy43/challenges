# given an array with at least 3 integers, find the largest product of
# 3 integers in the array
# completed June 11 2014

# run time   O(n)
# memory     O(1)

def greatest_product(int_array)

  # initialize arrays of greatest and lowest ints
  three_greatest_ints = [nil, nil, nil]
  two_lowest_ints =     [nil, nil]

  # update arrays of greatest and lowest ints with each integer
  int_array.each do |int|                 # greatest?
    insert_number(three_greatest_ints, int, true)
    insert_number(two_lowest_ints,     int, false)
  end

  # find the product of the three highest ints, and the product of the two lowest ints and the highest int
  positive_product = three_greatest_ints[0] * three_greatest_ints[1] * three_greatest_ints[2]
  negative_product = three_greatest_ints[0] * two_lowest_ints[0]     * two_lowest_ints[1]

  # compare the two products and return whichever is greater
  positive_product > negative_product ? ( return positive_product ) : ( return negative_product )
end

                # array     int  boolean
def insert_number(integers, int, greater)
  # for reach integer in the highest or lowest int array
  for i in 0...integers.length

    # if the integer in the array is nil or greater or less than the integer we are inserting
    if integers[i].nil? || ( greater && int > integers[i] ) || ( !greater && int < integers[i] )
      
      # insert the new integer at that index and remove the last integer in the array
      integers.insert(i, int).pop

      # don't continue iterating and comparing the new integer
      break
    end
  end
end