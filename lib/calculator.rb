class Calculator
  def add(string)
    string.split(',')
          .map(&:to_f)
          .reduce(0, &:+)
  end
end
