# given a string and the position of an opening parenthesis, find the corresponding closing parenthesis index
# completed April 4 2014

def find_closing_parenthesis(string, index)

  return nil if string[index] != '('

  depth = 0
  i = index + 1
  closing_index = nil

  while closing_index == nil
    if string[i] == '('
      depth += 1
    elsif ( string[i] == ')' && depth == 0 )
      closing_index = i
    elsif string[i] == ')'
      depth -= 1
    end
    break if i == string.length - 1
    i += 1
  end

  return closing_index
end