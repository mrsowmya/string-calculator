class StringCalculator
   
  def initialize(*numbers)
    @numbers = numbers
  end

  def add
    @numbers.map(&:to_i).join(", ")
  end
end