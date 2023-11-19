class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    @head ||= Node.new(data) #with memoization
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
end