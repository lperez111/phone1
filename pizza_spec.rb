require 'rspec'

require_relative 'pizza'

describe Pizza do
  let(:name){"supreme"}
  let(:description) {""}
  let(:time_baked){0}
  let(:pizza){Pizza.new(name)}
  
  describe "#initialize" do
    it "should return a new instance of pizza" do
      pizza.should be_an_instance_of Pizza
    end
    it "throws an argument error when not given arguments" do
      expect {Pizza.new}.to raise_error(ArgumentError)
    end
    it "should be initialized with a name" do
      pizza.name.should eq(name)
    end
    it "should be initialized with a name string" do
      pizza.name.should be_a(String)
    end
    it "should have attribute time_baked" do
      pizza.time_baked.should eq(time_baked)
    end
    it "should have attribute description" do
      pizza.description.should eq(description)
    end
    it "should have attribute time_baked, which defaults to zero" do
      pizza.time_baked.should eq(0)
    end
  end
  describe "#toppings" do
    it "should have many toppings" do
      pizza.toppings.should be_a(Array)
    end
  end
  describe "#required_bake_time" do
    it "should return the sum of 15 minutes (in seconds) plus the maximum bake time of all topping objects in toppings" do
      pizza.toppings.include? {|element| element.class()}
    end
  end
end



#A pizza should have a method required_bake_time which returns 
#the sum of 900 (15 minutes) plus the maximum bake time of all its toppings









