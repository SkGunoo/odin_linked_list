class LinkedList
  
  attr_accessor :head, :tail

  def initialize()
    @head = nil
    @tail = nil
  end

  #add node to end of the list
  def append(value)
    last_node = @head
    new_node = Node.new(value)
    new_node.next_node = @tail

    #if there is no node in linkedlist just add a node
    if last_node == nil 
      @head = new_node
    else
      #travel to the last 'node' not tail 
      until last_node.next_node == nil
        last_node = last_node.next_node
      end 
      last_node.next_node = new_node
    end
  end

  def prepend(value)
    first_node = @head
    new_node = Node.new(value)

    #when linked list is empty
    if first_node.nil?
      @head = new_node
      @head.next_node = @tail 

    #when there are nodes  
    else
      new_node.next_node = @head
      @head = new_node
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
list.prepend("haha")
list.prepend("works")


p list.head