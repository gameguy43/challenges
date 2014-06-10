# given an array with at least 3 integers, find the largest product of
# 3 integers in the array
# last updated June 4 2014

array = [1, 4, 10, 6, 2, 8, 20]

def greatest_product(integers)

  three_greatest_numbers = [nil, nil, nil]

  integers.each do |int|
    add_greater_number(three_greatest_numbers, int)
  end

  # return three_greatest_numbers.inject { |product, int| product * int }

end

def add_greater_number(three_numbers, int)
  for i in 0..2
    if three_numbers[i].nil? || int > three_numbers[i]
      three_numbers.insert(i, int).pop
      break
    end
  end
  return three_numbers
end

greatest_product(array)

# does not work with two negative numbers