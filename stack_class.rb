# an extended stack class with a get_largest method that returns the largest element in the stack
# push, pop and get_largest methods must have a run time of O(1)
# completed April 4 2014

class Stack

  attr_accessor :values

  def initialize(*values)
    @values = values
    @largest = nil
    @previous_largests = []

    values.each do |v|
      if ( !@largest.nil? && !v.nil? && v >= @largest ) || @largest.nil?
        @largest = v
        @previous_largests << v
      end
    end

    return @values
  end

  def push(value)
    @values << value

    if value >= @largest || @largest.nil?
      @largest = value
      @previous_largests << value
    end

    return value
  end

  def pop
    last_value = @values[-1]
    @values.delete_at(-1)

    if last_value == @largest
      @largest = @previous_largests[-2]
      @previous_largests.delete_at(-1)
    end

    return last_value
  end

  def get_largest
    return @largest
  end

end