array = [1, 4, 10, 6, 2, 8, 20]

def greatest_product(integers)

end

def add_greater_number(three_numbers, int, index=-1)
  return three_numbers if index < -3
  if !three_numbers[index] || int > three_numbers[index]
    replaced_number = three_numbers[index]
    three_numbers[index] = int
    return add_greater_number(three_numbers, replaced_number, index - 1)
  else
    return add_greater_number(three_numbers, int, index - 1)
  end
end

greatest_product(array)
