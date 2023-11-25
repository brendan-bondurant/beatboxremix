class Node
  attr_reader :data, :next_node
  attr_writer :next_node
  def initialize(data)
    @data = data
    @next_node = nil
  end

  def tail?
    next_node.nil?
  end

end