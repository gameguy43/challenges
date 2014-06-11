# given an array with at least 3 integers, find the largest product of
# 3 integers in the array
# completed June 11 2014

# run time   O(n)
# memory     O(1)

def greatest_product(integers)
  three_greatest_numbers = [nil, nil, nil]
  two_lowest_numbers =     [nil, nil]

  integers.each do |int|
    insert_number(three_greatest_numbers, int, true)
    insert_number(two_lowest_numbers,     int, false)
  end

  positive_product = three_greatest_numbers[0] * three_greatest_numbers[1] * three_greatest_numbers[2]
  negative_product = three_greatest_numbers[0] * two_lowest_numbers[0]     * two_lowest_numbers[1]

  positive_product >= negative_product ? ( return positive_product ) : ( return negative_product )
end

def insert_number(integers, int, greater)
  for i in 0...integers.length
    if integers[i].nil? || ( greater && int > integers[i] ) || ( !greater && int < integers[i] )
      integers.insert(i, int).pop
      break
    end
  end
  return integers
end

greatest_product(array)