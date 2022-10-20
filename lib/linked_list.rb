require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    # your code here
    current = @head
    temp = nil
    if self.head == nil
      return nil
    end

    while current != nil
      temp = current.prev_node
      current.prev_node = current.next_node
      current.next_node = temp
      current = current.prev_node
    end
    
    if temp != nil
      @head = temp.prev_node
      while temp.next_node 
        temp = temp.next_node
      end
      @tail = temp
    end






  end
end
