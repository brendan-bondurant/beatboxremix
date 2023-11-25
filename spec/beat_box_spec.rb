require 'spec_helper'

RSpec.describe BeatBox.new
  describe "#initialize" do
    it describe "do I have a beat box class" do
      bb = BeatBox.new

      expect(bb).to be_instance_of(BeatBox)
    end
    it describe "does it contain an list?" do
      bb = BeatBox.new
      list = LinkedList.new

      expect(bb.list).to be_instance_of(LinkedList) 
      expect(bb.list.head).to eq(nil)
    end


  end