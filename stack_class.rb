# an extended stack class with a get_largest method that returns the largest element in the stack

class Stack

  attr_accessor :stack_values

  def initialize
    @stack_values = []
    @largest = nil
  end

  def push(value)
    @stack_values << value
  end

  def pop
    last_value = @stack_values[-1]
    @stack_values.delete_at(-1)
    return last_value
  end

  def get_largest
    #
  end

end