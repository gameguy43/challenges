# given a string and the position of an opening parenthesis, find the corresponding closing parenthesis index
# last updated April 4 2014

test_string = "multip(le(pare)nt(he)s)is"

def find_closing_parenthesis(string, index)

  # set a counter to 0

  # go through each character after string[index]

  # if a beginning parenthesis is encountered, increase counter by 1

  # if an end parenthesis is encountered and counter is 0, return index

  # else decrease counter by 1 and keeping going

end

# edge cases:
#   parenthesis do not all have corresponding end parenthesis
#   string[index] is not a parenthesis