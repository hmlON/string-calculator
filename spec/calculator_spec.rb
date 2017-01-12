describe StringCalculator do
  describe '#add' do
    it 'should return 0 for empty string' do
      calculator = StringCalculator.new('0')
      expect(calculator.add).to eq 0
    end

    it 'sould return that number if only one is given' do
      calculator = StringCalculator.new('1.32')
      expect(calculator.add).to eq 1.32
    end

    it 'sould return sum of numbers if 2 numbers are given' do
      calculator = StringCalculator.new('1,3.2')
      expect(calculator.add).to eq 4.2
    end
  end
end
