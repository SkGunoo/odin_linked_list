class LinkedList
  
  attr_accessor :head, :tail

  def initialize(head,tail)
    @head = nil
    @tail = nil
  end
end


class Node
  
  attr_accessor :value, :next_node

  def initialize()

    @value = nil
    @next_node = nil
    
  end
end