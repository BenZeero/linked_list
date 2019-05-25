class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push a value onto the stack
  def push(value)
      # IMPLEMENT ME!
    #Use LinkedListNode to create a new "value" and "@next_node value"  
    @data = LinkedListNode.new(value,@data)
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    #check if @data is empty
    return "empty" if @data.nil?
    #if not empty pull the last value from @data
    value = @data.value
    #@data update to the next value saved on next node
    @data = @data.next_node
    value
  end

end


#node1 = LinkedListNode.new(37)
#node2 = LinkedListNode.new(99, node1)
#node3 = LinkedListNode.new(12, node2)

#print_values(node3)

#puts "-------"

#revlist = reverse_list(node3)

#print_values(revlist)

# Creates a new Stack object
stack = Stack.new

# Pushes (adds) the number 1 to the empty stack
stack.push(1)

# Pushes the number 2 to the TOP of the stack
stack.push(2)
stack.push(2)
stack.push(2)
stack.push(3)
stack.push(3)
# Pops (removes) the TOP number from the stack (2)
puts stack.pop

# Pops the remaining number from the stack (1)
puts stack.pop

# Tries to pop the TOP number from the stack,
# but it is empty so it returns nil
puts stack.pop