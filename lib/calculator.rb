# String calculator is responsible for making mathematical operations on numbers
# in string
class StringCalculator
  def initialize(string)
    @string = string
  end

  def add
    string.split(',')
          .map(&:to_f)
          .reduce(0, &:+)
  end

  private

  attr_accessor :string
end
