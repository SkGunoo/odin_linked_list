class LinkedList
  
  attr_accessor :head, :tail

  def initialize()
    @head = nil
    @tail = nil
  end

  def append(value)
    last_node = @head 
    new_node = Node.new(value)
    new_node.next_node = @tail

    if last_node == nil 
      @head = new_node
    else
      until last_node.next_node == nil
        last_node = last_node.next_node
      end 
      last_node.next_node = new_node
    end

  end
end


class Node
  
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
    
  end
end


#test 
list = LinkedList.new 

list.append("test")
list.append("test2")
list.append("test3")
list.append("test4")


p list.head