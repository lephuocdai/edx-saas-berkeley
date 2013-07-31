class CartesianProduct
  include Enumerable
  # YOUR CODE HERE
  def initialize(a, b)
  	@a, @b = a, b
  end
  def each
  	@a.each do |x|
  		@b.each do |y|
  			yield [x, y]
  		end
  	end
  end
end
