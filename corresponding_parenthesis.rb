# given a string and the position of an opening parenthesis, find the corresponding closing parenthesis index
# last updated April 4 2014

test_string = "multip(le(pare)nt(he)s)is"

def find_closing_parenthesis(string, index)

  closing_index = nil
  i = index + 1

  # set a counter to 0
  depth = 0

  # go through each character after string[index]
  while closing_index == nil

    # if a beginning parenthesis is encountered, increase counter by 1
    if string[i] == '('
      depth += 1

    # if an end parenthesis is encountered and counter is 0, return index
    elsif ( string[i] == ')' && depth == 0)
      closing_index = i

    # else decrease counter by 1 and keeping going
    elsif string[i] == ')'
      depth -= 1
    end

    i += 1

  end

  return closing_index

end

# edge cases:
#   parenthesis do not all have corresponding end parenthesis
#   string[index] is not a parenthesis