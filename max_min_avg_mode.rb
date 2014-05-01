# implement methods to insert values into a set of data and retrieve the
# max, min, average and mode of all previous values
# there are too many values to store the entire data set in memory
# values will always be integers in the range 0 to 1000 inclusive

# completed May 1 2014

# all methods complexity   constant
# memory complexity        constant

class AccessStatistics

  attr_accessor :min, :max, :avg, :mode

  def initialize
    @min = nil
    @max = nil
    @avg = nil
    @mode = nil

    @number_of_values = 0
    @sum_of_values = 0
    @value_to_occurences = {}
    0.upto(1000) { |i| @value_to_occurences[i] = 0 }
    @mode_occurences = 0
  end

  def insert(value)    

    # min and max
    @min = value if ( @min.nil? || value < @min )
    @max = value if ( @max.nil? || value > @max )

    # avg
    @number_of_values += 1
    @avg = ( @sum_of_values + value ) / @number_of_values.to_f
    @sum_of_values += value

    # mode
    @value_to_occurences[value] += 1
    if ( @value_to_occurences[value] >= @mode_occurences )
      @mode_occurences = @value_to_occurences[value]
      @mode = value
    end
  end

end