require 'spec_helper'

RSpec.describe Node do
  describe 'initialize' do
    it 'exists' do
      node = Node.new("plop")
      expect(node).to be_instance_of(Node)
    end
    it 'has data' do
      node = Node.new("plop")
      expect(node.data).to eq("plop")
    end
    it 'has next node' do
      node = Node.new("plop")
      expect(node.next_node).to eq(nil)
    end
  end
  describe 'tail' do
    it 'if next_node == nil, it is the tail' do
      node = Node.new("plop")
      expect(node.tail?).to eq(true)
    end
  end
end