# an extended stack class with a get_largest method that returns the largest element in the stack

class Stack

  attr_accessor :values

  def initialize(*values)
    @values = values
    @largest = nil
    values.each do |v|
      if ( @largest.nil? || ( !@largest.nil? && !v.nil? && @largest < v ) )
        @largest = v
      end
    end
  end

  def push(value)
    @values << value
    @largest = value if ( @largest.nil? || @largest < value )
  end

  def pop
    last_value = @values[-1]
    @values.delete_at(-1)
    return last_value
  end

  def get_largest
    return @largest
  end

end