require File.dirname(__FILE__) + '/spec_helper'

describe Winken do
  before(:each) do
    @winken = Winken.new
  end
  it "should maintain the old methods" do
    @winken.should respond_to(:blinkens=)
  end
  
  describe "has_many" do
    it "should have a new_blinken_attributes= method" do
      @winken.should respond_to(:new_blinken_attributes=)
    end
    it "should have an existing_blinken_attributes= method" do
      @winken.should respond_to(:new_blinken_attributes=)
    end
    it "should have an save_blinkens method" do
      @winken.should respond_to(:save_blinkens)
    end
  end
  
  describe "has_many :through" do
    it "should have a tag_attributes= method" do
      @winken.should respond_to(:tag_attributes=)
    end
    it "should have a save_taggings method" do
      @winken.should respond_to(:save_taggings)
    end
  end
  
  describe "has_one" do
    it "should have a foo_attributes= method" do
      @winken.should respond_to(:foo_attributes=)
    end
    it "should have a save_foo method" do
      @winken.should respond_to(:save_foo)
    end
  end
end