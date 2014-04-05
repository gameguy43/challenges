# an extended stack class with a get_largest method that returns the largest element in the stack

class Stack

  attr_accessor :values

  def initialize(*values)
    @values = values
    @largest = nil
    @previous_largests = []
    values.each do |v|
      if ( @largest.nil? || ( !@largest.nil? && !v.nil? && @largest < v ) )
        @largest = v
        @previous_largests << v
      end
    end
    return @values
  end

  def push(value)
    @values << value
    if ( @largest.nil? || @largest < value )
      @largest = value
      @previous_largests << value
    end
    return value
  end

  def pop
    last_value = @values[-1]

    if last_value == @largest
      @largest = @previous_largests[-2]
      @previous_largests.delete_at(-1)
    end

    @values.delete_at(-1)
    return last_value
  end

  def get_largest
    return @largest
  end

end