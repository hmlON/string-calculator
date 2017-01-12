# String calculator is responsible for making mathematical operations on numbers
# in string
class StringCalculator
  def add(string)
    string.split(',')
          .map(&:to_f)
          .reduce(0, &:+)
  end
end
