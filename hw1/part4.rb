class Dessert
  attr_accessor :name
  attr_accessor :calories
  def initialize(name, calories)
    # YOUR CODE HERE
    @name, @calories = name, calories
  end
  
  def healthy?
    # YOUR CODE HERE
    @calories <= 200
  end
  
  def delicious?
    # YOUR CODE HERE
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(name, calories, flavor)
    # YOUR CODE HERE
    @name, @calories, @flavor = name, calories, flavor
  end
  
  def delicious?
    # YOUR CODE HERE
    @flavor != "black licorice"
  end
end
