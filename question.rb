
class Question

  attr_accessor :num1, :num2

  def initilize
    @num1 = rand(20)
    @num2 = rand(20)
  end

  def self.num1
    @num1 = rand(20)
  end

  def self.num2
    @num2 = rand(20)
  end
  
end


