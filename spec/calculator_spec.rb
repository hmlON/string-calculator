describe StringCalculator do
  describe '#add' do
    it 'should return 0 for empty string' do
      expect(StringCalculator.new('0').add).to eq 0
    end

    it 'sould return that number if only one is given' do
      expect(StringCalculator.new('1.32').add).to eq 1.32
    end

    it 'sould return sum of numbers if 2 numbers are given' do
      expect(StringCalculator.new('1,3.2').add).to eq 4.2
    end

    it 'sould return sum of numbers if any amount of numbers is given' do
      expect(StringCalculator.new('1,3.2,5,-1,17').add).to eq 25.2
    end

    it 'sould return sum of numbers with \n delimiter' do
      expect(StringCalculator.new("1\n3,17").add).to eq 21
    end

    it 'sould return sum of numbers with \n delimiter' do
      expect(StringCalculator.new("//;\n1;2").add).to eq 3
    end
  end
end
