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

    it "needs to turn to turn to string when count > 1" do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')
      list.append('plop')
      list.append('suu')
      list.append('dop')
      list.append('woo')
      
      expect(list.to_string).to eq("doop deep plop suu dop woo")      
    end
    
    it "needs to be able to insert at a specific point" do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')
      list.append('plop')
      list.append('dop')
      list.append('woo')
      expect(list.to_string).to eq("doop deep plop dop woo")  
      list.insert(3, 'suu')
      expect(list.to_string).to eq("doop deep plop suu dop woo")      
    end

    it 'tells you where a node is located' do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')
      list.append('plop')
      list.append('dop')
      list.append('woo')
      node = list.node_at(3)
      expect(node.data).to eq('dop')    
    end

    it "will add nodes to the beginning of the list" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      
      expect(list.to_string).to eq("plop suu")
      list.prepend("dop")
      
      expect(list.head.data).to eq("dop")
      expect(list.to_string).to eq("dop plop suu")
    end

    it "1st parameter indicates where to look and second specifies how many to return" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.to_string).to eq("deep woo shi shu blop")
      expect(list.find(2, 1)).to eq("shi")

    
    end

    
    it "1st parameter indicates where to start and second specifies how many to return (multiple return)" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")


      expect(list.find(1, 2)).to eq("woo shi")
      expect(list.find(1, 3)).to eq("woo shi shu")
    end

    it "gives true or false if the value is in the list" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.includes?("deep")).to be true
      expect(list.includes?("dep")).to be false
    end

    it "removes last element and returns it" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.pop). to eq("blop")
      expect(list.to_string).to eq("deep woo shi shu")
      expect(list.pop). to eq("shu")
      expect(list.to_string).to eq("deep woo shi")
    end
  end
end