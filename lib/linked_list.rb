class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    add_on = Node.new(data)
    if @head == nil
      @head = add_on
    end
  end


end