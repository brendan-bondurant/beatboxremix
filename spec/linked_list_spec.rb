require 'spec_helper'

RSpec.describe LinkedList do
  describe 'initialize' do
    it 'exists' do
      list = LinkedList.new
      expect(list).to be_instance_of(LinkedList)
    end
    
    it 'has a head' do
      list = LinkedList.new
      expect(list.head).to eq(nil)
    end
  end
  
  describe 'methods' do
    it 'can append one' do
      list = LinkedList.new
      list.append("doop")
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
    end

    it 'can append more than one' do
      list = LinkedList.new
      list.append("doop")
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
      list.append("deep")
      expect(list.count).to eq(2)
      expect(list.head.next_node.data).to eq("deep")
    end
    
    it 'can test if head is empty' do
      list = LinkedList.new
      expect(list.empty?).to eq(true)
      list.append("doop")
      expect(list.empty?).to eq(false)
    end
    
    it 'can be counted' do
      list = LinkedList.new
      list.append("doop")
      expect(list.count).to eq(1)
    end
    
    it 'can be turned into a string' do 
      list = LinkedList.new
      list.append("doop")
      expect(list.to_string).to eq("doop")
    end
  end
end