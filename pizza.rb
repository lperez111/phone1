class Pizza
  attr_reader :name, :time_baked, :description
  def initialize(name)
    @name = name
    @time_baked = 0
    @description = ""
  end

end
