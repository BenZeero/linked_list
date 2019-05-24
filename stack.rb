class Stack
  attr_reader :data

  def initialize
      @data = nil
  end

  # Push a value onto the stack
  def push(value)
      # IMPLEMENT ME!
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
      # I RETURN A VALUE
  end

end

# Creates a new Stack object
stack = Stack.new

# Pushes (adds) the number 1 to the empty stack
stack.push(1)

# Pushes the number 2 to the TOP of the stack
stack.push(2)

# Pops (removes) the TOP number from the stack (2)
puts stack.pop

# Pops the remaining number from the stack (1)
puts stack.pop

# Tries to pop the TOP number from the stack,
# but it is empty so it returns nil
puts stack.pop