describe StringCalculator do
  describe '#add' do
    let(:calculator) { StringCalculator.new }
    it 'should return 0 for empty string' do
      expect(calculator.add('')).to eq 0
    end

    it 'sould return that number if only one is given' do
      expect(calculator.add('1.32')).to eq 1.32
    end

    it 'sould return sum of numbers if 2 numbers are given' do
      expect(calculator.add('1, 3.2')).to eq 4.2
    end
  end
end
