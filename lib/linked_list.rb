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
    new_string = []
    current_node = @head
    return new_string if empty?
    while current_node.next_node != nil
      new_string << current_node.data
      current_node = current_node.next_node
    end
    new_string << current_node.data
    new_string.join(" ")
  end

  def insert(location, data)
    new_node = Node.new(data)
    prior_node = node_at(head, location - 1)
    next_node = node_at(head, location)
    prior_node.next_node = new_node
    new_node.next_node = next_node
  end

  def node_at(node, location, counter = 0)
    return node if location == counter
    node_at(node.next_node, location, counter += 1)
  end
end