require './string_calculator'
 
describe 'String Calculator' do
 
  describe '#initialize' do
    it 'should initialize string numbers' do
      string_calculator = StringCalculator.new('', '1', '1,5')
      
      expect(string_calculator.instance_variable_get(:@numbers)).to eq(['', '1', '1,5'])
    end
  end

  describe '#add' do
    context 'with empty string' do
      it 'should return sum' do
        string_calculator = StringCalculator.new('')

        expect(string_calculator.add).to eq('0')
      end
    end
  end

  describe '#add' do
    context 'with positive numbers' do
      it 'should return sum' do
        string_calculator = StringCalculator.new('', '1', '1,2')

        expect(string_calculator.add).to eq('0, 1, 3')
      end
    end
  end

  context 'with unknow amount numbers' do
    it 'should return sum' do
      string_calculator = StringCalculator.new('', '1', '1,2', '7,8,9,3')

      expect(string_calculator.add).to eq('0, 1, 3, 27')
    end
  end

  context 'with new line between numbers' do
    it 'should return sum' do
      string_calculator = StringCalculator.new('1\n2,3', '1,\n')

      expect(string_calculator.add).to eq('6, 1')
    end
  end

  context 'with different delimiters character' do
    it 'should return sum' do
      string_calculator = StringCalculator.new('//;\n1;2')

      expect(string_calculator.add).to eq('3')
    end
  end

  context 'with negative numbers' do
    it 'should return error message' do
      string_calculator = StringCalculator.new('-1', '2,3,-4')

      expect(string_calculator.add).to eq('Negative numbers not allowed - -1,-4')
    end
  end

  context 'Numbers greater than 1000' do
    it 'should return sum' do
      string_calculator = StringCalculator.new('1001, 2', '1,2')

      expect(string_calculator.add).to eq('2, 3')
    end
  end
end