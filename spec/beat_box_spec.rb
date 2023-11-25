require 'spec_helper'

RSpec.describe BeatBox.new
  describe "#initialize" do
    it "do I have a beat box class" do
      bb = BeatBox.new

      expect(bb).to be_instance_of(BeatBox)
    end
    it "does it contain an list?" do
      bb = BeatBox.new
      list = LinkedList.new

      expect(bb.list).to be_instance_of(LinkedList) 
      expect(bb.list.head).to eq(nil)
    end
  end

  describe '#append' do
    it "can I append something longer than one piece of data" do
      bb = BeatBox.new
      list = LinkedList.new
      bb.append("deep doo ditt")
      bb.append("woo hoo shu")
  
      expect(bb.list.head.data).to eq("deep")
      expect(bb.list.to_string).to eq("deep doo ditt woo hoo shu")
    end
  end
