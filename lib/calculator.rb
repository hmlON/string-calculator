# String calculator is responsible for making mathematical operations on numbers
# in string
class StringCalculator
  def initialize(string)
    @string = string
  end

  def add
    dilimiters = ["\n", ',']
    if string[0..1] == '//'
      dilimiters.concat(string[/\/\/(?<dilimiters>.)\n/, 'dilimiters'].split(''))
    end
    dilimiters_patter = Regexp.new('[' + dilimiters.join('') + ']')
    string.split(dilimiters_patter)
          .map(&:to_f)
          .reduce(0, &:+)
  end

  private

  attr_accessor :string
end
