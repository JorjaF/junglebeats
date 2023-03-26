class LinkedList
 
  attr_reader :head
  
  def initialize (head = nil)
    @head = head.nil? ? nil : Node.new(head)
  end

  def prepend(data)
    if @head == nil
      @head = Node.new(data)
      @head.data
    else
      old_head = @head
      @head = Node.new(data)
      @head.next_node = old_head
    end
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
      @head.data
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
      current_node.next_node.data
    end
    
  end
  
  def count
    count = 0
    current_node = @head
    until current_node.nil?
      count = count + 1
      current_node = current_node.next_node
    end
    count
  end
  
  def to_string
    string = []
    current_node = @head
    while current_node != nil
      string << current_node.data
      current_node = current_node.next_node
    end
    return string.join(" ")
  end

  def insert(position, data) #yes this stinks i am working on it
    count = 1
    current_node = @head
    until count == position
      count = count + 1
      current_node = current_node.next_node
    end

    next_node = current_node.next_node
    current_node.next_node = Node.new(data)
    current_node.next_node.next_node = next_node
  end
    
  def find(position, length)
    count = 0
    current_node = @head
    until count == position
      count = count + 1
      current_node = current_node.next_node
    end
    string = []
    length.times do 
      string << current_node.data
      current_node = current_node.next_node
    end
    return string.join(" ")
  end

  def includes?(data)
    current_node = @head
    while current_node != nil
      if current_node.data == (data)
        return true
      end
      current_node = current_node.next_node
    end
    return false
  end
  
  def pop
    current_node = @head
    while current_node.next_node.next_node != nil
      current_node = current_node.next_node
    end
    return_me = current_node.next_node
    current_node.next_node=nil
    return return_me.data
  end
    
  
end