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
        last_node = last_node.next_nodegi
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

  def size 
    #starting with 1 because of the @head is a also a node
    count = 1 
    start = @head

    until start.next_node.nil?
      count += 1
      start = start.next_node
    end
    "node count: #{count}"
  end


  def head_value
    "head node vlaue: #{@head.value}"
  end

  def tail_value
    node = @head
    until node.next_node.nil?
      node = node.next_node
    end

    "value of last node is : #{node.value}"
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
puts list.size
puts list.head_value
puts list.tail_value