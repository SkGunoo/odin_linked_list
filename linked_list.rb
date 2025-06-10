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
    puts "node count: #{count}"
    count
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

  #get the value from the node at cerain index
  def at(index)
    if index >= size.to_i
      puts size.to_i
      "index is out of linked list size "
    else
      target_node = @head
      index.times do |num|
        target_node = target_node.next_node
      end
      target_node.value
    end
  end

  #removes last element from the list 
  def pop
    if @head.nil? 
      puts "there is no node to pop"
    #if there is only on node @head
    elsif @head.next_node.nil?
      @head = nil
    #travel to the node before the last one and set it to point @tail
    else
      index_of_node_before_last = size.to_i - 2
      node = @head
      index_of_node_before_last.times {node = node.next_node}
      node.next_node = @tail
    end
  end

  def contains?(value)
    node = @head
    while node
      return true if node.value == value
      node = node.next_node
    end
    false
  end

  def find(value)
    index = 0
    node = @head
    while node
      return index if node.value == value
      index += 1
      node = node.next_node
    end
    nil
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


# p list.head
# list.size
# puts list.head_value
# puts list.tail_value
# puts list.at(2)
# list.pop
# p list.head
p list.contains?("test2")
p list.find("works")