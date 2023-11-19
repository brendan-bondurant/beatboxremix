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
    it 'can append' do
      list = LinkedList.new
      list.append("doop")
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
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

    it 'can be turned to a string' do 
      list = LinkedList.new
      list.append("doop")
    expect(list.to_string).to eq("doop")
    end
  end
end