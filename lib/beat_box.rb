class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    multiple_nodes = data.split
    multiple_nodes.each do |single_node|
      list.append(single_node)
    end
    list
  end

  def count
    list.count
  end

  def play
    puts `say -r 100 -v Samantha #{noise}`
  end

  def noise
    list.to_string
  end
end