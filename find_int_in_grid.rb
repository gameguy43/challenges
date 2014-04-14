# given a grid (two-dimentional array) and an integer, return a boolean indicating
# whether the integer is in the grid
# for every row and column, values increase down and to the right as the index increases


# runtime complexity   sqrt(n) * log(n)
# memory complexity    constant
# where n is the number of elements in the grid


def find_integer_in_grid(int, grid, last_col_index=nil, first_col_index=0, last_row_index=nil, first_row_index=0)

  # initialize indexes of last row and column
  last_col_index = last_col_index || grid.length - 1
  last_row_index = last_row_index || grid[0].length - 1

  # return true if integer was found by binary search
  if ( last_col_index  == true ||
       first_col_index == true ||
       last_row_index  == true ||
       first_row_index == true )
    return true
  
  # otherwise do binary searches to narrow down the first and last rows and columns that can possibly contain the integer
  else                                           # min              max             index            row?   first?
    new_last_col_index  = binary_search(int, grid, first_col_index, last_col_index, first_row_index, true,  true)
    new_first_col_index = binary_search(int, grid, first_col_index, last_col_index, last_row_index,  true,  false)
    new_last_row_index  = binary_search(int, grid, first_row_index, last_row_index, first_col_index, false, true)
    new_first_row_index = binary_search(int, grid, first_row_index, last_row_index, last_col_index,  false, false)
  end

  # return false if integer was not found (indexes did not change)
  if ( new_last_col_index  == nil &&
       new_first_col_index == nil &&
       new_last_row_index  == nil &&
       new_first_row_index == nil )
    return false
  
  # otherwise replace indexes with updated values (if updated value is not nil) and search for integer again
  else
    last_col_index  = new_last_col_index  || last_col_index
    first_col_index = new_first_col_index || first_col_index
    last_row_index  = new_last_row_index  || last_row_index
    first_row_index = new_first_row_index || first_row_index

    puts "\nno row before: #{first_row_index}"
    puts "no row after:  #{last_row_index}"
    puts "no col before: #{first_col_index}"
    puts "no col after:  #{last_col_index}"

    find_integer_in_grid(int, grid, last_col_index, first_col_index, last_row_index, first_row_index)
  end
end


# binary search treats grid row or column as array using index, min and max
# if integer is in array        returns true
# if integer is outside array   returns nil
# otherwise passes indexes of numbers closest to int [less than int, greater than int] to update_index method

def binary_search(int, grid, min, max, index, row, first)

  mid = ( max + min ) / 2

  # return true if middle and max values in array are equal
  if (  row && grid[index][mid] == int || grid[index][max] == int ) ||
     ( !row && grid[mid][index] == int || grid[max][index] == int )
    return true

  # return nil if array length is 0 or 1
  elsif ( max - min ) < 1
    return nil

  # if there are two values with the integer between them, pass their indexes to update_index method
  elsif ( min == mid )
    if row && !( int < grid[index][mid] || int > grid[index][mid + 1] )
      return update_index([mid, mid + 1], first) 
    elsif !row && !( int < grid[mid][index] || int > grid[mid + 1][index] )
      return update_index([mid, mid + 1], first) 
    end
    return nil # if there aren't

  # otherwise search half of array for integer
  elsif (  row && grid[index][mid] > int ) ||
        ( !row && grid[mid][index] > int )
    return binary_search(int, grid, min, mid, index, row, first)
  else
    return binary_search(int, grid, mid, max, index, row, first)
  end
end


def update_index(values, first)

  if first
    adj, i = -1, 1  # subtract 1 from second value passed by binary search
  else
    adj, i =  1, 0  # add 1 to first value
  end

  return values[i] += adj
end


find_integer_in_grid(28, [[0, 1, 20, 22, 48, 50], [2, 4, 21, 30, 50, 55], [3, 5, 22, 31, 53, 59], [24, 25, 26, 32, 60, 71], [30, 40, 41, 48, 70, 82], [34, 45, 49, 55, 73, 90]] )

=begin

     0    1    20   22   48   50

     2    4    21   30   50   55

     3    5    22   31   53   59

     24   25   26   32   60   71

     30   40   41   48   70   82

     34   45   49   55   73   90

=end