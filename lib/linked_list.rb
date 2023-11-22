class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if empty?
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = head
    @head = new_node
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
    prior_node = node_at(location - 1)
    next_node = node_at(location)
    prior_node.next_node = new_node
    new_node.next_node = next_node
    return new_node
  end

  def node_at(index, counter = 0)
    current_node = @head
    while counter < index && current_node
      current_node = current_node.next_node
      counter += 1
    end
    current_node
  end

  def find(start, count)
    counter = 0
    new_string = []
    current_node = node_at(start)
    return current_node.data if count == 1
    while counter < count
      new_string << current_node.data
      current_node = current_node.next_node
      counter += 1
    end
    new_string.join(" ")
  end
end
