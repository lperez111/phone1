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
  end
end













