class StringCalculator
   
  def initialize(*numbers)
    @numbers = numbers
  end

  def add
    output = []
 
    @numbers.each do |number|
      output << number.split(/[\\n,]/).map(&:to_i).sum
    end

    output.join(", ")
  end
end