# given an array with at least 3 integers, find the largest product of
# 3 integers in the array
# completed June 11 2014

# run time   O(n)
# memory     O(1)

def greatest_product(int_array)
  three_greatest_ints = [nil, nil, nil]
  two_lowest_ints =     [nil, nil]

  int_array.each do |int|                 # greatest?
    insert_number(three_greatest_ints, int, true)
    insert_number(two_lowest_ints,     int, false)
  end

  positive_product = three_greatest_ints[0] * three_greatest_ints[1] * three_greatest_ints[2]
  negative_product = three_greatest_ints[0] * two_lowest_ints[0]     * two_lowest_ints[1]

  positive_product > negative_product ? ( return positive_product ) : ( return negative_product )
end

                # array     int  boolean
def insert_number(integers, int, greater)
  for i in 0...integers.length
    if integers[i].nil? || ( greater && int > integers[i] ) || ( !greater && int < integers[i] )
      integers.insert(i, int).pop
      break
    end
  end
end