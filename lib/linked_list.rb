class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if self.empty?
      @head = Node.new(data)
    else
      current_node = @head
      new_node = Node.new(data)
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def count
    return 0 if empty?
    count = 1
    current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
        count += 1
      end
    count
  end

  def empty?
    head.nil? 
  end

  def to_string
    "#{head.data}"
  end
end