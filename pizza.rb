class Pizza
  attr_reader :name, :time_baked, :description, :toppings
  def initialize(name)
    @name = name
    @time_baked = 0
    @description = ""
    @toppings = []
  end

end
