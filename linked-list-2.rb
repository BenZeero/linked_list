require_relative 'linked_list_node'
require_relative 'infinite_loop'

#mutation list
def reverse_list(list, previous=nil)
  # do stuff
  if list
    next_node = list.next_node
    list.next_node = previous
    reverse_list(next_node,list)
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



node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "---------"
reverse_list(node3)
node3.next_node = node1
#print_values(node1)
puts infinite_loop?(node1)