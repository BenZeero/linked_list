require_relative 'linked_list_node'

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value,@data)
  end

  def pop
    return nil if @data.nil?
    value = @data.value
    @data = @data.next_node
    value
  end
end