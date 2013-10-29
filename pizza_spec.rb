require 'rspec'

require_relative 'pizza'

describe Pizza do
  let(:name){"supreme"}
  let(:description){[starting_topping]}
  let(:time_baked){0}
  let(:pizza){Pizza.new(name, description, time_baked)}
  describe "#initialize" do
    it "should return a new instance of pizza" do
      pizza.should be_an_instance_of Pizza
    end
    it "throws an argument error when not given arguments" do
      expect {Pizza.new}.to raise_error(ArgumentError)
    end
  end
end









