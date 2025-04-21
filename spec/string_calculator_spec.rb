require './string_calculator'
 
describe 'String Calculator' do
 
  describe '#initialize' do
    it 'should initialize string numbers' do
      string_calculator = StringCalculator.new('', '1', '1,5')
      
      expect(string_calculator.instance_variable_get(:@numbers)).to eq(['', '1', '1,5'])
    end
  end
end